/**
 * TP SY34 
 *
 * Nom binôme :
 *
 * Version :
 *
 */

/************************ HEADERS ****************************************/
#include "VT100.h"
#include "system.h"
#include "system_config.h"
#include "miwi/miwi_api.h"


/************************** PROTOTYPES ************************************/
void chatInit(void);
void TX(void);
void RX(void);
void HelloToAll(void);
void sendMeassageBroadcast(char * pseudo,int nbPush);
void sendMeassageUnicast(char * pseudo,int nbPush,char  * destinataire);

/************************** VARIABLES ************************************/
        
extern API_UINT16_UNION                 myPANID;        						// mon PANID
extern uint8_t                          myLongAddress[MY_ADDRESS_LENGTH];		// mon adresse IEEE
extern API_UINT16_UNION                 myShortAddress;                     	// mon adresse logique
extern ACTIVE_SCAN_RESULT               ActiveScanResults[ACTIVE_SCAN_RESULT_SIZE];		// table des actives scan


extern RECEIVED_MESSAGE  rxMessage;

#define MY_CHANNEL 11
public bool								TX_Broadcast_OU_Unicast					// broadcast = 1; unicast = 0
public uint8_t 							TX_Index_Unicast						// index pour la transmission unicast


void main (void)
{
    chatInit();

    char identifiant[10];
	int nbPushRB0 = 0;
	int nbPushRB1 = 0;
	int nbPushRB2 = 0;
	
    
    uartPrint("Entrez votre pseudo (8 caractères maxi) : ");

    while(!uartIsChar());
    int i = 0;
    char lettre = uartRead(); 
    while(lettre != 0x0D) {    
        identifiant[i] = lettre;       
        while(!uartIsChar());
        lettre = uartRead();
        i++;
    }   
    identifiant[i] = '\0';
    uartPrint("\nBonjour ");
    uartPrint(identifiant);
    uartPrint(" \r\n");
    
	char destinataire[] = "0x0100";
    while(1){
		if(!PORTBbits.RB2) {
			nbPushRB2++;
			sendMeassageBroadcast(identifiant,nbPushRB2);
		}
		if(!PORTBbits.RB0) {
			nbPushRB0++;
			destinataire[3] = '1';
			sendMeassageUnicast(identifiant,nbPushRB0,destinataire);
		}
		if(!PORTBbits.RB1) {
			nbPushRB1++;
			destinataire[3] = '2';
			sendMeassageUnicast(identifiant,nbPushRB1,destinataire);
		}						
				
	}
}




void chatInit(void) 
{
	SYSTEM_Initialize();
    uartInitialize();
    
    VT100ClearScreen();
    VT100SetCursorPos(0,0); 
    
	if(!MiApp_ProtocolInit(false))
		uartPrint("\nErreur ProtocolInit");
	if(!MiApp_SetChannel(MY_CHANNEL)) 
		uartPrint("\nErreur SetChannel");
	uint8_t nbPANs = MiApp_SearchConnection(10, 0x800); // ScanDuration=10 pour 1s; canal 11
    
    uint8_t index;
    if(nbPANs != 0) { 	// ACTIVE_SCAN_RESULT n'est pas vide
        for(uint8_t id =0; id< nbPANs; id++)   // recherche du cordinateur PAN
        {
            if(ActiveScanResults[id].PANID.Val == MY_PAN_ID)
                index = id;
        }
        
        if( MiApp_EstablishConnection(index,CONN_MODE_DIRECT)== 0xFF)
           uartPrint("\nErreur EstablishConnection"); 
        else {		
			MiApp_ConnectionMode(DISABLE_ALL_CONN);
			HelloToAll();
		}
        
        
    }
	else
	{
		MiApp_ConnectionMode(ENABLE_ALL_CONN);
           
		if(MiApp_StartConnection(START_CONN_DIRECT,0,0x800)) //cannal 11
            uartPrint("Nouveau cannal ouvert ! \n");
		
	}
    
	
	uartPrint("\nVotre adresse est : 0x");   
    uartHexaPrint((uint8_t *)&myShortAddress,2);
    uartPrint("\r\n");  
    
}


void TX(void)
{
	if(TX_Broadcast_OU_Unicast == 1) {   // transmission en broadcast
		if(!MiApp_BroadcastMessage(false))
			uartPrint("\nErreur emission message broadast\n");
	}
	else {
		if(!MiApp_UnicastPacket(TX_Index_Unicast,false))
			uartPrint("\nErreur emission message unicast\n");
	}
	
}

void RX(void)
{
    if(MiApp_MessageAvailable())
    {
        uartWrite(rxMessage.Val);
		DiscardMessage();
        
    }
}
  
void HelloToAll() 
{
	TX_Broadcast_OU_Unicast = true;     // choix d'émission broadcast
	MiApp_FlushTx();					
	char chaine[] = "Bonjour !";
	int i;
	while(chaine[i] != 0) {
		MiApp_WriteData(chaine[i]);		// remplissage de la pile d'émission avec "Bonjour !"
		i++;
	}
	MiApp_WriteData("\0");
	TX();
}



// modifierTX_BUFFER_SIZE

void sendMeassageBroadcast(char * pseudo,int nbPush)
{
	TX_Broadcast_OU_Unicast = true;     // choix d'émission broadcast
	MiApp_FlushTx();					// vide la pile Tx
	char chaine1[] = "Pseudo : ";
	char chaine2[] = ", message broadcast ";
	int i = 0;
	while(chaine1[i] != 0) {
		MiApp_WriteData(chaine[i]);		// remplissage de la pile d'émission avec "Pseudo : "
		i++;
	}
	i = 0
	while(pseudo[i] != 0) {
		MiApp_WriteData(pseudo[i]);		// remplissage de la pile d'émission avec le pseudo
		i++;
	}
	i = 0;
	while(chaine2[i] != 0) {
		MiApp_WriteData(chaine2[i]);		// remplissage de la pile d'émission avec ", message broadcast "
		i++;
	}
	char nbPushChar[] = "00";
    nbPushChar[0]+=nbPush/10;
    nbPushChar[1]+=nbPush%10;
	MiApp_WriteData(nbPushChar[0]);			// remplissage de la pile d'émission le nb de push
	MiApp_WriteData(nbPushChar[1]);
	MiApp_WriteData("\0");
	TX();
}


void sendMeassageUnicast(char * pseudo,int nbPush,char  * destinataire) 
{
	TX_Broadcast_OU_Unicast = false;     // choix d'émission broadcast
	MiApp_FlushTx();					// vide la pile Tx
	char chaine1[] = "Pseudo : ";
	char chaine2[] = ", message unicast ";
	char chaine3[] = " vers ";
	int i = 0;
	while(chaine1[i] != 0) {
		MiApp_WriteData(chaine[i]);		// remplissage de la pile d'émission avec "Pseudo : "
		i++;
	}
	i = 0
	while(pseudo[i] != 0) {
		MiApp_WriteData(pseudo[i]);		// remplissage de la pile d'émission avec le pseudo
		i++;
	}
	i = 0;
	while(chaine2[i] != 0) {
		MiApp_WriteData(chaine2[i]);		// remplissage de la pile d'émission avec ", message broadcast "
		i++;
	}
	char nbPushChar[] = "00";
    nbPushChar[0]+=nbPush/10;
    nbPushChar[1]+=nbPush%10;
	MiApp_WriteData(nbPushChar[0]);			// remplissage de la pile d'émission le nb de push
	MiApp_WriteData(nbPushChar[1]);

	i = 0;
	while(chaine3[i] != 0) {
		MiApp_WriteData(chaine3[i]);		// remplissage de la pile d'émission avec " vers "
		i++;
	}
	i = 0;
	while(destinataire[i] != 0) {
		MiApp_WriteData(destinataire[i]);		// remplissage de la pile d'émission avec le num de destinataire
		i++;
	}
	MiApp_WriteData("\0");
	TX();
	
}
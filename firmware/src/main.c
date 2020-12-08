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

/************************** VARIABLES ************************************/
        
extern API_UINT16_UNION                 myPANID;        						// mon PANID
extern uint8_t                          myLongAddress[MY_ADDRESS_LENGTH];		// mon adresse IEEE
extern API_UINT16_UNION                 myShortAddress;                     	// mon adresse logique
extern ACTIVE_SCAN_RESULT               ActiveScanResults[ACTIVE_SCAN_RESULT_SIZE];		// table des actives scan



extern RECEIVED_MESSAGE  rxMessage;

#define MY_CHANNEL 11


void main (void)
{
    chatInit();

    
    
    
    
    char identifiant[10];
    
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
    

    while(1);
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
    if(nbPANs != 0) {
        for(uint8_t id =0; id< nbPANs; id++) 
        {
            if(ActiveScanResults[id].PANID.Val == MY_PAN_ID)
                index = id;
        }
        
        if( MiApp_EstablishConnection(index,CONN_MODE_DIRECT)== 0xFF)
           uartPrint("\nErreur EstablishConnection"); 
        MiApp_ConnectionMode(DISABLE_ALL_CONN);
        
        
    }
	else
	{
		MiApp_ConnectionMode(ENABLE_ALL_CONN);
           
		if(MiApp_StartConnection(START_CONN_DIRECT,0,0x800)) //cannal 11
            uartPrint("Nouveau cannal ouvert ! \n");
		
	}
    
    
}


void TX(void)
{
    
}

void RX(void)
{
    if(MiApp_MessageAvailable())
    {
        
        
    }
}
  
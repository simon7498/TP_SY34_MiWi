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

#define MY_CHANNEL 11



/************************** VARIABLES ************************************/
        
extern API_UINT16_UNION                 myPANID;        						// mon PANID
extern uint8_t                          myLongAddress[MY_ADDRESS_LENGTH];		// mon adresse IEEE
extern API_UINT16_UNION                 myShortAddress;                     	// mon adresse logique
extern ACTIVE_SCAN_RESULT               ActiveScanResults[ACTIVE_SCAN_RESULT_SIZE];		// table des actives scan



extern RECEIVED_MESSAGE  rxMessage;




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
    uartPrint(" \n");
    
    
    
    /*
    uint8_t tab_connection;
    if (MiApp_ProtocolInit(true)) 
    {
        if(MiApp_SetChannel(11)) 
        {
            tab_connection = MiApp_SearchConnection(START_CONN_DIRECT,0x200);
            
        }
        
    }*/	
    while(1);
}

void chatInit(void) 
{
	SYSTEM_Initialize();
    uartInitialize();
	if(!MiApp_ProtocolInit(false))
		uartPrint("\nErreur ProtocolInit");
	if(!MiApp_SetChannel(MY_CHANNEL)) 
		uartPrint("\nErreur SetChannel");
	unit8_t nbPANs = MiApp_SearchConnection(10, 0x800); // ScanDuration=10 pour 1s; canal 11
    
    if(nbPANs != 0) {
        for(int id =0; i< nbPANs; i++) 
        {
            if(false = (ACTIV_SCAN_RESULT[id].PANID.Val == MY_PAN_ID))
                break;
        }
    }
	else
	{
		MiApp_ConnectionMode(EnableAll)
		MiApp_EstablishConnection(ACTIVE_SCAN_RESULT.Adress[0],CONN_MODE_DIRECT);  //0xFF pour se connecter avec tout le monde
		
	}
}
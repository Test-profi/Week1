//RUNDEMO  JOB (JOB),'RUN DEMO PROG',               
//         CLASS=A,MSGCLASS=X,                      
//         MSGLEVEL=(1,1),                          
//         NOTIFY=&SYSUID                           
//*                                                 
//STEP01   EXEC PGM=DEMO                            
//STEPLIB  DD   DSN=DEMO.DEV.LOADLIB,DISP=SHR       
//SYSPRINT DD   SYSOUT=*                            
//SYSOUT   DD   SYSOUT=*                            
//SYSIN    DD   DUMMY                               
//*                                                 
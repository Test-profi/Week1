//************************************************************
//* JOB TO CALL SETUPCMP TO COMPILE MVS 3.8
//* CHANGE DEMO TO ANY COBOL PROGRAM NAME
//* COB.SYSIN - CHANGE DSNAME WHERE YOUR PROGRAMS ARE
//* COB.SYSLIB - CHANGE THE DSNAME FOR YOUR COPYBOOKS
//* LKED.SYSLMOD - CHANGE DSNAME TO YOUR LOADLIB
//************************************************************
//DEMOJB JOB 'COMPILE',                                           
//            CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1),NOTIFY=&SYSUID     
//*                                                                
//UPDATES  EXEC SETUPCMP,PARM='LIB,LOAD,SUPMAP,SIZE=2048K,BUF=1024K'
//COB.SYSLIB DD DSN=DEMO.DEV.COPYBOOK,DISP=SHR                  
//COB.SYSIN DD DSN=DEMO.DEV.BCOB(DEMO),DISP=SHR              
//LKED.SYSLMOD DD DSNAME=DEMO.DEV.LOADLIB(DEMO),DISP=SHR     
//LKED.SYSLIB DD DSNAME=SYS1.COBLIB,DISP=SHR                       
//            DD DSNAME=SYS1.LINKLIB,DISP=SHR                      
//            DD DSNAME=SYS2.LINKLIB,DISP=SHR                      
//SYSOUT   DD SYSOUT=*                                             
/*                                                                 

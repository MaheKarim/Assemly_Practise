INCLUDE "EMU8086.INC"                     ; emu8086 helper added

.MODEL SMALL
.STACK 100H
.CODE
                                         
   MAIN PROC                              ; main procedure start
    
    
    PRINT "ENTER YOUR FIRST VALUE: "
    MOV AH, 01H                           ; input a character
    INT 21H                               ; "     "     "

    MOV BH, AL                            ; first value store BH
    
    PRINTN
    PRINT "ENTER YOUR SECONED VALUE: "
    INT 21H
    MOV BL, AL                            ; seconed value store BL
    
    PRINTN
    PRINT "ENTER YOUR THIRD VALUE: "   
    INT 21H
    MOV CH, AL                             ; third value store CH 
    

    ADD BH, BL                             ; add functionality
    SUB BH, 30H                            ; sub assembler value when we do add
    

    SUB BH, CH                             ; subtract functionality
    ADD BH, 30H                            ; add assembler value when we do sub
    
    
    PRINTN                                 ; new line printer
    PRINT "THE RESULT OF (A+B)-C IS : "
    MOV AH, 2                              ; instruction for print out
    MOV DL, BH                             ; our ans store on BH and dl use for print ans
    INT 21H
    
    
    MOV AH, 4CH                             ; return 0 / terminate programme
    INT 21H
    
    
    MAIN ENDP                              ;end of program 
    END MAIN                               ; entry point for linker use
MODULE MainModule
        CONST robtarget p0:=[[802.93,73.57,1154.00],[0.499478,-0.0395514,0.865122,0.022835],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	    
	PROC main()
        reset0:
	    TPErase;
        TPWrite "BOM DIA";
        TPReadFK reg2, "Desenhar Quadrado ou Circulo ?", "Sair", stEmpty, stEmpty, "Quadrado","Circulo"; !opcao
        IF reg2=1 GOTO final; ! Se quero sair
        IF reg2=4 GOTO quad; ! Se quero desenhar um quadrado
        IF reg2=5 GOTO circ; ! Se quero desenhar um circulo
        
        quad:
        QUADRADO;
        GOTO fim;
        circ:
        CIRCULO;
        GOTO fim;
        
        fim:
         TPErase;
         TPWrite "Desenho Terminado !!!";
         WaitTime 2;
         TPReadFK reg2, "Fazer novo Desenho ?", stEmpty, stEmpty, stEmpty, "Sim","Nao";      
         IF reg2=4 GOTO reset0;
         IF reg2=5 GOTO final;
         
         final:
         TPErase;
         TPWrite "Programa Terminado!!!";
         TPWrite "Tchau !!! :-)";
         WaitTime 1;
	ENDPROC
    
    PROC QUADRADO() ! Funcao desenha quadrado
        TPWrite "Quadrado !!!";
        
    ENDPROC
                
   PROC CIRCULO() ! Funcao Desenha circulo
        TPWrite "Circulo !!!";
    
    ENDPROC
ENDMODULE
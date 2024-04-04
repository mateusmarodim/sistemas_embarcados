
				AREA |.text|,CODE,READONLY
				EXPORT AscendeLEDs
				EXPORT ApagaLEDs
				IMPORT  SysTick_Wait1ms
				IMPORT PortF_Output
				IMPORT PortN_Output
AscendeLEDs
		MOV R1, R0
		MOV R2, #2_0001
		AND R3, R2, R1
		CMP R3, #0
		PUSH {LR}
		BLNE LED1
		POP {LR}
		MOV R2, #2_0010
		AND R3, R2, R1
		CMP R3, #0
		PUSH {LR}
		BLNE LED2
		POP {LR}
		MOV R2, #2_0100
		AND R3, R2, R1
		CMP R3, #0
		PUSH {LR}
		BLNE LED3
		POP {LR}
		MOV R2, #2_1000
		AND R3, R2, R1
		CMP R3, #0
		PUSH {LR}
		BLNE LED4
		POP {LR}
		MOV R0, #1000
		PUSH {LR}
		BL SysTick_Wait1ms
		POP {LR}
		BX 		LR
LED1	MOV R0, #2_0001
		BL PortN_Output
		BX LR
LED2	MOV R0, #2_0000
		BL PortN_Output
		BX LR
LED3	MOV R0, #2_10000
		BL PortF_Output
		BX LR
LED4	MOV R0, #2_1000
		BL PortF_Output
		BX LR

ApagaLEDs
		MOV R0, #0
		BL PortN_Output
		BL PortF_Output
		BX LR
		ALIGN
		END
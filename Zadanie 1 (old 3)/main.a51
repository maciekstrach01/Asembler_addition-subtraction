Stala EQU 1000 ; stala o wartosci 1000 dziesietnie
DanaL DATA 20h ; odnosnik do adresu pamieci, h - heksadecymalne
DanaH DATA 21h
WynikL DATA 30h 
WynikH DATA 31h 
	
CSEG AT 0 
JMP start ; Przeskoczenie do funkcji start

CSEG AT 100h 
	start: 
		; Case 1
		; MOV DanaL,#09h ; pod adres 20h wpisac wartosc 09h
		; MOV DanaH,#0Ah ; pod adres 21h wpisac wartosc 0Ah
		
		; Case 2
		; MOV DanaL,#18h ; pod adres 20h wpisac wartosc 18h
		; MOV DanaH,#00h ; pod adres 21h wpisac wartosc 00h

		MOV A,DanaL ; Akumulator, DanaL = 20h
		ADD A,#low(Stala) ; Wydzielenie czesci low z wartosci wiekszej niz 255
		MOV WynikL,A ; Zapisanie wartosci akumulatora do Adresu WynikL
		MOV A,DanaH 
		ADDC A,#high(Stala) 
		MOV WynikH,A
END 

; 0x00 - hex (0x00 - 0xFF)
; 0x00 - 8 bitów
; Rodzina 8051 - rejestry maja 8-bitowe rejestry i akumulatory
; Ograniczenia
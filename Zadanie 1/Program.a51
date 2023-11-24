Stala EQU 1000 		; stala o wartosci 1000 w systemie dziesietnym (03E8h)
DanaL DATA 20h 		; odnosnik do adresu pamieci, w systemie szesnastkowym
DanaH DATA 21h 		; odnosnik do adresu pamieci
WynikL DATA 30h 	; odnosnik do adresu pamieci
WynikH DATA 31h 	; odnosnik do adresu pamieci
	
CSEG AT 0 			; Dyrektywa
JMP start 			; Przeskoczenie do funkcji start
	
CSEG AT 100h		; Dyrektywa
	start:
		MOV DanaL,#09h		; pod adres 20h wpisac wartosc
		MOV DanaH,#0Ah		; pod adres 21h wpisac wartosc
	
		MOV A,DanaL 		; Przeniesienie zawartosci komorki DanaL do akumulatora
		ADD A,#low(Stala)	; Dodanie do zawartosci akumulatora czesci stalej - E8h
		MOV WynikL,A		; Przeniesienie zawartosci akumulatora do komorki WynikL
		MOV A,DanaH			; Przeniesienie zawartosci komorki DanaH do akumulatora
		ADDC A,#high(Stala)	; Dodanie do zawartosci akumulatora czesci stalej 03h
							; Uwzglednienie bitu przeniesienia
		MOV WynikH,A		; Przeniesienie zawartosci akumulatora do komorki WynikH
END					; Dyrektywa

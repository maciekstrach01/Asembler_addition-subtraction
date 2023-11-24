Stala EQU 1000 		; stala o wartosci 1000 w systemie dziesietnym (03E8h)
DanaL DATA 20h 		; odnosnik do adresu pamieci, w systemie szesnastkowym
DanaH DATA 21h 		; odnosnik do adresu pamieci
WynikL DATA 30h 	; odnosnik do adresu pamieci
WynikH DATA 31h 	; odnosnik do adresu pamieci
	
CSEG AT 0 			; Dyrektywa
JMP start 			; Przeskoczenie do funkcji start
	
CSEG AT 100h		; Dyrektywa
	start:
		MOV DanaL,#0x00		; Zapisanie stalej do komorki DanaL
		MOV DanaH,#0x04		; Zapisanie stalej do komorki DanaH
	
		MOV A,DanaL 		; Przeniesienie zawartosci komorki DanaL do akumulatora
		SUBB A,#low(Stala)	; Odejmowanie od akumulatora czesci stalej - E8h - z pozyczeniem
		MOV WynikL,A		; Przeniesienie zawartosci akumulatora do komorki WynikL
		MOV A,DanaH			; Przeniesienie zawartosci komorki DanaH do akumulatora
		SUBB A,#high(Stala)	; Odejmowanie od akumulatora czesci stalej - 03h - z pozyczeniem
		MOV WynikH,A		; Przeniesienie zawartosci akumulatora do komorki WynikH
END					; Dyrektywa

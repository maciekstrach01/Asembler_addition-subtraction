
# Asembler

Celem zadania jest zaprezentowanie programu do dodawania, a następnie odejmowania dwóch liczb 16-bitowych. Liczby 16-bitowe są przechowywane w postaci dwóch bloków 8-bitowych.

## Description
Program – dodawanie dwóch liczb 16-bitowych
![Obraz1](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/1867971d-e8c8-4f6d-b5a2-a6708d67d04c)


1.Uruchomienie programu. Komórki DanaL  i DanaH mają domyślnie wartości 0x00
![Obraz2](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/024eb88f-964d-4b2d-9608-2ed6be98d570)
2.Dodawanie pierwszej części liczby.

o	Załadowanie zawartości komórki DanaL do akumulatora.

o	Dodanie do zawartości akumulatora części stałej – E8h.

o	00h + E8h = E8h

o   Zapisanie wyniku operacji do komórki WynikL.

![Obraz3](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/5410ead5-1ea3-4137-b9ea-61c765527949)

3.Dodawanie drugiej części liczby.

o	Załadowanie zawartości komórki DanaH do akumulatora.

o	Dodanie do zawartości akumulatora części stałej – 03h.

o	00h + 03h = 03h

o	Zapisanie wyniku operacji do komórki WynikH.

o	Koniec działania programu.

![Obraz4](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/f5ce8d41-6650-45cb-949b-db4a47210535)
Podsumowanie działania programu

•	Dodano 03E8h do 0000h.

•	Wynik: 03E8h (poprawny).

![Obraz5](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/4bdd4bf4-95ad-48d7-861d-41bd4f1636ca)

Debugowanie 2 (20h: 09h, 21h: 0Ah)

1.Uruchomienie zmodyfikowanego programu.

o	Pod adres 20h wpisano wartość 09h.

o	Pod adres 21h wpisano wartość 0Ah.

![Obraz6](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/774a977a-5695-4df9-a6f9-7549403b5c46)

2.Dodawanie pierwszej części liczby.

o	Analogicznie jak wcześniej.

o	09h + E8h = F1h

o	Aktywowane flagi PSW (Program Status Word).

	P – parity bit – liczba jedynek w zapisie binarnym wartości akumulatora jest nieparzysta.
	AC – auxiliary carry – nadmiarowy bit w obrębie 8 bitów.


![Obraz7](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/fdf55a8c-d95e-462e-ab8a-24f1507b7376)

3.Dodawanie drugiej części liczby.

o	Analogicznie jak wcześniej.

o	0Ah + 03h = 0Dh

o	Aktywowane flagi PSW.

	P – parity bit.

o	Koniec działania programu.

![Obraz8](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/3a028ce4-53b2-4cdf-af88-b2d77f1214bc)

Podsumowanie działania programu

•	Dodano 03E8h do 0A09h.

•	Wynik: 0DF1h (poprawny).

![Obraz9](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/fe5dcf01-20dd-42da-8dab-aa846002708d)

•	Aktywowane flagi PSW.

o	P – parity bit.

o	AC – auxiliary carry.

Debugowanie 3 (20h: 18h, 21h: 00h)

1.Uruchomienie zmodyfikowanego programu.

o	Pod adres 20h wpisano wartość 18h.

o	Pod adres 21h wpisano wartość 00h

![Obraz10](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/8f52b832-f055-4bd8-bc8d-d60f74b35bc6)
2.Dodawanie pierwszej części liczby.

Analogicznie jak wcześniej.

o	18h + E8h = 100h

o	Aktywowane flagi PSW (Program Status Word).

	AC – auxiliary carry.

	CY – carry bit – nadmiarowy bit poza zakresem 8 bitów.

![Obraz11](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/a1bd9d1a-4864-4060-a741-76f3f2f019b6)

3.Dodawanie drugiej części liczby.

o	Analogicznie jak wcześniej.

o	00h + 03h + carry bit = 04h

o	Aktywowane flagi PSW.

	P – parity bit.
o	Koniec działania programu.

![Obraz12](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/93cafd33-e77d-4535-9e3b-3c5f6b7617ea)

Podsumowanie działania programu i inne wnioski

•	Dodano 03E8h do 0018h.

•	Wynik: 0400h (poprawny).

![Obraz13](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/0eea72ea-a89d-454e-9c3b-b45157c4a504)

•	Aktywowane flagi PSW w trakcie działania programu.

o	P – parity bit.

o	AC – auxiliary carry.

o	CY – carry bit.

•	Flaga CY (carry bit) umożliwia dodawanie z uwzględnieniem nadmiarowego bitu.

•	Wykorzystuje ją instrukcja ADDC.



Program – odejmowanie dwóch liczb 16-bitowych

![Obraz14](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/8f67ce5c-772e-4d25-9859-6f2275e2278e)

1.Uruchomienie programu. Załadowanie liczby 0400h do pamięci.

![Obraz15](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/1b2804fa-be57-4613-beb8-ca6e28014ef5)

2.Odejmowanie pierwszej części liczby 16-bitowej (00h – E8h z pożyczeniem bitu).


![Obraz16](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/7183b308-1301-4350-a10f-5c9f68606d2c)

3.Odejmowanie drugiej części liczby 16-bitowej (04h – 03h – pożyczony bit). Koniec działania programu.

![Obraz17](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/9d64ec7c-26ec-46a6-bb9a-2dd428b09452)

Podsumowanie działania programu

•	Wykonano działanie 0400h – 03E8h = 0018h, składające się z dwóch części.

o	00h – E8h = 18h (pożyczono bit)

o	04h – 03h – pożyczony bit = 00h

•	Wynik działania jest poprawny.

![Obraz18](https://github.com/maciekstrach01/Asembler_addition-subtraction/assets/146733279/cc4d6b19-5824-497e-b763-097b3c934519)

•	Rozkaz SUBB odejmuje z pożyczeniem bitu, gdy odjemna (akumulator) jest mniejsza od odjemnika.

•	Informacja o pożyczeniu bitu znajduje się w fladze PSW CY (carry bit).



















## 🛠 Skills
Asembler


## Running Tests

    Uruchom środowisko μVision.

    Z menu "Project" utwórz nowy projekt.

    Wybierz procesor (np. Atmel AT89C51RD2 dla zestawu ZL2MCS51).

    Ustaw częstotliwość rezonatora kwarcowego na 11,0592MHz.

    Zaznacz opcję "Create HEX file" na karcie "Output" w oknie "Options for Target".

    Dodaj plik z kodem źródłowym do projektu.

    Skompiluj projekt za pomocą polecenia "Build" (skrót klawiaturowy F7).

    Z menu "Debug" uruchom sesję debugowania za pomocą opcji "Start/Stop debug session".

    Monitoruj stan mikrokontrolera, rejestrów, pamięci programu, i IRAM za pomocą okien "Registers Window" i "Memory Windows".

    W trybie debugowania, naciśnij F11 lub użyj opcji "Step" do przejścia do następnej instrukcji.

    W oknie "Memory" wpisz adres, aby przeglądać i modyfikować zawartość pamięci programu.



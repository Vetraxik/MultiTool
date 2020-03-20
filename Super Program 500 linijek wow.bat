@echo off
title Ciekawy Program Jakuba Nowaka
:mktemp 
mkdir %userprofile%\tempcmd\ > nul
echo @echo off > "%userprofile%\tempcmd\matrix.bat"
echo color 02 >> "%userprofile%\tempcmd\matrix.bat"
echo :start >> "%userprofile%\tempcmd\matrix.bat"
echo echo %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%%%%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% >> "%userprofile%\tempcmd\matrix.bat"
echo goto start >>"%userprofile%\tempcmd\matrix.bat"
echo(
echo @echo off >> "%userprofile%\tempcmd\zegar.bat"
echo :zegaratomowy >> "%userprofile%\tempcmd\zegar.bat"
echo cls >> "%userprofile%\tempcmd\zegar.bat"
echo Zegar trzeba odswiezac recznie >> "%userprofile%\tempcmd\zegar.bat"
echo echo %%time%% >> "%userprofile%\tempcmd\zegar.bat"
echo pause >> "%userprofile%\tempcmd\zegar.bat"
echo goto zegaratomowy >> "%userprofile%\tempcmd\zegar.bat"
echo( >>"%userprofile%\tempcmd\man.txt"
echo Skladnia sztucznej inteligencji >>"%userprofile%\tempcmd\man.txt"
echo( >>"%userprofile%\tempcmd\man.txt"
echo Wzor dzialania: >>"%userprofile%\tempcmd\man.txt"
echo Polecenie bazowe + specyfikacja rzadania >>"%userprofile%\tempcmd\man.txt"
echo 1. Uruchom (enter) SI zapyta Co uruchomic >>"%userprofile%\tempcmd\man.txt"
echo 2. Usun (enter) Sciezka >>"%userprofile%\tempcmd\man.txt"
echo 3. Przeczytaj (enter) dokument.txt (bez rozszerzenia) >>"%userprofile%\tempcmd\man.txt"
echo 4. Touch (enter) nazwa (uhuhu znowu nawiazanie do ubuntu) >>"%userprofile%\tempcmd\man.txt"
echo 5. x - wyjscie z sztuczej inteligencji >>"%userprofile%\tempcmd\man.txt"
:ostrzezenie
echo UWAGA
echo Zanim uruchomisz program, prosze o wylaczanie go za pomoca opcji
echo(
echo [x] Zamyka Program
echo Wtedy usuwa wszystkie pliki po sobie, jezeli sie tego nie zrobi, moga 
echo wystepowac wtedy rozne bugi
echo(
echo Jezeli przeczytal sor, niech sor wcisnie dowolny przycisk
pause >nul
:Ladowanie
echo Ladowanie programu (na takim slabym komputerze moze duzo zajac :) )

ping localhost -n 4 > nul
:: Pinguje 4 razy, ping idzie co sekunde. W ten sposob mozna symulowac "ladowanie"
:: Przekierowanie do > nul idzie sie domyslic co robi, potem sorze jeszcze z pauzą tak robie
:menug
cls
echo  _  _  __  ____  __     __    _  _  _  _  ____  __ _  __   _  _  __ _  __  __ _  _  _ 
echo / )( \(  )(_  _)/ _\  _(  )  / )( \( \/ )(_  _)(  / )/  \ / )( \(  ( \(  )(  / )/ )( \
echo \ /\ / )(   )( /    \/ \) \  ) \/ ( )  /   )(   )  ((  O )\ /\ //    / )(  )  ( ) \/ (
echo (_/\_)(__) (__)\_/\_/\____/  \____/(__/   (__) (__\_)\__/ (_/\_)\_)__)(__)(__\_)\____/
echo(
echo Dzisiaj jest:%time% %date%
echo(
echo Funkcje:
echo [1] Utworz Godmode na pulpicie [4] Uruchom nowe okno CMD
echo [2] Uruchom Ms Teams           [5] Uruchom PowerShell
echo [3] Ipconfig                   [6] Wiecej...     
echo(
echo (Tutaj bylo by wiecej ale polowa rzeczy wpadala mi do glowy podczas pisania skryptu)
echo(
echo [x] Zamyka program
set/p "x=>"
if %x%==1 goto Godmode
if %x%==2 goto Msteams
if %x%==3 goto ipconfig
if %x%==4 goto cmdn
if %x%==5 goto psn
if %x%==6 goto kat
if %x%==x goto exit
goto menug
:exit
RMDIR /Q/S %userprofile%\tempcmd\
exit
:Godmode
cls
cd %userprofile%
cd Desktop
mkdir GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}. > nul
echo Gotowe!
echo( 
echo Prosze wcisnac dowonlny przycisk aby przejsc dalej :)
pause > nul
goto :menug
:Msteams
cls
start %userprofile%\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
goto menug
:ipconfig
cls
echo [1]Ipconfig
echo [2]Ipconfig all
set/p "i=>"
if %i%==1 (goto ipconfigg)
if %i%==2 (goto ipall)
goto menug
:cmdn
cls
start cmd /k "cls & echo Witam w Nowakowym CMD"
goto menug
:psn
cls
echo(
echo Odpalic panu w nowym okienku?
echo [1] Tak
echo [2] Nie
set/p "a=>"
if %a%==1 (goto psnok)
if %a%==2 (powershell)
goto menug
:psnok
cls
echo Okej daj pan 3 sekundy, na takim slabym kompie to tyle zajmuje :)
ping localhost -n 3 > nul
start cmd /k "cls & echo Nowakowy powershell & powershell"
goto menug
:ipconfigg
:: To jest to samo menu co ipconfig /all tylko ze no parametru /all nie ma
cls
ipconfig /all > %userprofile%\tempcmd\ipconfig.txt
ipconfig /all
echo(
echo(
echo Zgrac do pliku?
echo [1]Tak
echo [2]Nie
set/p "a=>"
if %a%==1 (cd %userprofile% & copy %userprofile%\tempcmd\ipconfig.txt %userprofile%\Desktop\ & goto menug)
if %a%==2 (del %userprofile%\tempcmd\ipconfig.txt >nul & echo Sor wcisnie dowolny przycisk & pause >nul & goto menug)
:ipall
:: Najpierw chcialem dac tu dwa razy ipconfig ale jeden do pliku, ale stwierdzilem ze zrobie po bozemu
cls
::Tu sie robi folder temp i tam jest plik ipconfig przechowywany
mkdir %userprofile%\tempcmd\
ipconfig /all > %userprofile%\tempcmd\ipconfigall.txt
ipconfig /all
echo(
echo(
echo Zgrac do pliku?
echo [1]Tak
echo [2]Nie
set/p "a=>"
:: Tutaj albo jest kopiowany na pulpit albo usuwany, zalezy od decyzji uzytkownika. Super co nie sorze?
if %a%==1 (cd %userprofile% & copy %userprofile%\tempcmd\ipconfigall.txt %userprofile%\Desktop\ & goto menug)
if %a%==2 (del %userprofile%\tempcmd\ipconfigall.txt >nul & echo Sor wcisnie dowolny przycisk & pause >nul & goto menug)
:kat
:: Jestem z siebie dumny, te napisy robia fajny interface. Kozacki jak usb
cls
echo  _  _  __  ____  ___  ____    __ 
echo / )( \(  )(  __)/ __)(  __) _(  )
echo \ /\ / )(  ) _)( (__  ) _) / \) \
echo (_/\_)(__)(____)\___)(____)\____/
echo(
echo Mistrzu oto wszystko czego mnie Kubus nauczyl
echo Dzis jest:%date%                     Godzina:%time%
:: chodzi o to ze mozna dodac jeszcze przy starcie programu parametry jakies np firefox.exe -safemode czy cos
echo(
echo [1] Uruchamianie programu (wypasione)                          [7] Generator komunikatow error 
echo [2] Matrix                                                     [8] Otwieranie iedu :)
echo [3] Sekundnik? Moze bardziej alarm                             [9] Zwykly zegar
echo [4] Lista kont z komputera                                     [10] Nowako-virus (alpha 0.80)
echo [5] Funckje systemu Windows (polecam wlaczyc kernel linuxa :) )[11] Dalej
echo [6] Odpalanie podstawek Windows                                [99] Powrot do menu glownego
echo(
echo [x] Wyjscie 
echo(
set/p "a=>"
if %a%==1 (goto plan)
if %a%==2 (goto matrix)
if %a%==3 (goto zegaratomowy)
if %a%==4 (goto netuser)
if %a%==5 (optionalfeatures & goto kat)
if %a%==6 (goto msc)
if %a%==7 (goto errorgen)
if %a%==99 (goto menug)
if %a%==8 (start www.iedu.cba.pl & goto kat)
if %a%==9 (goto zegar)
if %a%==10 (goto pogromcakotowirusa)
if %a%==11 (goto kat2)
if %a%==x (goto exit)
:plan
cls
echo Podaj nazwe aplikacji (najlepiej z cala sciezka, bo nie zawsze odpali)
echo Przykład firefox.exe -safe-mode
echo          Aplikacja ^ Parametr ^
echo(
set/p "app=>"
echo(
echo Dobra to teraz podaj mi jakies parametry (Opcjonalne)
echo(
set/p "parametry=>"
start %app% %parametry%
goto kat
:matrix
:: chciałem aby to było w jednym skrypcie ale limitacje, więc musiałem skrypt na dwa pliki rozbic
start cmd /k "%userprofile%\tempcmd\matrix.bat"
goto kat
:zegaratomowy
echo Podaj dowolna liczbe sekund, bede liczyl :)
echo(
set/p"a=>"
ping localhost -n %a% > nul
echo Juz minelo %a% sekund
pause > nul
goto kat
:netuser
cls
echo Lista uzytkownikow:
echo(
net user
echo(
echo Powrot do bazy? Dowolny przycisk znaczy tak :-)
pause > nul
goto kat
:zegar
cls
echo Teraz jest godzina: %time%
echo(
echo Aby wyjsc z zegara prosze wcisnac dowonly przycisk
pause > nul
goto kat
:errorgen
echo Jaki tytul ma miec okienko errora?
set/p "t=>"
echo No dobra, a jaka ma miec tresc okienko %t%?
set/p "tr=>"
echo Okej spoko generuje blad
echo X=Msgbox("%tr%",0+16,"%t%") > %userprofile%\tempcmd\error.vbs
ping localhost-n 2 > nul
start %userprofile%\tempcmd\error.vbs
echo(
echo Chcesz zatrzymac error i skopiowac na pulpit?
echo [1]Tak
echo [2]Nie
set/p "a=>"
if %a%==1 (copy %userprofile%\tempcmd\error.vbs %userprofile%\Desktop & echo Operacja wykonana pomyslnie sorze :) & pause >nul & goto kat )
if %a%==2 (del %userprofile%\tempcmd\error.vbs & echo Operacja wykonana pomyslnie sorze :) & pause >nul & goto kat )
echo Zly wybor, wracam do menu
:msc
echo(
echo Najprzydatniejsze (moim zdaniem) podstawki
echo(
echo [1] devmgmt   [6] lusrmgr
echo [2] compmgmt  [7] secpol
echo [3] diskmgmt  [8] wf
echo [4] services  [9] msconfig
echo [5] taskmgr   [10] Powrot do bazy
echo(
set/p "a=>"
if %a%==1 (devmgmt.msc & goto kat)
if %a%==2 (compmgmt.msc & goto kat)
if %a%==3 (diskmgmt.msc & goto kat)
if %a%==4 (services.msc & goto kat)
if %a%==5 (taskmgr.exe & goto kat)
if %a%==6 (lusrmgr.msc & goto kat)
if %a%==7 (secpol.msc & goto kat)
if %a%==8 (wf.msc & goto kat)
if %a%==9 (msconfig & goto kat)
if %a%==10(goto kat)
:pogromcakotowirusa
cls
echo(
echo Teraz troche historii... Sluchajac historii o wielkim gromkowirusie
echo Imperatorze sali komputerowej nr.3, postanowilem zrobic jego wersje
echo ktora bedzie bliska naszej klasie, 1 TiF. Dlatego prezentuje panu
echo(
echo                             Nowakowy-virus 2.0 
echo(
echo Ten piekny virus dziala na pieknej zasadzie. Generuje sobie plik na
echo rozszerzeniu .vbs, ogolnie dziala tak jak generator errorow, ale 
echo nowakovirus jest specjalny, otoz ten kopiuje sie do autostartu
echo Teraz pozostaje pytanie, czy chce pan go zainstalowac. Przy starcie
echo komputera, wyswietla tylko komunikat :) Udalo mi sie sprawic aby
echo wysuwal naped jak prosiak.
echo(
echo JAK WYLACZYC:
echo Proces nazywa sie wscript.vbs
echo 1.Taskmgr.exe
echo 2.Zakladka szczegoly
echo 3.Zakoncz zadanie wscript.vbs
echo(
echo Ten sie nie kopiuje do autostartu bo to material do zaliczenia 
echo nie chce sora denerwować :-)
echo(
echo Wygenerowac Virusa?
echo [1]. Tak
echo [2]. Nie
set /p"a=>"
if %a%==1 (goto kaczkovirusgen)
if %a%==2 (goto kat)
goto pogromcakotowirusa
:kaczkovirusgen
cls
:: tutaj dzieki echo przekierowanie do pliku generuje sie tez skrypt, ale vbs, prosta petla na wysuwanie napedu
echo X=Msgbox("Nowako-wirus w spolce z Gromkowirusem, prosiakiem i kotowirusem opanowal twoj naped cd/dvd",0+16,"Nowako-wirus") >> %userprofile%\tempcmd\kaczkovirus.vbs
echo Set oWMP = CreateObject("WMPlayer.OCX.7" ) >>%userprofile%\tempcmd\kaczkovirus.vbs
echo Set colCDROMs = oWMP.cdromCollection >>%userprofile%\tempcmd\kaczkovirus.vbs
echo if colCDROMs.Count >= 1 then >>%userprofile%\tempcmd\kaczkovirus.vbs
echo do >>%userprofile%\tempcmd\kaczkovirus.vbs
echo For i = 0 to colCDROMs.Count - 1 >>%userprofile%\tempcmd\kaczkovirus.vbs
echo colCDROMs.Item(i).Eject >>%userprofile%\tempcmd\kaczkovirus.vbs
echo Next ' cdrom >>%userprofile%\tempcmd\kaczkovirus.vbs
echo For i = 0 to colCDROMs.Count - 1 >>%userprofile%\tempcmd\kaczkovirus.vbs
echo colCDROMs.Item(i).Eject >>%userprofile%\tempcmd\kaczkovirus.vbs
echo Next ' cdrom >>%userprofile%\tempcmd\kaczkovirus.vbs
echo loop >>%userprofile%\tempcmd\kaczkovirus.vbs
echo End If >>%userprofile%\tempcmd\kaczkovirus.vbs
::W kodzie skryptu nad ta linijka, jest kod wirusa. 
start %userprofile%\tempcmd\kaczkovirus.vbs
goto kat
:kat2
cls
echo  _  _  __  ____  ___  ____    __    ____ 
echo / )( \(  )(  __)/ __)(  __) _(  )  (___ \
echo \ /\ / )(  ) _)( (__  ) _) / \) \   / __/
echo (_/\_)(__)(____)\___)(____)\____/  (____)
echo(
echo(
echo [1] Wyciaganie kodu z Windows               [5] Atak Epilepsji
echo [2] Odpal Regedit                           [6] Nieprawdziwy Bluescreen
echo [3] "Sztuczna Inteligencja" Nowako-bot
echo [4] Wszystkie komputery w sieci (arp -a)    [99] Powrot do menu glownego
echo(
echo [x] Wyjscie
echo(
set/p "a=>"
if %a%==1 (goto winkod)
if %a%==2 (regedit & goto kat2)
if %a%==3 (goto sztucznainteligencja)
if %a%==4 (goto arpa)
if %a%==5 (goto padaka)
if %a%==6 (goto bsod)
if %a%==99 (goto menug)
if %a%==x (goto exit)
goto kat2
::Dojscie do tych 1000 linijek moze byc problemem pomysly sie koncza :(
:bsod
@echo off
cd /
cls
color 17
echo A problem has been detected and Windows has been shut down to prevent damage
echo to your computer.
echo. Your Computer Is Fucked
echo The problem seems to be caused by the following file: SPCMDCON.SYS
echo.
echo PAGE_FAULT_IN_NONPAGED_AREA
echo.
echo If this is the first time you've seen this stop error screen,
echo restart your computer. If this screen appears again, follow
echo these steps:
echo.
echo Check to make sure any new hardware or software is properly installed.
echo If this is a new installation, ask your hardware or software manufacturer
echo for any Windows updates you might need.
echo.
echo If problems continue, disable or remove any newly installed hardware
echo or software. Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components, restart
echo your computer, press F8 to select Advanced Startup Options, and then
echo select Safe Mode.
echo.
echo Technical information:
echo.
echo * STOP: 0x00000050 (0xFD3094C2,0x00000001,0xFBFE7617,0x00000000)
echo.
echo.
echo * SPCMDCON.SYS - Address FBFE7617 base at FBFE5000, DateStamp 3d6dd67c
pause > nul 
color 
cls
echo Robic ten sam skrypt na pulpicie?
echo [1]Tak
echo [2]Nie
set/p"a=>"
if %a%==1 (goto bsoddoplik)
if %a%==2 (goto kat2)
:bsoddoplik
echo @echo off >>%userprofile%\Desktop\bsod.bat
echo cd / >>%userprofile%\Desktop\bsod.bat
echo cls >>%userprofile%\Desktop\bsod.bat
echo color 17 >>%userprofile%\Desktop\bsod.bat
echo echo A problem has been detected and Windows has been shut down to prevent damage >>%userprofile%\Desktop\bsod.bat
echo echo to your computer. >>%userprofile%\Desktop\bsod.bat
echo echo. Your Computer Is Popsuted >>%userprofile%\Desktop\bsod.bat
echo echo The problem seems to be caused by the following file: SPCMDCON.SYS  >>%userprofile%\Desktop\bsod.bat
echo echo. >>%userprofile%\Desktop\bsod.bat
echo echo PAGE_FAULT_IN_NONPAGED_AREA >>%userprofile%\Desktop\bsod.bat
echo echo. >>%userprofile%\Desktop\bsod.bat
echo echo If this is the first time you've seen this stop error screen, >>%userprofile%\Desktop\bsod.bat
echo echo restart your computer. If this screen appears again, follow >>%userprofile%\Desktop\bsod.bat
echo echo these steps: >>%userprofile%\Desktop\bsod.bat
echo echo. >>%userprofile%\Desktop\bsod.bat
echo echo Check to make sure any new hardware or software is properly installed. >>%userprofile%\Desktop\bsod.bat
echo echo If this is a new installation, ask your hardware or software manufacturer >>%userprofile%\Desktop\bsod.bat
echo echo for any Windows updates you might need. >>%userprofile%\Desktop\bsod.bat
echo echo. >>%userprofile%\Desktop\bsod.bat
echo echo If problems continue, disable or remove any newly installed hardware >>%userprofile%\Desktop\bsod.bat
echo echo or software. Disable BIOS memory options such as caching or shadowing. >>%userprofile%\Desktop\bsod.bat
echo echo If you need to use Safe Mode to remove or disable components, restart >>%userprofile%\Desktop\bsod.bat
echo echo your computer, press F8 to select Advanced Startup Options, and then >>%userprofile%\Desktop\bsod.bat
echo echo select Safe Mode. >>%userprofile%\Desktop\bsod.bat
echo echo. >>%userprofile%\Desktop\bsod.bat
echo echo Technical information: >>%userprofile%\Desktop\bsod.bat
echo echo. >>%userprofile%\Desktop\bsod.bat
echo echo * STOP: 0x00000050 (0xFD3094C2,0x00000001,0xFBFE7617,0x00000000) >>%userprofile%\Desktop\bsod.bat
echo echo. >>%userprofile%\Desktop\bsod.bat
echo echo. >>%userprofile%\Desktop\bsod.bat
echo echo * SPCMDCON.SYS - Address FBFE7617 base at FBFE5000, DateStamp 3d6dd67c >>%userprofile%\Desktop\bsod.bat
echo pause > nul >>%userprofile%\Desktop\bsod.bat
color 
goto kat2
:padaka
del /F/Q %userprofile%\tempcmd\epilepsja.bat
echo @echo off >> %userprofile%\tempcmd\epilepsja.bat
echo :tencza >> %userprofile%\tempcmd\epilepsja.bat
echo echo tencza :-) >> %userprofile%\tempcmd\epilepsja.bat
echo color F7 >> %userprofile%\tempcmd\epilepsja.bat
echo color E6 >> %userprofile%\tempcmd\epilepsja.bat
echo color D5 >> %userprofile%\tempcmd\epilepsja.bat
echo color B4 >> %userprofile%\tempcmd\epilepsja.bat
echo color A2 >> %userprofile%\tempcmd\epilepsja.bat
echo goto :tencza >> %userprofile%\tempcmd\epilepsja.bat
start cmd /k "%userprofile%\tempcmd\epilepsja.bat"
goto kat2
:winkod
cls
wmic path softwarelicensingservice get OA3xOriginalProductKey > %userprofile%\tempcmd\kluczwin.txt
echo Klucz Windows:
wmic path softwarelicensingservice get OA3xOriginalProductKey
echo(
echo Zrzut do pliku?
echo [1]Tak
echo [2]Nie
set/p"a=>"
if %a%==1 (mv %userprofile%\tempcmd\kluczwin.txt %userprofile%\Desktop\kluczwin.txt & echo Zapisane sorze! & pause > nul & goto kat2)
if %a%==2 (del %userprofile%\tempcmd\kluczwin.txt & echo Okej & pause > nul & goto kat2)
goto :winkod
:arpa
cls

echo O to wszystkie adresy Ip w sieci:
arp -a > %userprofile%\tempcmd\arp.txt
arp -a
echo(
echo Zrzutujemy do pliku na pulpit?
echo [1]Tak
echo [2]Nie
echo(
set/p"a=>"
if %a%==1 (copy %userprofile%\tempcmd\arp.txt %userprofile%\Desktop & goto kat2)
if %a%==2 (goto kat2)
:sztucznainteligencja
cls 
ping localhost -n 4 > nul
echo Jak sie nazywasz?
echo(
set /p "imie=Nazywam sie:"
echo(
ping localhost -n 2 > nul
mkdir %userprofile%\Desktop\Nowakobot\
echo Pan Dolega to jeden z lepszych nauczycieli >> %userprofile%\Desktop\Nowakobot\przeczytajtenplik.txt
echo jest z nim zabawnie na lekcji ale nie ma >> %userprofile%\Desktop\Nowakobot\przeczytajtenplik.txt
echo luzu na tyle duzego aby wychodzic z zajec >> %userprofile%\Desktop\Nowakobot\przeczytajtenplik.txt
echo pustym, osobiscie lubie tam uczeszczac >> %userprofile%\Desktop\Nowakobot\przeczytajtenplik.txt
echo mam dobra frekwencje na tych zajeciach >> %userprofile%\Desktop\Nowakobot\przeczytajtenplik.txt
echo( >> %userprofile%\Desktop\Nowakobot\przeczytajtenplik.txt
echo Z uszanowaniem >> %userprofile%\Desktop\Nowakobot\przeczytajtenplik.txt
echo Daniel Kolodziej >> %userprofile%\Desktop\Nowakobot\przeczytajtenplik.txt
echo auu >> %userprofile%\Desktop\Nowakobot\usuntenplik
mkdir %userprofile%\Desktop\Nowakobot\usuntenfolder
goto sztucznainteligencja2
:sztucznainteligencja2
cls
echo Witaj %imie%, nazywam sie Nowako-bot
echo Wydaj mi polecenie a postaram sie je spelnic
echo(
echo               I    I  
echo           --__________--   
echo(
echo Stworzylem panu kilka przykladowych plikow aby mogl
echo pan potestowac moje mozliwosci.Znajduja sie na pulpicie
echo Prosze zaczac od wpisania man i poproszenia mnie o 
echo przeczytanie pliku pod tytulem przeczytajmnie.txt
echo(
echo(
echo Wpisz man, aby otworzyc okienko z dostepnymi poleceniami
echo (Rozumie pan, man jak w linuxie :-) )
set /p "a=>"
if %a%==man (start cmd /k "@echo off & cls & more %userprofile%\tempcmd\man.txt" & goto sztucznainteligencja2)
if %a%==uruchom (goto SIUru)
if %a%==usun (goto SIUsu)
if %a%==przeczytaj (goto SIprz)
if %a%==touch (goto SItouch)
if %a%==x (goto kat2)
goto sztucznainteligencja2
:SIUru
echo(
echo Co mam panu uruchomic? Prosze podac sciezke
echo(
set/p "dr=>"
echo Dobrze. Zgodznie z zyczeniem uruchamiam %dr%
start %dr%
goto sztucznainteligencja2
:SIUsu
echo(
echo Czy to co mam unicestfic jest sciezka? (T/n)
set/p"a=>"
if%a%==T (goto rmdirr)
if%a%==n (goto delcos)
goto sztucznainteligencja2
:delcos
echo Co mam unicestfic? Prosze wskazac
set/p"plik"=>
echo(
echo Usuwam plik %plik%
del /F/Q %plik%
:rmdirr
echo(
echo Jaki folder mam wygonic z dysku tego komputera? Prosze wskazac
echo(
set/p"rmd=>"
echo Dobra, usuwam %rmd%
RMDIR /Q/S %rmd%
goto :sztucznainteligencja2
:SIprz
echo(
echo Jaki plik mam przeczytac? Prosze podac sciezke
echo(
set/p"czyt=>"
echo Okej, w pliku %czyt% jest napisane:
echo(
type %czyt%.txt
pause >nul
goto :sztucznainteligencja2
:SItouch
echo(
echo Podaj sciezke gdzie mam dotknac pliku
echo(
set/p"touch=>"
echo :) > %touch%
echo Juz
pause > nul
goto sztucznainteligencja2
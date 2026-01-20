# Minus-Type Vigibot Robot for Botkins
<details open>
<summary>[Verberge diesen Abschnitt]</summary>

## Table of Contents
- [Generelle Info](#generelle-info)
- [Voraussetzungen](#voraussetzungen)
- [Teileliste](#teileliste)
- [Minus-Type Assembly](#minus-type-assembly)  
    - [1. Software Install](#1-software-install)  
    - [2. Vigibot Online Configuration](#2-vigibot-online-configuration)  
    - [3. UPS Solder Bridge](#3-ups-solder-bridge)  
    - [4. Servo Plug Split](#4-servo-plug-split)  
    - [5. Power Distribution Assembly](#5-power-distribution-assembly)  
    - [6. GPIO Wiring](#6-gpio-wiring)  
    - [7. Motor Base Assembly](#7-motor-base-assembly)  
    - [8. Head Assembly](#8-head-assembly)  
    - [9. Gripper Assembly](#9-gripper-assembly)  
    - [10. Final Assembly](#10-final-assembly)  
    - [11. Optional Assemblies](#11-optional-assemblies)  
    - [12. Additional Assembly Guides](#12-additional-assembly-guides)
    - [13. Funktionstest](#13-funktionstest)
- [Troubleshooting](#troubleshooting)
- [Credits](#credits)

## Generelle Info

Dieser Leitfaden behandelt den Botkins V2. Weitere Verbesserungen sind in Arbeit und werden bald publiziert. Es ist geplant, ein komplettes Kit für Maker anzubieten. Es gibt aber keine Hürde oder Nachteil, einen Bot nach dieser Anleitung zu bauen. Die Funktionalität für die Patienten wird die selbe bleiben.

Erfahre mehr über das Botkins Charity Project:
- [botkins.ch ](https://botkins.ch)
- [Hackaday Page](https://hackaday.io/project/180558-botkins-charity-project)  

Erfahre mehr über Vigibot:
Das französische Roboter-Projekt, auf dem Botkins aufgebaut ist. Sie stellen die Navigation zur Verfügung
- [Robot Maker Post](https://www.robot-maker.com/forum/topic/13010-what-is-vigibot-quest-ce-que-vigibot/)
- [Drive a robot Vigibot.com](https://www.vigibot.com/)

Als Basis dient die Standard Vigibot Minus-Type Version (siehe Bild, ein reines Botkin Bild folgt). Botkins ist zusätlich mit einem LTE/4G Stick ausgerüstet und kommt ohne Seitenarme aus.

![Standard Minus](images/Minus%20render-2.png)

- Wenn du für Botkins einen Roboter bauen möchtest, melde dich bei uns und wir senden dir den Onboarding Process. 
- Als Maker kannst du die Farbe der 3D-gedruckten Teile selber wählen, sie ist nicht vorgegeben.
- Der Bau Ihres ersten Roboters kann etwa 10 Stunden dauern, möglicherweise auch länger. Nach etwas Übung dauert der Bau etwa 3 Stunden pro Roboter.
- Einige Teile von Aliexpress können bis zu 5 Wochen bis zur Lieferung benötigen. Derzeit (2025) schlägt die Einstellung der Zahlungsmethode auf PayPal fehl, wenn "Sorry, some items are not available", Kreditkare funktioniert. Wähle [E-Mail order updates](https://www.aliexpress.com/p/edm-setting/index.html) vor dem Checkout ab, sonst bekommst du pro Bestellposition 3-5 Mails.

### Voraussetzungen
Du benötigst:
- Lötkolben (für die 4 Motoren und UPS-Brücke). (Wenn du nicht löten möchtest, kann vielleicht ein anderer Maker die Teile für löten).
- Internetzugang (SIM-Karte mit mobilen Daten, WLAN oder Ethernet-LAN), PC.
- Ein 3D-Drucker ist derzeit nicht erforderlich. Wenn du die 3D-Teile selbst drucken möchtest, werden M2- und M2,5-Schrauben und Muttern, die nicht in dieser Botkins-Teileliste aufgeführt sind, benötigt. Du findest sie in der vorgelagerten Vigibot-Teileliste in jedem der 3D-gedruckten Bausätze.
- Werkzeuge: Schraubendreher, verstellbarer Schraubenschlüssel/Gabelschlüssel, Pinzette, Klebeband, ...

#### Geplante Verbesserungen am Leitfaden
Wir versuchen, den Bau der Botkins so einfach wie möglich zu gestalten, aber dieser Leitfaden ist nicht ganz so klar und einfach, wie wir es uns wünschen würden.
Verbesserungsvorschläge und Anregungen zu diesem Leitfaden sind sehr willkommen. Hilf uns, diesen Leitfaden durch Pull-Anfragen und andere Mittel zu verbessern. 

#### Nächste Schritte (für Maker, die zur Verbesserung dieses Leitfadens beitragen möchten)
Bitte teile uns defekte Links oder Mängel (z. B. unklare oder fehlende Schritte) mit. 
- [x] Copy the parts from external guides into this guide and adjust accordingly for this specific build.
- [x] Translate the parts of the external guide from french to english.
- [ ] Move annotations and instructions that are littered through the partlist further down into the specific sections of the assembly guide. [to be done by fire_ned]
- [ ] extend the troubleshooting table
  - [ ] more scenarios
  - [ ] add pictures / gifs of led blinking patterns
  - [ ] perhaps label whether that specific problem can happen during assembly (for makers) or during everyday use (for patients).
- [ ] add more function tests

</details>

## Teileliste
Zur einfacheren Lesbarkeit schlagen wir eine Bezugsquelle vor und listen Alternativen auf, wo vorhanden. Es ist euch selbstverständlich freigestellt, wo ihr die Teile beschafft.
Die meisten Teile können auch bei [robot-maker.com](https://www.robot-maker.com) beschafft werden

<details open>
<summary>[Verberge diesen Abschnitt]</summary>

### Hauptteile

| Stk | Benennung | Shop | Alternative* |
|---|---|---|---|
| 1 | Raspberry Pi 3B+ (or 3B), 1GB or 2GB | [Link](https://www.pi-shop.ch/raspberry-pi-3-model-b/) | [Alternative](https://www.galaxus.ch/de/s1/product/raspberry-pi-3-model-b-entwicklungsboard-kit-8024081) |
| 1 | Unlocked ZTE MF79 4G / LTE Stick | [Link](https://aliexpress.com/item/1005005844914823.html) | Huawei E3372h (Modell -153, -320 oder -607  |
| 1 | USB - USB 90° adapter, Version "Down" | [Link](https://www.aliexpress.com/item/1005006057729975.html) | fehlt |
| 1 | USB Microphone "Super AI". Die meisten anderen verfügbaren USB-Mikrofone sind leider entweder zu leise oder zu laut| [Link](https://www.robot-maker.com/shop/composants/446-microphone-usb-446.html) | [Modell BY-M100UA](https://aliexpress.com/item/1005004133896137.html) |
| 1 | 8-64GB MicroSD Karte | [Link](https://www.pi-shop.ch/raspberry-pi-a2-class-sd-card-64gb) | [Alternative](https://www.galaxus.ch/de/s1/product/wd-wdd032g1p0c-microsdhc-32-gb-u1-uhs-i-speicherkarte-13745268) |
| 1 | Falls nicht vorhanden: CardReader für microSD | [Link](https://www.pi-shop.ch/sandisk-card-reader-usb-3-0-reader) | nach Belieben |
| 1 | Weitwinkelkamera mit Infrarot-Filter | [Link](https://www.robot-maker.com/shop/capteurs/311-camera-raspberry-pi.html) | nicht wirklich |
| 1 | 30cm Verbindungskabel für Kamera (als Ersatz für kurzes Original) | [Link](https://www.robot-maker.com/shop/composants/329-nappe-raspberry-pi.html#/92-longueur-30cm) | nach Belieben |
| 1 | Li-Ion Akku 1S2P 6800mAh | [Link](https://www.robot-maker.com/shop/alimentation/383-batterie-lithium-ion-1s2p-ncr-383.html) | 5-7Ah mit DuPont Stecker |
| 2 | USB-Ladegerät (9V/2A oder 12V/1.6A+) | [Link](https://aliexpress.com/item/1005009579749293.html) | tbd |
| 1 | USB Kabel magnetisch, 1m für den UPS| [Link](https://www.aliexpress.com/item/4001224959039.html) | nach Belieben |
| 1 | USB-A zu USB-C Kabel, 1m | [Link](https://aliexpress.com/item/1005008279278619.html) | nach Belieben |
| 1 | Active Buzzer 3V/5V, verbinde zwischen GND (kurzer Pin) und GPIO 18 | [Link](https://www.robot-maker.com/shop/accessoires-robotiques/487-buzzer-5v-487.html) | [Alternative](https://www.aliexpress.com/item/4000829554492.html) |
| 1 | Etwas Klett-Tape zum Befestigen der Batterie | tbd | - |
| 1 | Sekundenkleber für ??? | tbd | - |
| 1 | Strommangement vigiUPSv2 | [Link](https://www.robot-maker.com/shop/alimentation/429-ups-hat-pour-raspberry-pi-429.html) | siehe "Hinweise zu Alternativen" |

Hinweis zum vigiUPSv2: Installiere die 2x Kamera-LEDs nicht, da sonst das Lademodul möglicherweise nicht mehr funktioniert, da der Akku aufgrund des zu hohen Leerlaufstromverbrauchs möglicherweise nie 100 % erreicht.

### *Hinweise zu Alternativen:
Für gewisse Bauteile gibt es geprüfte Alternativen mit entsprechender Beschreibung.
<details>
<summary>[öffne diesen Abschnitt]</summary>
  
#### 4G / LTE Stick: Huawei E3372h

  - Das neueste Modell "e3372h-325 (Brand: Brovi)" funktioniert nicht. Die älteren Modelle werden nicht mehr hergestellt.
  - Finden Sie ein passendes Modell auf Secondhand-Plattformen. Das Modell muss „e3372h-153”, „e3372h-320” oder „e3372h-607” sein. Das Modell ist auf dem SIM-Steckplatz unter der Abdeckung aufgedruckt.
  - Die funktionierenden e3372h-Modelle können zwei verschiedene Firmwares haben. (1) Die „hilink”-Firmware, die Plug&Play-fähig ist und dem Pi eine IP-Adresse im Bereich 192.168.8.X zuweist. (2) Die „stick”-Firmware, die über ssh Verbindung via Terminal konfiguriert werden muss. (Pi-Kenntnisse nötig)
 
#### UPS Alternativen

Seit Dezember 2025 wird das Geekworm UPS3 leider nicht mehr hergestellt.

- vigiUPSv3 sollte in einigen Monaten verfügbar sein. Bis dahin: Version aus der Teileliste (A) oder mit Mehraufwand (B)

Derzeit stehen folgende Alternativen zur Verfügung:

**A. vigiUPSv2**

Version aus der Teileliste, siehe oben

**B. Waveshare UPS hat (D)**

- https://aliexpress.com/item/1005006100404260.html

Funktioniert, benötigt jedoch einige Änderungen:

<img src="images/ups_alternatives/1_Ups_power.jpg" alt="1_Ups_power" style="width: 49%"/>

- Löte die Stromkabel für Servos und Motoren an den abgebildeten Stellen an.
- Gib einen Tropfen Sekundenkleber hinzu, um die Drähte auf der USV-Platine zu befestigen.
- Kaufe 2x 21700 Liion-Zellen anstelle des Akkus aus der Teileliste.
- Kaufe zusätzlich 4x 20 mm M2,5 Metall-Sechskantständer.
- Nimm 1x abgewinkelten USB-Stecker „toUp“ anstelle des „toDown“ aus der Teileliste.

Um die Spannungs- und Strommessungen zum Laufen zu bringen, verbinde dich per ssh mit dem Roboter und konfiguriere ihn:

B.1) Spannungsmessung:

<img src="images/ups_alternatives/3_Ups_sys_67.jpg" alt="3_Ups_sys_67" style="width: 49%"/>

```
sudo nano /usr/local/vigiclient/sys.json
```
- Ändern in `"INA219ADDRESS": 67,`

B.2) Die Strommessung funktioniert auch, aber ich würde empfehlen, diesen Schritt zu überspringen, da er nicht so wichtig ist.

<img src="images/ups_alternatives/4_Ups_wrench.jpg" alt="4_Ups_wrench" style="width: 49%"/><img src="images/ups_alternatives/5_Ups_I_conf.jpg" alt="5_Ups_I_conf" style="width: 49%"/>  
<img src="images/ups_alternatives/6_Ups_I_client.jpg" alt="6_Ups_I_client" style="width: 49%"/>

- Nimm die Änderungen wie in den Bildern gezeigt vor
- Da der Shunt-Widerstand 1/10 des üblicherweise verwendeten Widerstands beträgt und Vin+ und Vin- vertauscht sind, muss der Code in `/usr/local/vigibot/vigiclient.js` geringfügig geändert werden. Ich bin mir nicht sicher, ob das sinnvoll ist, da eine Änderung des Codes meines Wissens nach zukünftige automatische Vigibot-Updates deaktiviert.

</details>

### Teile für Stromverteilung

| Stk | Benennung | Shop |
|---|---|---|
| 1 | Splitter Board | [Link](https://www.aliexpress.com/item/1005006042011391.html) |
| 1 | PH2.0 zu 2 Pin Kabel 10cm | [Link](https://www.aliexpress.com/item/1005002901249753.html) |
| 8-16 | DuPont-Kabel 20 oder 30cm F-F| [Link](https://www.robot-maker.com/shop/composants/42-nappe-40-fils-femelle-femelle-42.html) |
| 5 | Einzelne DuPont Pin Hüllen F | [Link](https://aliexpress.com/item/33035707563.html) |

### Basisplatte Motor


| Stk | Benennung | Shop |
|---|---|---|
| 1 | Komplettes Kit mit Druckteilen, <br> Schrauben, Muttern und Distanzbolzen | [Link](https://www.robot-maker.com/shop/kits-robots/425-kit-chassis-4wd-minus-425.html) |
| 4 | Pololu 100:1 Getriebemotoren HP 6V <br> mit Kabeln zum selber löten | [Link](https://www.robot-maker.com/shop/moteurs-et-actionneurs/384-moteur-pololu-300-rpm.html) |
| 4 | Pololu Motorhalter | [Link](https://www.robot-maker.com/shop/elements-mecaniques/385-support-moteur-pololu-long.html) |
| 4 | Pololu Räder 40x7mm <br> es gibt Radmodelle bei den 3D Daten <br> Durchmesser beachten kleiner 40mm| [Link](https://www.robot-maker.com/shop/elements-mecaniques/346-roue-pololu-40mm.html) |
| 1 | Feetech 2-Kanal Motortreiber <br> Kabel inkl. | [Link](https://www.robot-maker.com/shop/drivers-d-actionneurs/280-driver-convertisseur-moteur-cc-servomoteur.html) |

Die Pololu Artikel gibt es auch direkt bei Pololu.

### Kopf-Teile

| Stk | Benennung | Shop |
|---|---|---|
| 1 | Komplettes Kit mit Druckteilen, <br> Schrauben, Muttern und Distanzbolzen | [Link](https://www.robot-maker.com/shop/kits-robots/88-kit-tourelle-pan-tilt-88.html) |
| 1 + 1 Reserve | DM-S0090MD 270° Metall Getriebe Servo 9g <br> (Kopf Schütteln) | [Link](https://aliexpress.com/item/1005010339946695.html) |
| 1 + 1 Reserve | 180° Servo 9g <br> (Nicken)| [Link](https://www.robot-maker.com/shop/moteurs-et-actionneurs/18-servomoteur-9g-18.html) |

Hinweis: Verwende die mit den Servos mitgelieferten langen Schrauben, um die Servos auf dem Servohalter zu befestigen.

### Greifer-Teile

| Stk | Benennung | Shop |
|---|---|---|
| 1 | Komplettes Kit mit Druckteilen, <br> Schrauben, Muttern und Distanzbolzen | [Link](https://www.robot-maker.com/shop/kits-robots/423-kit-pince-minus-423.html) |
| 2 + 1 Reserve | 180° Servo 9g <br> (Nicken)| [Link](https://www.robot-maker.com/shop/moteurs-et-actionneurs/18-servomoteur-9g-18.html) |

Hinweis: Verwende die mit den Servos mitgelieferten langen Schrauben, um die Servos auf dem Servohalter zu befestigen.

### Optionale Teile

Wenn auch das Nicken und das Heben/Senken des Greifers mit Metall-Getriebe Servos gelöst werden soll, füge zwei weitere dieser Servos hinzu: [Link](https://aliexpress.com/item/1005010339946695.html).
Funktioniert nicht für das Auf/Zu des Greifers.

Je nach Modell des Servos kann es sein, dass die Druckteile angepasst werden müssen. Die CAD Modelle der Druckteile liegen vor. Ihr dürft sie herunterladen und für eure Zwecke anpassen.
 
### Druckteile, falls ihr selber druckt
In der Ordnerstruktur befinden sich die Druckteile in verschiedenen Formaten. Hier eine Auflistung der benötigten Teile in den jeweiligen Stückzahlen

| Stk | Beschreibung | Benennung im Ordner |
|---|---|---|
| 1 | USB bracket holder | stl/usb_bracket.stl |

### Kleinteile, falls ihr selber druckt

| Stk | Benennung | Dimmensionen | wird verwendet für |
|---|---|---|---|
| 4 | Distanzbolzen M2.5 | Männchen 12mm | Pi <> UPS |
| 4 | Distanzbolzen M2.5 | Männchen 25mm | UPS <> Mittelplatte |
| 4 | Distanzbolzen M2.5 | Weibchen 10mm | Mittelplatte <> Motorplatte |
| 4 | Distanzbolzen M2.5 | Männchen 5mm | Pi <> Topplatte |
| 10 | Schraube M2.5 | 6mm | 4x Topplatte <br> 4x Motorplatte <br> 2x Mittelplatte |
| 2 | Schraube M2.5 | 8 oder 10mm | für Motortreiber |
| 2 | Schraube M2.5 | 10 oder 12mm | Pan Plate <> Roboter |
| 2 | Mutter M2.5 | - | 4x Motorplatte <br> 2x Mittelplatte <br> 2x Pan Plate|
| 4 | Schraube M2| 20mm | 4x Kamera <> Kopf |
| 5 | Schraube M2| 14 oder 16mm | 2x 180° Servo <> Kopf <br> 5x Greifer|
| 1 | Schraube M2| 10mm | 1x Greifer|
| 3 | Schraube M2| 8mm | 3x Rückplatte <> Mittelplatte <br> 2x 270° Servo <> Pan Plate <br> 3x Greifer|
| 2 | Schraube M2| 5 oder 6mm | ? |
| 15 | Mutter M2| - | 3x Rückplatte <> Mittelplatte <br> 8x Kamera <br> 2x 270° Servo <> Pan Plate <br> 2x Greifer|

</details>

# Minus-Type Zusammenbau
<details open>
<summary>[Verberge diesen Abschnitt]</summary>

## 1. Software Installieren
<img src="images/Minus_assembly_Botkins/pi_cam.jpg" alt="pi_cam" style="width: 49%"/><br>

Füge deinen Roboter bei Vigibot ganz einfach hinzu.
Du benötigst: einen Rapsery Pi (empfohlen 3B+), eine 16 oder 32 GB microSD Karte, eine Spannungsversorgung für den Pi, die Kamera mit dem passenden Kabel.
Mit wenigen einfachen Schritten kannst du deine Kamera auf [vigibot.com](https://www.vigibot.com/) live schalten:

- Erstelle auf [vigibot.com](https://www.vigibot.com/) einen Account.
-	Klick auf "Management" und dann "Add a Robot". Wähle einen Namen für deinen Robter, den Roboter Typ Standard und ein Passwort für den Roboter. Das brauchen wir weiter unten gleich wieder, also merken.
-	Lade das Image runter: vigimage.zip und entpacke die ZIP-Datei.
-	Um die Image-Datei auf deine microSD Karte schreiben zu können, musst du diese mit dem PC verbinden (Kartenleser) und ein Tool zum Schreiben verwenden. Ich empfehle den Raspberry Pi Imager. Runterladen, installieren.
-	Andere Tools wie das HDD Raw Copy Tool oder win32diskImager gehen auch. ApplePiBacker (Mac) oder balena etcher (Für Windows, Mac und Linux)
-	Hinweis: Wenn du eine Karte grösser 32GB verwendest, musst du im Pi Imager zuerst das Modell 3 wählen, dann beim Betriebssystem löschen, um die Karte in FAT32 zu formatieren.
-	Nach dem Ausführen des Pi Imager musst du das Modell des Pis auswählen, bei uns meist 3B+. Unter Betriebssystem wählst du zuunterst „Eigenes Image auswählen“, suchst das vigimage.img und wählst es aus. Dann wählst du die SD Karte als Zielmedium und bestätigst eine allfällige Überschreibewarnung. Starte den Schreibvorgang. Das dauert nun je nach Schreibgeschwindigkeit der Karte einige Minuten.
-	Wenn das gemacht ist, öffne den /boot Ordner deiner SD Card. Windows: Sollte im Explorer der /boot Ordner nicht erscheinen, Drücke Win+R und gibt diskmgmt.msc ein. So gelangst du in die Datenträgerverwaltung. Wenn dort eine 100MB Partition gelistet ist, gib ihr über Rechtsklick > Laufwerkbuchstabe und -pfade ändern einen noch freien Buchstaben.
-	Ändere die Datei "wpa_supplicant.conf" mittels Rechtsklick und "in Editor anpassen" (Ändere die SSID „Demo“ und das Standardpasswort „Default“ entsprechend dem WLAN-Netzwerk, mit dem sich der Botkin verbinden soll. Tipp: Wenn (noch) kein 4G / LTE Stick vorhanden ist, kann mit dem Smartphone ein Hotspot eingerichtet werden. Vorteil: man kann den Botkin schon mitnehmen, wenn ein entsprechender Hotspot "mitreist". Nachteil: um auf den PI zuzugreifen via ssh, muss man im gleichen WLAN sein)
-	Ändere die Datei "robot.json" gemäss dem zuvor gewählten Roboternamen und Roboterpasswort. ( Ändere den „Demo”-Benutzernamen und das „Standard”-Passwort) 
-	Installiere die SD-Karte im Raspberry Pi mit der installierten Kamera und schalte ihn dann ein (aufgrund des Kompilierungsprozesses dauert der erste Start einige Minuten, bevor der Roboter auf der Website erscheint (etwa 10 Minuten): Schalte den Raspberry Pi während dieser Zeit nicht aus).

Falls du auf den Pi zugreifen willst:
•	Der Pi und dein PC müssen in gleichen Netzwerk sein. Finde die IP Adresse des Pi raus (Verbindung über deinen Router > Verbundene Geräte)
•	Win+R > „Powershell“ > Ausführen.
•	Gib im Fenster ein: ssh pi@IP-ADRESSE (Ersetze die Adresse mit der Adresse des Pi, zB 192.168.1.146)
•	Das Terminal wird dich fragen, ob du sicher bist, eine Verbindung herstellen zu wollen. Schreibe „yes“ und bestätige
•	Das Passwort ist „raspberry“, wenn du es nicht anderweitig vergeben hast

- LTE/4G Mobile Data Stick:
  - An einen Windows- oder Mac-PC anschliessen (die Webseite 192.168.8.1 wird geöffnet oder die App auf dem Speichermedium gestartet) und Datenroaming aktivieren.
- OPTIONAL: Für Wi-Fi kannst du in der Datei "/boot/wpa_supplicant.conf" auf der Speicherkarte Netzwerkname und Schlüssel eingeben (Datei Rechtsklick "Im Editor bearbeiten") Supertrick: Erstelle mit deinem Smartphone einen Hotspot. Dort kannst du Name und Passwort frei wählen. Schreibe die Verbindungsdaten auf den Roboter. So kann jeder, der einen Hotspot mit diesen Verbindungsdaten erstellt, dem Botkin ein Netzwerk bieten. Du kannst so theoretisch sogar den 4G / LTE Stick sparen.
- Unplug power cable. During assembly, new parts can be connected (power off robot) and tested.

## 2. Vigibot Online Konfiguration
#### Konfiguration der Fernsteuerung über Vigibot
Klicke auf der Vigibot Seite -> `Management` -> Werkzeug-Symbol (Remote controller configuration) -> `Modifications made` -> Wechsle von `Form` zu `Text` -> ersetze die `{}` mit dem folgenden Code:
<details>
<summary>[SHOW CODE BLOCK]</summary>

```JSON
{
  "BUTTONS": [
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "avancer",
      "ICON1": "",
      "TEXT": "Forward",
      "ACTION": "IncrementForward",
      "SPECIAL": "yp"
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "suivant",
      "ICON1": "",
      "TEXT": "Next tool",
      "ACTION": "NextTool",
      "SPECIAL": ""
    },
    {
      "ICON0": "sirene0",
      "ICON1": "sirene1",
      "TEXT": "Buzzer",
      "ACTION": "Switch2",
      "SPECIAL": "i2"
    },
    {
      "ICON0": "lumicont0",
      "ICON1": "lumicont1",
      "TEXT": "Maximize the brightness and contrast",
      "ACTION": "Switch3",
      "SPECIAL": "i3"
    },
    {
      "ICON0": "gauche",
      "ICON1": "",
      "TEXT": "Left",
      "ACTION": "IncrementTurnLeft",
      "SPECIAL": "zn"
    },
    {
      "ICON0": "stopper",
      "ICON1": "",
      "TEXT": "Click to stop or drag to drive",
      "ACTION": "Brake",
      "SPECIAL": "st"
    },
    {
      "ICON0": "droite",
      "ICON1": "",
      "TEXT": "Right",
      "ACTION": "IncrementTurnRight",
      "SPECIAL": "zp"
    },
    {
      "ICON0": "centrer",
      "ICON1": "",
      "TEXT": "Reset tools",
      "ACTION": "ResetTools",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "reculer",
      "ICON1": "",
      "TEXT": "Backward",
      "ACTION": "IncrementBackward",
      "SPECIAL": "yn"
    },
    {
      "ICON0": "capture",
      "ICON1": "",
      "TEXT": "Capture the last seconds of video",
      "ACTION": "",
      "SPECIAL": "capture"
    },
    {
      "ICON0": "precedent",
      "ICON1": "",
      "TEXT": "Previous tool",
      "ACTION": "PreviousTool",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "lock0",
      "ICON1": "lock1",
      "TEXT": "Unlink remote control and video",
      "ACTION": "",
      "SPECIAL": "switchlock"
    },
    {
      "ICON0": "osd0",
      "ICON1": "osd1",
      "TEXT": "Toggle OSD",
      "ACTION": "",
      "SPECIAL": "switchosd"
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "dodo",
      "ICON1": "",
      "TEXT": "Put on standby",
      "ACTION": "Sleep",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "vide",
      "ICON1": "",
      "TEXT": "",
      "ACTION": "",
      "SPECIAL": ""
    },
    {
      "ICON0": "exit",
      "ICON1": "",
      "TEXT": "Restart the client process",
      "ACTION": "ExitRobot",
      "SPECIAL": "confirm"
    },
    {
      "ICON0": "reboot",
      "ICON1": "",
      "TEXT": "Reboot the system",
      "ACTION": "RebootRobot",
      "SPECIAL": "confirm"
    },
    {
      "ICON0": "poweroff",
      "ICON1": "",
      "TEXT": "Power off the system",
      "ACTION": "PowerOffRobot",
      "SPECIAL": "confirm"
    }
  ],
  "COMMANDS": [
    {
      "NAME": "Turret control",
      "CAMERA": 0,
      "MIXING": 0,
      "GAINX": 80,
      "GAINY": 80
    },
    {
      "NAME": "Gripper control",
      "CAMERA": 0,
      "MIXING": 1,
      "GAINX": 80,
      "GAINY": 80
    },
    {
      "NAME": "low bandwidth 250 Kbps",
      "CAMERA": 1,
      "MIXING": 0,
      "GAINX": 80,
      "GAINY": 80
    }
  ],
  "TX": {
    "COMMANDS16": [
      {
        "NAME": "Turret X",
        "INIT": 0,
        "SCALEMIN": -180,
        "SCALEMAX": 180,
        "MIN": -90,
        "MAX": 90,
        "CLAMPMIN": -20,
        "CLAMPMAX": 20,
        "SIGNED": true,
        "NBDIGITS": 2,
        "UNIT": "°"
      },
      {
        "NAME": "Turret Y",
        "INIT": 0,
        "SCALEMIN": -180,
        "SCALEMAX": 180,
        "MIN": -55,
        "MAX": 55,
        "CLAMPMIN": -40,
        "CLAMPMAX": 20,
        "SIGNED": true,
        "NBDIGITS": 2,
        "UNIT": "°"
      },
      {
        "NAME": "Gripper X",
        "INIT": 0,
        "SCALEMIN": -180,
        "SCALEMAX": 180,
        "MIN": -30,
        "MAX": 65,
        "CLAMPMIN": -20,
        "CLAMPMAX": 65,
        "SIGNED": true,
        "NBDIGITS": 2,
        "UNIT": "°"
      },
      {
        "NAME": "Gripper Y",
        "INIT": 0,
        "SCALEMIN": -180,
        "SCALEMAX": 180,
        "MIN": -40,
        "MAX": 80,
        "CLAMPMIN": 0,
        "CLAMPMAX": 45,
        "SIGNED": true,
        "NBDIGITS": 2,
        "UNIT": "°"
      }
    ]
  }
}
```
</details>

#### Hardware Konfiguration
Klicke auf der Vigibot Seite -> `Management` -> Zahnradsymbol (Hardware configuration) -> `Modifications made` -> Wechsle von `Form` zu `Text` -> ersetze `{}` mit dem folgenden Code:
<details>
<summary>[SHOW CODE BLOCK]</summary>

```JSON
{
  "CAMERAS": [
    {
      "TYPE": "",
      "SOURCE": 0,
      "WIDTH": 640,
      "HEIGHT": 480,
      "FPS": 30,
      "BITRATE": 1500000,
      "ROTATE": 0,
      "BRIGHTNESS": 50,
      "CONTRAST": -5,
      "BRIGHTNESSBOOST": 80,
      "CONTRASTBOOST": 100
    },
    {
      "TYPE": "",
      "SOURCE": 0,
      "WIDTH": 640,
      "HEIGHT": 480,
      "FPS": 30,
      "BITRATE": 250000,
      "ROTATE": 0,
      "BRIGHTNESS": 50,
      "CONTRAST": -5,
      "BRIGHTNESSBOOST": 80,
      "CONTRASTBOOST": 100
    }
  ],
  "COMMANDS8": [
    {
      "RAMPUP": 0,
      "RAMPDOWN": 0,
      "RAMPINIT": 0,
      "FAILSAFE": true,
      "SLEEP": true
    },
    {
      "RAMPUP": 15,
      "RAMPDOWN": 15,
      "RAMPINIT": 15,
      "FAILSAFE": true,
      "SLEEP": true
    },
    {
      "RAMPUP": 15,
      "RAMPDOWN": 15,
      "RAMPINIT": 15,
      "FAILSAFE": true,
      "SLEEP": true
    }
  ]
}
```
</details>

## 3. UPS Solder Bridge
<img src="images/Minus_assembly_Botkins/ups_poff_1.jpg" alt="ups_poff_1" style="width: 49%"/>

- A: Remove `POFF` solder bridge<br>

<img src="images/Minus_assembly_Botkins/ups_poff_2.jpg" alt="ups_poff_2" style="width: 49%"/><br>

- set the `AUTO-UPS` switch to `OFF`

## 4. Servostecker teilen
<img src="images/Minus_assembly_Botkins/servo_assembly_1.jpg" alt="servo_assembly_1" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/servo_assembly_2.jpg" alt="servo_assembly_2" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/servo_assembly_3.jpg" alt="servo_assembly_3" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/servo_assembly_4.jpg" alt="servo_assembly_4" style="width: 49%"/>

- Die Servos werden in dieser Version über die Spannungsversorgungsprint mit Strom versorgt. Die Signalleitungen werden direkt auf dem Pi eingesteckt. Dazu müssen die Kabel "geteilt" werden.
- Hinweis zu Servokabelfarben: Pluspos ist immer rot. GND ist entweder schwarz oder braun. Die Signalleitung ist entweder orange, gelb, weiss oder blau. Kompliziert, ich weiss.
- Erstelle nun für jedes Servo einen Stecker mit zwei Polen (+ und GND) und eine einpolige Signalleitung. Um die Stecker einstecken zu können, entfernen wir die Kabel inkl. gecrimpte Buchsen und packen sie in neu Zweier-, resp. Einer-Kunststoffhüllen. Siehe Teileliste, die DuPont Buchsen. 
- Split the signal (orange or white) wire off the 4x servos and 1x motor driver.

## 5. Spannungsversorgung
<img src="images/Minus_assembly_Botkins/pdb_assembly_1.jpg" alt="pdb_assembly_1" style="width: 49%"/> <img src="images/Minus_assembly_Botkins/pdb_assembly_3.jpg" alt="pdb_assembly_3" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/pdb_assembly_4.jpg" alt="pdb_assembly_4" style="width: 49%"/><br>

- Wenn nötig, Polarität des PH2.0 Kabels anpassen, je nach USP<br>

<img src="images/Minus_assembly_Botkins/pdb_assembly_5.jpg" alt="pdb_assembly_5" style="width: 49%"/>

- Baue den UPS auf den Raspberry Pi.
- Update 26.05.2025: Schneide den Batteriestecker ab (schneide + und - nacheinander ab, um die Batterie nicht kurzzuschliessen) und löte ihn an die Batterielötpads der USV. Die Servos und Motoren können wie auf den Fotos gezeigt mit Strom versorgt werden. Grund: Der Roboter kann sich zufällig oder bei nur teilweise geladener Batterie ausschalten. Ein weiteres Symptom ist, dass die gemessene Batteriespannung von 4,2 V auf 3,8 V oder weniger abfällt, wenn das Gerät vom Stromnetz getrennt wird. Es scheint, dass der kombinierte Widerstand der Batterieleistung, die über drei Stecker läuft, zu hoch ist.

## 6. Signalleitungen verbinden
<img src="images/Minus_assembly_Botkins/wiring_assembly_1.jpg" alt="wiring_assembly_1" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/pinout_ups.png" alt="pinout_ups" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/wiring_assembly_3.jpg" alt="wiring_assembly_3" style="width: 49%"/><br>

Nun werden die Servos an der richtigen Stelle auf dem Pi eingesteckt:

- A: Kopf Schütteln : Head pan [x] `GPIO 5 (physical pin 29)`<br>
- B: Nicken: Head tilt [y] `GPIO 6 (physical pin 31)`<br>
- C: Greifer auf/zu: Gripper claw [x] `GPIO 7 (physical pin 26)`<br>
- D: Greifer heben/senken: Gripper tilt [y] `GPIO 8 (physical pin 24)`<br>

<img src="images/Minus_assembly_Botkins/wiring_assembly_5.jpg" alt="wiring_assembly_5" style="width: 49%"/><br>

- A: ESC Motortreiber
  - Linke Motoren `GPIO 26 (physical pin 37)`
  - Rechte Motoren `GPIO 27 (physical pin 13)`
 
Sollte ein Motor eine falsche Drehrichtung haben, Polarität der Motorkabel am Treiber andersherum anschliessen.

- Verwende das magnetische USB-Kabel, um die USV mit Strom zu versorgen. (Hinweis: Verwende ab sofort den Anschluss auf der USV-Platine – nicht auf der Raspberry Pi-Platine.)
- Testen Sie die Steuerung jedes Servos von Vigibot. 
- Bevor Sie fortfahren, drücke `Stop ■` Drücke die Taste, um alle Servos zu zentrieren. Fahre den Bot über die Taste mit dem durchgestrichenen Steckersymbol im Vigibot Kontrollfeld herunter und ziehe den Akku und das USB-Kabel ab.

## 7. Zusammenbau Motorplatte

Benötigtes Material, enthalten in den Kits oder anhand der Kleinteile-Liste

  - Motorplatte
  - 4 Motoren mit angelöteten Kabeln
  - 4 Motorhalter mit Schrauben und Muttern
  - Motortreiber mit Schrauben und Muttern

1. Befestigung der Motoren mit Motorhalten, je 2 Schrauben und 2 Muttern (von unten)
<img src="images/Minus%20assembly/Middle%20plate%20assembly-1.png" alt="Middle plate assembly-1" style="width: 49%"/> <img src="images/Minus%20assembly/Middle%20plate%20assembly-2.png" alt="Middle plate assembly-2" style="width: 49%"/>
2. Motortreiber mit zwei Schrauben und zwei Muttern an der Motorplatte befestigen
<img src="images/Minus%20assembly/Middle%20plate%20assembly-3.png" alt="Middle plate assembly-3" style="width: 49%"/> <img src="images/Minus%20assembly/Middle%20plate%20assembly-4.png" alt="Middle plate assembly-4" style="width: 49%"/>
3. Distanzbolzen setzen. Jetzt entscheidet sich, wo vorne und hinten wird am Roboter. Hinten 
<img src="images/Minus%20assembly/Middle%20plate%20assembly-5.png" alt="Middle plate assembly-5" style="width: 49%"/> <img src="images/Minus%20assembly/Middle%20plate%20assembly-6.png" alt="Middle plate assembly-6" style="width: 49%"/>  
<img src="images/Minus%20assembly/Middle%20plate%20assembly-7.png" alt="Middle plate assembly-7" style="width: 49%"/> <img src="images/Minus%20assembly/Middle%20plate%20assembly-8.png" alt="Middle plate assembly-8" style="width: 49%"/>  
<img src="images/Minus%20assembly/Middle%20plate%20assembly-9.png" alt="Middle plate assembly-9" style="width: 49%"/> <img src="images/Minus%20assembly/Middle%20plate%20assembly-10.png" alt="Middle plate assembly-10" style="width: 49%"/>

- The basic motor base assembly. Guide in French only. NOTE: the following guide is for a different robot type (Turtle-type), only follow the guide to build the motor base `Assemblage de la plaque intermédiaire (motorisation), Etape 1 - 4`: https://www.robot-maker.com/forum/topic/13155-proposition-photos-montage-de-la-base-roulante-4wd-turtle-type/


## 8. Head Assembly
#### Pan Turret Assembly
<img src="images/Minus%20assembly/Pan%20turret%20assembly-1.png" alt="Pan turret assembly-1" style="width: 49%"/> <img src="images/Minus%20assembly/Pan%20turret%20assembly-2.png" alt="Pan turret assembly-2" style="width: 49%"/>

#### Tilt Turret Assembly
<img src="images/Minus%20assembly/Tilt%20turret%20assembly-1.png" alt="Tilt turret assembly-1" style="width: 49%"/> <img src="images/Minus%20assembly/Tilt%20turret%20assembly-2.png" alt="Tilt turret assembly-2" style="width: 49%"/>

#### Pan & Tilt Turret Assembly
<img src="images/Minus%20assembly/Pan%20+%20Tilt%20turret%20assembly-1.png" alt="Pan + Tilt turret assembly-1" style="width: 49%"/> <img src="images/Minus%20assembly/Pan%20+%20Tilt%20turret%20assembly-2.png" alt="Pan + Tilt turret assembly-2" style="width: 49%"/>

#### Camera Assembly
<img src="images/Minus%20assembly/Camera%20assembly-1.png" alt="Camera assembly-1" style="width: 49%"/> <img src="images/Minus%20assembly/Camera%20assembly-2.png" alt="Camera assembly-2" style="width: 49%"/>

- Minus Pan & Tilt: https://www.robot-maker.com/forum/topic/13101-pan-tilt-minus-hardware-documentation/

## 9. Gripper Assembly
<img src="images/Minus%20assembly/Gripper%20assembly-1.png" alt="Gripper assembly-1" style="width: 49%"/> <img src="images/Minus%20assembly/Gripper%20assembly-2.png" alt="Gripper assembly-2" style="width: 49%"/>  
<img src="images/Minus%20assembly/Gripper%20assembly-3.png" alt="Gripper assembly-3" style="width: 49%"/> <img src="images/Minus%20assembly/Gripper%20assembly-4.png" alt="Gripper assembly-4" style="width: 49%"/>  
<img src="images/Minus%20assembly/Gripper%20assembly-5.png" alt="Gripper assembly-5" style="width: 49%"/> <img src="images/Minus%20assembly/Gripper%20assembly-6.png" alt="Gripper assembly-6" style="width: 49%"/>  
<img src="images/Minus%20assembly/Gripper%20assembly-7.png" alt="Gripper assembly-7" style="width: 49%"/>
<img src="images/Minus%20assembly/Final%20assembly-1.png" alt="Final assembly-1" style="width: 49%"/> <img src="images/Minus%20assembly/Final%20assembly-2.png" alt="Final assembly-2" style="width: 49%"/>  

- Minus 2 axis gripper: https://www.robot-maker.com/forum/topic/13108-minus-gripper-assembly/

## 10. Final Assembly
<img src="images/Minus%20assembly/Final%20assembly-3.png" alt="Final assembly-3" style="width: 49%"/> <img src="images/Minus%20assembly/Final%20assembly-4.png" alt="Final assembly-4" style="width: 49%"/>  
<img src="images/Minus%20assembly/Final%20assembly-5.png" alt="Final assembly-5" style="width: 49%"/> <img src="images/Minus%20assembly/Final%20assembly-6.png" alt="Final assembly-6" style="width: 49%"/>  
<img src="images/Minus%20assembly/Final%20assembly-7.png" alt="Final assembly-7" style="width: 49%"/> <img src="images/Minus%20assembly/Final%20assembly-8.png" alt="Final assembly-8" style="width: 49%"/>  
<img src="images/Minus%20assembly/Final%20assembly-9.png" alt="Final assembly-9" style="width: 49%"/> <img src="images/Minus%20render-1.png" alt="Minus render-1" style="width: 49%"/>

- robot should be ready to turn on now.
- controlling from the vigibot website, check each of the servo travels, and re-screw the servo horns where necessary. 
- set both infra-red IR LEDs to the weakest illumination by covering the brightness sensor / photoresistor, turning the tiny potentiometer on the IR LED boards and observing by eye or with a smartphone camera.

## 11. Optional Assemblies

- Metal Gear Servo Assembly

<img src="images/Minus_assembly_Botkins/metal_servo_horn_1.jpg" alt="metal_servo_horn_1" style="width: 49%"/> <img src="images/Minus_assembly_Botkins/metal_servo_horn_2.jpg" alt="metal_servo_horn_2" style="width: 49%"/><br>

- If you use DM-S0090MD metal gear servos for Head tilt [y] or Gripper tilt [y], the servo horn is a bit too long and has to be shortened. Doesn't fit for Gripper claw [x].

## 12. Zusätzliche Bauanleitungen

- Weitere Montageanleitungen in französischer Sprache: https://www.robot-maker.com/forum/topic/13063-vigibot-hardware-documentation/
- Kurzes Montagevideo aus der Community: https://youtu.be/9Eja0gG4bhI
- Vigibot FAQ: https://www.robot-maker.com/forum/topic/12787-vigibot-faq-en-fr/

## 13. Funktionstest

Teste die Funktionen des Roboters:

- Bei vollständigen Kopf- und Greiferbewegungen dürfen keine Kabel gezogen werden.
- Der Greifer darf nicht „hängenbleiben“, was passieren kann, wenn die Schrauben zu weit/zu fest eingeschraubt sind.
- Lass den Akku des Roboters vollständig entladen. Die Servos können sich leicht bewegen, aber der Roboter sollte nicht von selbst fahren.
- Schliesse bei vollständig entladenem Akku das Ladekabel an und schalte den Roboter ein. Er sollte nicht in einer Boot-Schleife hängenbleiben.

</details>

## Troubleshooting

Wenn du anhand der folgenden Tabelle keine Lösung findest, frage im Vigibot-Discord-Server (Tag @firened) oder in der Botkins Maker Signal-Gruppe nach.

| Problem | Mögliche Ursachen | Lösung |
|---------------------------|-----------------------------------|------------------------------------| 
| Der Roboter trennt sich sporadisch (alle paar Stunden oder Minuten) | (1) Schwache Batterie (2) Schlechter 4G-Empfang | (1) Aufladen (2) Einen anderen Standort ausprobieren |
| Der Roboter blinkt (visuell) und klickt (akustisch) alle paar Sekunden oder mehrmals pro Sekunde | Schwache Batterie | Roboter ausschalten und mehrere Stunden lang aufladen |
| Der Roboter trennt alle 5 Sekunden die Verbindung | Fehlerhafte Konfiguration von Vigibot | Bitten Sie Vigibot oder Botkins, die Online-Konfiguration der Roboter zu überprüfen |
| Der Akku ist nach ~5 Tagen leer, obwohl das Gerät ausgeschaltet ist | Einige Teile (Servos, Motortreiber) werden auch im ausgeschalteten Zustand mit Strom versorgt und entladen die Batterie | kann leider nicht geändert werden |
| Das Video stottert, das Fahren wird unterbrochen, alle paar Sekunden erscheinen rote Balken auf der Website | Schlechter 4G-Empfang, zu geringe 4G-Bandbreite | Wählen Sie die Ansicht mit niedriger Bandbreite, probieren Sie einen anderen Standort aus und stellen Sie sicher, dass die mobile Datenübertragungsgeschwindigkeit mindestens „bis zu 50 Mbit/s“ beträgt |
| Während der Montage ist der Roboter nach einem Neustart für einige Sekunden online und verschwindet dann | Keine 4G-Verbindung/Empfang | Ziehen Sie den 4G-Stick ab und versuchen Sie es mit WLAN oder Ethernet |


## Credits
- Original Partlist: Vigibot
- Assembly Renders: Narayan1986
- Partlist Modifications: Botkins Charity Project
- Assembly Guide: Botkins Charity Project (unless otherwise noted)

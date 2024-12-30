# Minus-Type Vigibot Robot for Botkins
<details open>
<summary>[HIDE SECTION]</summary>

### Table of Contents
- [General Info](#general-info)
- [Prerequisites](#prerequisites)
- [Partlist](#partlist)
  - [Core Parts](#core-parts)
  - [Power Distribution Board Parts](#power-distribution-board-parts)
  - [Motor Base Parts](#motor-base-parts)
  - [Head Parts](#head-parts)
  - [Gripper Parts](#gripper-parts)
  - [Optional Parts](#optional-parts)
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
- [Credits](#credits)


### General Info
Learn more about Botkins Charity Project:
- [botkins.ch (German)](https://botkins.ch)
- [Hackaday Page](https://hackaday.io/project/180558-botkins-charity-project)  

Learn more about Vigibot:
- [Robot Maker Post](https://www.robot-maker.com/forum/topic/13010-what-is-vigibot-quest-ce-que-vigibot/)
- [Drive a robot Vigibot.com](https://www.vigibot.com/)

Basis is the Standard Vigibot Minus-Type (pictured), but with a LTE/4G stick and without lateral (side) arms

![Standard Minus](images/Minus%20render-2.png)

- If you'd like to build a robot for Botkins, contact us and we'll send you the Onboarding Process. 
- Let us know about any broken links or deficiencies (e.g. unclear or missing steps). 
- The maker can choose the 3D printed parts color.
- Building your first robot may take about 10 hours, maybe more. After some practice, building may take about 3h per robot.
- Some parts from aliexpress may take 5 weeks to arrive.

### Prerequisites
You'll need:
- Soldering iron (for 4x motors & UPS bridge). (if you prefer not to solder, maybe another maker could solder the parts for you).
- Internet Access (SIM card with mobile data, WLAN or Ethernet LAN), PC.
- 3D Printer currently not required.
- Tools: Screwdrivers, adjustable / monkey wrench, tweezers, duct tape, ...
</details>

# Partlist
<details open>
<summary>[HIDE SECTION]</summary>

#### Core Parts

- 1x Raspberry Pi 3B, 3B+ or 4B (1GB or 2GB. the higher memory variants are unnecessarily expensive. Requires 2 USB ports.)
  - https://www.robot-maker.com/shop/cartes-programmables/241-raspberry-pi-3b-plus-241.html
  - Switzerland: https://www.galaxus.ch/de/s1/product/raspberry-pi-3-model-b-entwicklungsboard-kit-8024081
  - Germany: https://www.reichelt.de/ch/de/raspberry-pi-3-b-4x-1-4-ghz-1-gb-ram-wlan-bt-raspberry-pi-3b--p217696.html

- 1x Huawei E3372h LTE/4G mobile data stick (without SIM card)
  - The newest model "e3372h-325 (Brand: Brovi)" doesn't work. The older models are no longer manufactured. 
  - Find a suitable model on secondhand platforms. Model must be "e3372h-153", "e3372h-320" or "e3372h-607". The model is printed onto the SIM slot beneath the lid.
  - Check with Botkins, we might have some spares

- 1x USB - USB 90° adapter
  - "Color : Adapter", "Cable Length : Down" https://www.aliexpress.com/item/1005006057729975.html

- USB bracket holder
  - https://www.robot-maker.com/shop/impression-3d/261-service-impression-3d-pla-261.html (It's not defined, but robot-maker knows you'll want a USB_bracket holder.)
  - or 3D print file "stl/usb_bracket.stl"
  - or ask in the Botkins Signal group

- 1x USB Microphone "Super AI" (should cost ~10$).
  - https://www.robot-maker.com/shop/composants/446-microphone-usb-446.html
  - often unavailable "Orange" or "Black" https://www.aliexpress.com/item/1005007114049915.html
  - Check with Botkins, we might have some spares

- 1x 16-32GB MicroSD card. Recommended is the "WesternDigital Purple" (presumed resilient against data corruption, as few as 50 reboots can cause a startup failure on cheap cards!), or another "Endurance" type card. 
  - Switzerland: https://www.galaxus.ch/de/s1/product/wd-wdd032g1p0c-microsdhc-32-gb-u1-uhs-i-speicherkarte-13745268

- if you don't already have one: a micro SD card reader.
  - "Color : Only USB3.0" https://www.aliexpress.com/item/32832711883.html

- 1x aftermarket wide-angle lens camera module
  - with IR-cut filter. There is only one camera module v1 clone that combines a wide-angle lens and a motorized IR-cut filter at the time of writing
  - Robot-Maker:
    - https://www.robot-maker.com/shop/capteurs/311-camera-raspberry-pi.html
    - AND "30cm" https://www.robot-maker.com/shop/composants/329-nappe-raspberry-pi.html#/92-longueur-30cm
  - "Option 2" https://aliexpress.com/item/32881466491.html

- 1x Geekworm / U-geek UPS Hat V3 with 2x20 pin header 15mm pin length extension
  - https://www.robot-maker.com/shop/shield/341-ups-hat-pour-raspberry-pi-341.html
  - aliexpress:
    - https://aliexpress.com/item/4001113371912.html 
      - text seller: "hello, can you add a long extension header? thank you"
      - OR https://www.robot-maker.com/shop/composants/451-header-2x20-a-pins-long-451.html
  - https://www.amazon.fr/gp/product/B089NF1NHS


- 1x 1S2P battery pack with protection. Not from AliExpress. Maybe add 1x spare, Liion in use last about 2 years until capacity drops to 50%.
  - https://www.robot-maker.com/shop/alimentation/383-batterie-lithium-ion-1s2p-ncr-383.html
  - Switzerland: https://www.galaxus.ch/de/s1/product/ansmann-1s2p-akkupack-2x-18650-kabel-li-ion-37-v-5200-mah-18650-5200-mah-akku-akku-ladegeraet-14527956

- 2x USB charger (must support 9V/1.3A or 12V/1A or more). (so the recipient gets 1x spare)
  - "___ Charger Only" https://aliexpress.com/item/1005007293684533.html
  - "EU" https://aliexpress.com/item/4000045865332.html
- 2x USB magnetic cable 4-pin (so the recipient gets 1x spare)
  - "Color : ___ type c", "Length : 2m(6.6ft)" https://www.aliexpress.com/item/4001224959039.html

- 1x Active buzzer 3V or 5V, connect to GND and GPIO 18.
  - "actif" https://www.robot-maker.com/shop/accessoires-robotiques/487-buzzer-5v-487.html
  - "3v" https://www.aliexpress.com/item/4000829554492.html

- About 10cm adhesive Velcro tape, to fix battery pack to middle plate.
  - "White 1Meter", "25mm Wide" https://www.aliexpress.com/item/1005006680575466.html

- if you don't already have: A bit of gorilla / super glue (glue LED caps onto LED board so they don't fall off)
  - https://aliexpress.com/item/1005002488174010.html

#### Power Distribution Board Parts

- Splitter Board
  - "Color : 1 pcs" https://www.aliexpress.com/item/1005006042011391.html

- PH2.0 to 2 Pin cable
  - "Color : 2P", "Length : 10CM" https://www.aliexpress.com/item/1005002901249753.html (check polarity during assembly, it usually has to be inverted)

- 8-16x DuPont cables. 
  - "30cm" or "20cm" https://www.robot-maker.com/shop/composants/42-nappe-40-fils-femelle-femelle-42.html
  - "F-F (30 cm)" https://www.pololu.com/product/4566
  - "Color : Mix 10 Color", "Connector Type : Female to Female", "Pins : 30cm" https://www.aliexpress.com/item/1005005365866477.html

- About 5x Single DuPont pin sleeves
  - "1P" https://aliexpress.com/item/33035707563.html

<s>
<details>
<summary>OLD: manually soldered PDB [Expand]</summary>
- Find Build instructions and pictures on botkins cloud in /Hardware_Design/UPS_power_distribution/

- 1x small piece of prototyping board for the power distribution board. Build a small 2-row header board with 1x soldered wires for the UPS and 6-8x pin header slots (1x battery, 4x servo, 1x motor driver, 1x spare). insulate backside with duct tape to prevent accidental short circuits.
  - https://aliexpress.com/item/1005001807612572.html

- 1x Pin header for the power distribution board
  - https://www.robot-maker.com/shop/composants/93-barrette-secable-male-254mm-93.html
  - "CAIpaizhen" https://aliexpress.com/item/32744837236.html

- 1x PH2.0 plug to connect the power distribution board to the geekworm v3 UPS.
  - "2P" https://aliexpress.com/item/4000091077742.html
</details>
</s>

#### Motor Base Parts

- 3D printed parts, screws, nuts and standoffs 
  - Kit : https://www.robot-maker.com/shop/kits-robots/425-kit-chassis-4wd-minus-425.html
  - List :
    - 3D printed parts : 4  ( Top, middle, bottom and rear plate )
    - 12mm length M2.5 male standoffs between the Raspberry PI and UPS hat board : 4
    - 25mm length M2.5 male standoffs between the UPS hat board and middle plate : 4
    - 10mm length M2.5 female standoffs between the middle plate and bottom plate : 4
    - 5mm length M2.5 male standoffs between the Raspberry PI board and top plate : 4
    - 6 mm M2.5 screw : 10 ( 4 top plate / 4 bottom plate / 2 middle plate)
    - 8 or 10 mm M2.5 screw to fix motor board : 2 
    - M2.5 nut : 6 ( 4 for the motor board / 2 middle plate)
    - 8mm length M2 screw to fix the back plate on the middle plate : 3 
    - M2 nut : 3

- 4x Pololu 100:1 micro metal gearmotor HP 6V
  - https://www.robot-maker.com/shop/moteurs-et-actionneurs/384-moteur-pololu-300-rpm.html (provided with cable you need to solder, but can be provided soldered)
  - https://www.pololu.com/product/1101
- 4x Pololu micro metal gearmotor extended bracket (provided with screws and nuts)
  - https://www.robot-maker.com/shop/elements-mecaniques/385-support-moteur-pololu-long.html
  - https://www.pololu.com/product/1089
- 4x Pololu wheel 40×7mm
  - https://www.robot-maker.com/shop/elements-mecaniques/346-roue-pololu-40mm.html  
  - https://www.pololu.com/product/1454
- 1x Feetech 2ch motor controller
  - https://www.robot-maker.com/shop/drivers-d-actionneurs/280-driver-convertisseur-moteur-cc-servomoteur.html (provided with cables)
  - https://aliexpress.com/item/33056911020.html (both motors of same side in parallel on each output)

#### Head Parts

- 3D printed parts, screws, nuts and standoffs
  - Kit : https://www.robot-maker.com/shop/kits-robots/88-kit-tourelle-pan-tilt-88.html
  - List :
    - 3D printed parts : 3 or 4 (Smiling head, pan plate, tilt bracket, and 4th is an optional protection to protect camera lens)
    - 10mm or 12mm length M2.5 screw  : 2 ( to fix pan plate to the rest of the robot)
    - M2.5 nut : 2
    - 5 or 6 mm M2 screw : 1 
    - 8 mm M2 screw : 2  (to fix 270° servo on the pan plate)
    - 14 or 16 mm M2 screw : 2 ( to fix 180° servo in the head)
    - 20 mm M2 screw : 4 (for camera assembly on the head)
    - M2 nut : 10 (8 for the camera, 2 to fix the servo on the pan plate)
  - Note : use the long screws provided with servomotors to fix the servomotors on the servo holder

- 1x DM-S0090MD 270° metal gear servo for head pan [x] (add 1x spare)
  - often unavailable https://www.aliexpress.com/item/1005002940068629.htmloften unavailable
  - https://aliexpress.com/item/1005007890905728.html
  - Check with Botkins, we might have some spares
  - it's not metal gear but works too: https://www.robot-maker.com/shop/moteurs-et-actionneurs/370-servomoteur-9g-270-370.html
- 1x 180° servo for head tilt [y] (add 1x spare)
  - https://www.robot-maker.com/shop/moteurs-et-actionneurs/18-servomoteur-9g-18.html

#### Gripper Parts

- 3D printed parts, screws and nuts
  - Kit : https://www.robot-maker.com/shop/kits-robots/423-kit-pince-minus-423.html
  - List :
    - 3D printed parts : 4
    - 5 or 6 mm M2 screw : 1
    - 8 mm M2 screw : 3
    - 10 mm M2 screw : 1
    - 14 mm M2 screw : 5
    - M2 nut : 2
  - Note : use the long screws provided with servomotors to fix the servomotors on the servo holder

- 2x 180° SG90 servo for gripper
  - https://www.robot-maker.com/shop/moteurs-et-actionneurs/18-servomoteur-9g-18.html

#### Optional Parts

- Botkins is considering changing more servos to metal gear. Add 2x DM-S0090MD metal servo for: head tilt [y], gripper tilt [y]. (Doesn't fit for gripper claw [x]).
  - often unavailable https://www.aliexpress.com/item/1005002940068629.html
  - https://aliexpress.com/item/1005007890905728.html
  - Botkins might have some spares
</details>

# Minus-Type Assembly
<details open>
<summary>[HIDE SECTION]</summary>

## 1. Software Install
<img src="images/Minus_assembly_Botkins/pi_cam.jpg" alt="pi_cam" style="width: 49%"/><br>

- Install Vigibot on Pi and test with Camera according to https://www.robot-maker.com/forum/topic/12794-how-to-add-my-raspberry-pi-robot-on-vigibot-to-control-my-robot-over-the-internet/

- LTE/4G mobile data stick:
  - Plug into a Windows or Mac PC (192.168.8.1 webpage opens or start the App on the storage medium) and enable data roaming.
- OPTIONAL: For Wi-Fi, you can use "/Hardware Design/wpa_supplicant.conf" on botkins cloud, as an example for the raspberry pi WiFi setup. either add or replace with your WiFi network.
- Unplug power cable. During assembly, new parts can be connected (power off robot) and tested.

## 2. Vigibot Online Configuration
#### Remote controller Configuration
On Vigibot website click-> `Management` -> Wrench Icon (Remote controller configuration) -> `Modifications made` -> `Form` set to `Text` -> Replace existing `{}` with following code:
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

#### Hardware Configuration
On Vigibot website click -> `Management` -> Gear Icon (Hardware configuration) -> `Modifications made` -> `Form` set to `Text` -> Replace existing `{}` with following code:
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

- A: Remove "POFF" solder bridge<br>

<img src="images/Minus_assembly_Botkins/ups_poff_2.jpg" alt="ups_poff_2" style="width: 49%"/><br>

## 4. Servo Plug Split
<img src="images/Minus_assembly_Botkins/servo_assembly_1.jpg" alt="servo_assembly_1" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/servo_assembly_2.jpg" alt="servo_assembly_2" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/servo_assembly_3.jpg" alt="servo_assembly_3" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/servo_assembly_4.jpg" alt="servo_assembly_4" style="width: 49%"/>

- Split the signal (orange or white) wire off the 4x servos and 1x motor driver.

## 5. Power Distribution Assembly
<img src="images/Minus_assembly_Botkins/pdb_assembly_1.jpg" alt="pdb_assembly_1" style="width: 49%"/> <img src="images/Minus_assembly_Botkins/pdb_assembly_2.jpg" alt="pdb_assembly_2" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/pdb_assembly_3.jpg" alt="pdb_assembly_3" style="width: 49%"/> <img src="images/Minus_assembly_Botkins/pdb_assembly_4.jpg" alt="pdb_assembly_4" style="width: 49%"/><br>

- Invert PH2.0 plug polarity (if necessary)<br>

<img src="images/Minus_assembly_Botkins/pdb_assembly_5.jpg" alt="pdb_assembly_5" style="width: 49%"/>

- Stack UPS onto Raspberry Pi.

## 6. GPIO Wiring
<img src="images/Minus_assembly_Botkins/wiring_assembly_1.jpg" alt="wiring_assembly_1" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/pinout_ups.png" alt="pinout_ups" style="width: 49%"/>
<img src="images/Minus_assembly_Botkins/wiring_assembly_3.jpg" alt="wiring_assembly_3" style="width: 49%"/><br>

- A: Head pan [x] `GPIO 5 (physical pin 29)`<br>
- B: Head tilt [y] `GPIO 6 (physical pin 31)`<br>
- C: Gripper claw [x] `GPIO 7 (physical pin 26)`<br>
- D: Gripper tilt [y] `GPIO 8 (physical pin 24)`<br>

<img src="images/Minus_assembly_Botkins/wiring_assembly_5.jpg" alt="wiring_assembly_5" style="width: 49%"/><br>

- A: ESC motor driver
  - left motors `GPIO 26 (physical pin 37)`
  - right motors `GPIO 27 (physical pin 13)`

- Use the magnetic USB cable to power the UPS.
- Test control each servo from Vigibot. 
- Before proceeding, press `Stop ■` button to center every servo, and unplug battery and USB power.

## 7. Motor Base Assembly
<img src="images/Minus%20assembly/Middle%20plate%20assembly-1.png" alt="Middle plate assembly-1" style="width: 49%"/> <img src="images/Minus%20assembly/Middle%20plate%20assembly-2.png" alt="Middle plate assembly-2" style="width: 49%"/>  
<img src="images/Minus%20assembly/Middle%20plate%20assembly-3.png" alt="Middle plate assembly-3" style="width: 49%"/> <img src="images/Minus%20assembly/Middle%20plate%20assembly-4.png" alt="Middle plate assembly-4" style="width: 49%"/>  
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

## 11. Optional Assemblies

- Metal Gear Servo Assembly

<img src="images/Minus_assembly_Botkins/metal_servo_horn_1.jpg" alt="metal_servo_horn_1" style="width: 49%"/> <img src="images/Minus_assembly_Botkins/metal_servo_horn_2.jpg" alt="metal_servo_horn_2" style="width: 49%"/><br>

- If you use DM-S0090MD metal gear servos for Head tilt [y] or Gripper tilt [y], the servo horn is a bit too long and has to be shortened. Doesn't fit for Gripper claw [x].

## 12. Additional Assembly Guides

- You may find additional assembly guides in french on: https://www.robot-maker.com/forum/topic/13063-vigibot-hardware-documentation/
- [Offline] ~~Full Minus assembly guide from community: https://www.wiki-vigibot.com/index.php/Comment_monter_mon_robot_%E2%80%9CMinus%E2%80%9C_de_A_%C3%A0_Z_%3F~~
- Short Assembly Video from community: https://youtu.be/9Eja0gG4bhI
- Vigibot FAQ: https://www.robot-maker.com/forum/topic/12787-vigibot-faq-en-fr/


</details>

## Credits
- Original Partlist: Vigibot
- Assembly Renders: Narayan1986



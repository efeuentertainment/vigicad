## Partlist and 3D files for a Vigibot robot specifically for Botkins

### Basis is the Standard Vigibot Minus-Type (pictured), but with a LTE/4G stick and without lateral (side) arms 

![Standard Minus](https://github.com/vigibot/vigicad/blob/master/images/Minus%20render-2.png)

### Partlist

- 3D printed parts (you can decide what color(s)) from https://github.com/efeuentertainment/vigicad/tree/master/stl
  - clamp_finger_a.stl
  - clamp_finger_b.stl
  - clamp_servo_bracket.stl
  - clamp_u_bracket.stl
  - head_pan_servo_bracket.stl
  - head_servo_camera_bracket_smile.stl
  - head_u_bracket.stl
  - photoresistor_cap.stl (white filament, some light has to pass through)
  - plate_bottom.stl
  - plate_middle.stl
  - plate_top_nofan.stl
  - usb_bracket.stl
  - (not for botkins: core rear plate)

- 1x Raspberry PI 3, 3B+ or 4B (requires 2 USB ports)
  - check https://rpilocator.com to find an available Raspberry pi 

- 1x aftermarket *wide-angle lens* camera module (optional: with IR-cut filter). There is only one camera module v1 clone that combines a *wide-angle lens* and a motorized IR-cut filter at time of writing
  - "Option 2" https://aliexpress.com/item/32881466491.html
  - https://www.robot-maker.com/shop/capteurs/311-camera-raspberry-pi.html
  - https://www.aliexpress.com/item/32957419294.html
  - It is better to have the *wide-angle lens* than the motorized IR-cut filter without the wide-angle lens
  - The "genuine" camera module v1 or v2 use pinhole lens and are bad for first person view piloting

- 1x 30cm Raspberry PI camera flex cable (if not already included with camera)
  - "30cm" https://aliexpress.com/item/32893003564.html
  - https://www.robot-maker.com/shop/composants/329-nappe-raspberry-pi.html#/92-longueur-30cm

- 1x Geekworm / U-geek UPS Hat V3 (or vigi UPS v2, not yet tested)
    - https://aliexpress.com/item/4001113371912.html
    - https://www.amazon.fr/gp/product/B089NF1NHS

- 1x 1S2P battery pack with protection, usually contains 2x 18650 Li-Ion cells (not from AliExpress)
  - Switzerland: https://www.galaxus.ch/de/s1/product/ansmann-1s2p-akkupack-2x-18650-kabel-li-ion-37-v-5200-mah-18650-5200-mah-akku-akku-ladegeraet-14527956

- 1x USB charger (optional: Quick Charge QC3.0)
  - "EU" https://aliexpress.com/item/4000045865332.html

- 4x Pololu 100:1 micro metal gearmotor HP 6V
  - https://www.pololu.com/product/1101
  - https://www.robot-maker.com/shop/moteurs-et-actionneurs/384-moteur-pololu-300-rpm.html
- 4x Pololu micro metal gearmotor extended bracket
  - https://www.pololu.com/product/1089
  - https://www.robot-maker.com/shop/elements-mecaniques/385-support-moteur-pololu-long.html
- 4x Pololu wheel 40×7mm
  - https://www.pololu.com/product/1454
  - https://www.robot-maker.com/shop/elements-mecaniques/346-roue-pololu-40mm.html  
- 1x Feetech 2ch motor controller
  - https://www.robot-maker.com/shop/drivers-d-actionneurs/280-driver-convertisseur-moteur-cc-servomoteur.html

- 1x 270° Doooman Hobby DM-S0090MD metal gear servo (pan axis: 1) (add 1x spare)
  - https://aliexpress.com/item/4000072654688.html
  - config limited to 180°, to reduce cable fatigue from bending back and forth.

- 3x 180° DIYMore MG90S (or FiTec FS90MG) metal gear servo (tilt axis: 1; gripper: 2) (add 1-2x spare)
  - https://aliexpress.com/item/32890522720.html

- 1x Huawei E3372h LTE/4G mobile data stick (no SIM card) ("h" variant. "s" variant may not work)
  - Switzerland: https://www.galaxus.ch/de/s1/product/huawei-e3372-router-5700361

- 1x USB 90° adapter
  - "to Down" https://aliexpress.com/item/32891283795.html

- 1x USB Microphone "Orange-AI"
  - https://aliexpress.com/item/1005002551627557.html

- 5-10x DuPont cables that have a good grip on pin headers and flow well when soldering (motors: 4x2; LEDs: 2)
  - "30cm" https://aliexpress.com/item/32840578827.html
  - Single wire DuPont cables will work too but i haven't gotten any with decent quality from AliExpress.

- 2x white LED from Maker @Mikrorupteur for wide angle camera, controlled from GPIO 
  - https://www.ebay.fr/itm/2x-Modules-Led-blanche-1W-raspberry-pi-sans-lentille/114551818867?pageci=c59edf60-e425-4de4-b250-0f3d9e4ca32c
  - Alternative (coordinate with Botkins, suggestions welcome) is either:
    - IR LEDs with GPIO control
      - https://aliexpress.com/item/32819475254.html
      - Guide: https://www.robot-maker.com/forum/topic/13194-piloter-les-leds-ir-via-gpio/ PS: Needs a flexible wire at the LED modules, not directly the resistor!
    - manually modified (from IR LEDs) to White LEDs with GPIO control
      - Guide: https://www.robot-maker.com/forum/topic/13191-modification-leds-ir-en-leds-blanches/

- 1x USB magnetic cable 4-pin (not 2-pin)
  - "Type-C, 2m" https://aliexpress.com/item/4000374403062.html

- 1x Active buzzer 5V
  - https://aliexpress.com/item/32762781599.html

- 1x Pin header servo power distribution board
  - https://aliexpress.com/item/33003433642.html

- About 5x Single DuPont pin sleeves
  - "1P" https://aliexpress.com/item/33035707563.html
  - alternative: about 10cm heatshrink tubing 

- About 10cm double sided foam duct tape (or Velcro tape to fix battery pack to middle plate / alternative to fix motor board to middle plate)

- Standoffs Male-Female
  - https://aliexpress.com/item/32871638424.html
    - 4x "5mm" length, "M2.5" male-female standoff between the Raspberry PI board and top plate
    - 4x "12mm" length, "M2.5" male-female standoffs between the Raspberry PI and UPS hat board
    - 4x "25mm" length, "M2.5" male-female standoffs between the UPS hat board and middle plate

- Standoffs Female-Female
  - https://aliexpress.com/item/32872351516.html
    - 4x "10mm" length, "M2.5" female-female standoffs between the middle plate and bottom plate

- Spacers
  - https://aliexpress.com/item/33021883302.html
    - 4x "M2.5x5x1mm" between the Raspberry PI and UPS hat board

- Screws
  - https://aliexpress.com/item/32810872544.html
    - 2x "M2.5", "10 or 12mm" length to fix head pan plate to the rest of the robot
    - 10x "M2.5", "6mm" length (4 top plate / 4 bottom plate / 2 middle plate)
    - 2x "M2.5", "8 or 10mm" length to fix motor board
    - 16x "M2", "8mm" length (3 to fix USB bracket onto the top plate / 2 to fix 270° servo onto the head pan plate / 3 to fix gripper u-bracket onto middle plate / 8 to mount N20 motor brackets to middle plate)
    - 2x "M2", "5 or 6mm" length ( 1 u-bracket to head support / 1 u-bracket to gripper support)
    - 1x "M2", "10mm" length to mount secondary pincer to gripper
    - 7x "M2", "14mm" length ( 2 to fix 180° servo into the head / 4 to fix servo into gripper / 1 to fix main pince onto the servo horn)
    - 4x "M2", "20mm" length to fix camera module onto the head

- Nuts
  - https://aliexpress.com/item/32874684920.html
    - 8x "M2.5" (2 for the motor board / 2 between motor board and middle plate / 2 middle plate / 2 between head plate and top plate)
    - 24x "M2" ( 3 for the USB bracket / 8 to mount camera onto head / 2 to fix the pan servo on the head pan plate / 3 to fix gripper u-bracket onto middle plate / 8 to mount N20 motor brackets to middle plate)

- EXPERIMENTAL: about 20cm of 7mm heatshrink tubing
  - "7mm" https://aliexpress.com/item/1005003136814022.html
- EXPERIMENTAL: 1x cable tie base mount 12x12mm - 20x20mm self-adhesive 
  - "12x12" https://aliexpress.com/item/32813988566.html

<details><summary>old Vigibot partlist listed by category</summary>

#### Core assembly

- Raspberry PI 3 / Raspberry PI 3 B+ / Raspberry PI 4

- An aftermarket *wide-angle lens* camera module v1 clone is highly recommended
  - The "genuine" camera module v1 or v2 use pinhole lens and are bad for first person view piloting
  - There is only one camera module v1 clone that combines a *wide-angle lens* and a motorized IR-cut filter at time of writing
    - https://www.robot-maker.com/shop/capteurs/311-camera-raspberry-pi.html  (fast delivery)
    - https://www.aliexpress.com/item/32957419294.html
  - It is better to have the *wide-angle lens* than the motorized IR-cut filter without the wide-angle lens
  
- 30cm Raspberry PI camera cable
  - https://www.robot-maker.com/shop/composants/329-nappe-raspberry-pi.html#/92-longueur-30cm

- A reliable Raspberry PI UPS hat board, there is only one at time of writing
  - The Geekworm / U-geek UPS Hat V3
    - https://www.amazon.fr/gp/product/B089NF1NHS
    - https://fr.aliexpress.com/item/4001113371912.html

- 1S Batterie with BMS included
   - not from AliExpress

- 3D printed parts, screws, nuts and standoffs 
  - Full kit : https://www.robot-maker.com/shop/kits-robots/425-kit-chassis-4wd-minus-425.html
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

#### Motorization 

- Four Pololu 100:1 micro metal gearmotor HP 6V
  - https://www.robot-maker.com/shop/moteurs-et-actionneurs/384-moteur-pololu-300-rpm.html (provided with cable you need to solder, but can be provided soldered)
  - https://www.pololu.com/product/1101
- Four Pololu micro metal gearmotor extended bracket ( provided with screws and nuts)
  - https://www.robot-maker.com/shop/elements-mecaniques/385-support-moteur-pololu-long.html
  - https://www.pololu.com/product/1089
- Four Pololu wheel 40×7mm
  - https://www.robot-maker.com/shop/elements-mecaniques/346-roue-pololu-40mm.html  
  - https://www.pololu.com/product/1454
- Feetech 2ch motor controller (provided with cables) 
  - https://www.robot-maker.com/shop/drivers-d-actionneurs/280-driver-convertisseur-moteur-cc-servomoteur.html

#### Head assembly

- Two "SG90" type micro servo
  - 270° servo is highly recommended for the pan axis : 1
    - https://www.robot-maker.com/shop/moteurs-et-actionneurs/370-servomoteur-9g-270-370.html

  - 180° servo is good for the tilt axis : 1
    - https://www.robot-maker.com/shop/moteurs-et-actionneurs/18-servomoteur-9g-18.html

- 3D printed parts, screws, nuts and standoffs
  - Full kit : https://www.robot-maker.com/shop/kits-robots/88-kit-tourelle-pan-tilt-88.html
  - List :
    - 3D printed parts : 3 or 4 (Smiling head, pan plate, tilt bracket, and 4th is an optional protection to protect camera lens)
    - 10mm or 12mm length M2.5 screw  : 2 ( to fix pan plate to the rest of the robot)
    - M2.5 nut : 2
    - 5 or 6 mm M2 screw : 1 
    - 8 mm M2 screw : 2  (to fix 270° servo on the pan plate)
    - 14 or 16 mm M2 screw : 2 ( to fix 180° servo in the head)
    - 20 mm M2 screw : 4 (for camera assembly on the head)
    - M2 nut : 10 (8 for the camera, 2 to fix the servo on the pan plate)

#### Clamp assembly

- 180° servo SG90 servo : 2
  - https://www.robot-maker.com/shop/moteurs-et-actionneurs/18-servomoteur-9g-18.html

- 3D printed parts, screws and nuts
  - Full kit : https://www.robot-maker.com/shop/kits-robots/423-kit-pince-minus-423.html
  - List :
    - 3D printed parts : 4
    - 5 or 6 mm M2 screw : 1
    - 8 mm M2 screw : 3
    - 10 mm M2 screw : 1
    - 14 mm M2 screw : 5
    - M2 nut : 2
<details><summary>Not required for Botkins</summary>

#### Lateral arms

- 180° servo SG90 servo : 2
  - https://www.robot-maker.com/shop/moteurs-et-actionneurs/18-servomoteur-9g-18.html

- 3D printed parts, screws and nuts
  - Full kit : https://www.robot-maker.com/shop/kits-robots/424-kit-bras-lateraux-minus-424.html
  - List :
    - 3D printed parts : 4 (left and right servo holder, and left and right lateral arms)
    - 8 mm M2 screw : 2 (to fix lateral arms on the servo)
    - 14 mm M2.5 screw : 2 (to fix servo holders on the rest of the robot it replaces 8mm M2.5 screws)
    - M2.5 nut : 2 (to fix servo holders on the rest of the robot, use 8mm M2.5 screws previously removed, wich was already on your robot) 
    - Note : use the long screws provided with servomotors to fix the servomotors on the servo holder
</details>
<details><summary>Not required for Botkins</summary>

#### Charge station assembly

- A USB magnetic cable with magnetic plug
  - https://www.robot-maker.com/shop/alimentation/335-cable-usb-magnetique.html
  - https://www.robot-maker.com/shop/alimentation/336-embout-magnetique-micro-usb-336.html
- 3D printed part :
  - https://www.robot-maker.com/forum/topic/13134-station-de-charge-pour-robot-de-type-minus
</details>

#### Optionnal add ons
- 40mm fan for the top plate  https://www.amazon.fr/gp/product/B07D5QBFLK/ref=ppx_yo_dt_b_asin_title_o01_s00 ( use top plate with fan hole in this case)
- Leds to show if someone is using the robot or not
- Cables to manually control the IR led state on the camera
</details>

### Notes

- All stl files are provided, you will need a 3D printer to print them.
- All sources files are provided. They are made on openscad. You will need The OpenSCAD open source software available at https://www.openscad.org to open or customize SCAD files
- Step files are also provided to be used as raw file material for other software if you want make modification with your own prefered software.
- This French video can help to better understand how to assemble the robot : https://youtu.be/9Eja0gG4bhI

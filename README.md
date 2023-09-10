## Partlist and 3D files for a Vigibot robot specifically for Botkins
Learn more about Botkins Charity Project on the Hackaday Page https://hackaday.io/project/180558-botkins-charity-project
### Basis is the Standard Vigibot Minus-Type (pictured), but with a LTE/4G stick and without lateral (side) arms 

![Standard Minus](https://github.com/vigibot/vigicad/blob/master/images/Minus%20render-2.png)

### Partlist

- 3D printed parts (you can decide what color(s)).
  - modifications_botkins/clamp_finger_a_botkins.stl
  - stl/clamp_finger_b.stl
  - modifications_botkins/clamp_servo_bracket_botkins_V31.3mf
  - modifications_botkins/clamp_u_bracket_botkins_V3.3mf
  - modifications_botkins/head_pan_servo_bracket_botkins.stl
  - modifications_botkins/head_servo_camera_bracket_smile_botkins.stl
  - modifications_botkins/head_u_bracket_botkins_V2.3mf
  - modifications_botkins/plate_bottom_sidewalls.stl
  - stl/plate_middle.stl
  - stl/plate_top_nofan.stl
  - stl/usb_bracket.stl

- 1x Raspberry PI 3, 3B+ or 4B (1GB or 2GB. the higher memory variants are unnecessarily expensive). Requires 2 USB ports.
  - enable notifications of https://twitter.com/rpilocator from https://rpilocator.com to find an available Raspberry pi. They are often sold out within 10min of restocking, ask Botkins if you need assistance.
  - ask on social media if people have an unused pi 3 or 3B+ they would be willing to donate or sell.
  - ask on social media for an exchange of 2x used 3 or 3B+ for a 4B (any variant), as the Pi 4B is overkill and have a shorter battery runtime in a robot.
- 1x "WD Purple" 16-32GB MicroSD card
  - Switzerland: https://www.galaxus.ch/de/s1/product/wd-wdd032g1p0c-microsdhc-32-gb-u1-uhs-i-speicherkarte-13745268
- Makers need a micro SD card reader to flash the micro SD card
- 1x aftermarket *wide-angle lens* camera module (make sure you have 1x spare)
  - (optional: with IR-cut filter). There is only one camera module v1 clone that combines a *wide-angle lens* and a motorized IR-cut filter at the time of writing
  - "Option 2" https://aliexpress.com/item/32881466491.html
  - https://www.robot-maker.com/shop/capteurs/311-camera-raspberry-pi.html
  - https://www.aliexpress.com/item/32957419294.html
  - The "genuine" camera module v1 or v2 use pinhole lens and are bad for first person view piloting
- 1x 30cm Raspberry PI camera flex cable (if not already included with camera)
  - "30cm" https://aliexpress.com/item/32893003564.html
  - https://www.robot-maker.com/shop/composants/329-nappe-raspberry-pi.html#/92-longueur-30cm

- 1x Geekworm / U-geek UPS Hat V3 (Botkins has not yet tested the vigi UPS v2)
    - https://aliexpress.com/item/4001113371912.html
    - https://www.amazon.fr/gp/product/B089NF1NHS
- 1x 1S2P battery pack with protection, usually contains 2x 18650 Li-Ion cells (not from AliExpress!)
  - Switzerland: https://www.galaxus.ch/de/s1/product/ansmann-1s2p-akkupack-2x-18650-kabel-li-ion-37-v-5200-mah-18650-5200-mah-akku-akku-ladegeraet-14527956

- 1x USB charger 5V / 3A (make sure you have 1x spare)
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
  - wire output to both motors on each side https://aliexpress.com/item/33056911020.html
  - https://www.robot-maker.com/shop/drivers-d-actionneurs/280-driver-convertisseur-moteur-cc-servomoteur.html

- 1x 270° Doooman Hobby DM-S0090MD metal gear servo (pan axis: 1) (make sure you have 1-2x spare)
  - https://aliexpress.com/item/4000072654688.html
  - config limited to 180°, to reduce cable fatigue from bending back and forth.
- 3x 180° DIYMore MG90S metal gear servo (tilt axis: 1; gripper: 2) (make sure you have 2-4x spare)
  - https://aliexpress.com/item/32890522720.html
  - (Botkins may switch to using Doman Hobby DM-S0092MD 180° in the future, but 3D files are not yet available. https://aliexpress.com/item/4001033588672.html )

- 1x Huawei E3372h LTE/4G mobile data stick (no SIM card) (must be "h" variant.)
  - Switzerland: https://www.galaxus.ch/de/s1/product/huawei-e3372h-325-lte-surfstick-router-24839569
- 1x USB 90° adapter (make sure you have 1x spare)
  - "to Down" https://aliexpress.com/item/32891283795.html
- 1x USB Microphone "Orange-AI" (make sure you have 1x spare)
  - https://aliexpress.com/item/1005004454958409.html

- 8-16x DuPont cables that have a good grip on pin headers and flow well when soldering (4x2 motors / 2x1 motor driver power / 2x1 motor signal / 2x1 LEDs / 2x1 buzzer)
  - "30cm" https://aliexpress.com/item/32840578827.html
  - Single wire DuPont cables will work too but i haven't gotten any with decent quality from AliExpress.

- 2x white LED from Maker @Mikrorupteur for wide angle camera, controlled from GPIO (make sure you have 1x spare)
  - https://www.ebay.fr/itm/2x-Modules-Led-blanche-1W-raspberry-pi-sans-lentille/114551818867?pageci=c59edf60-e425-4de4-b250-0f3d9e4ca32c
    - Use the Lens caps that came with the "camera+IR LED” (or order the IR LED separately, see alternative)
  - Alternative (coordinate with Botkins, suggestions welcome) is either:
    - IR LEDs with GPIO control
      - if not already included with camera: https://aliexpress.com/item/32819475254.html
      - Guide: https://www.robot-maker.com/forum/topic/13194-piloter-les-leds-ir-via-gpio/ PS: Needs a flexible wire at the LED modules, not directly the resistor!
    - manually modified (from IR LEDs) to White LEDs with GPIO control
      - "WHITE", "3W" https://aliexpress.com/item/32326397021.html
      - Guide: https://www.robot-maker.com/forum/topic/13191-modification-leds-ir-en-leds-blanches/

- 2x USB magnetic cable 4-pin (so the recipient gets 1x spare)
  - "Type-C, 2m" https://aliexpress.com/item/4000374403062.html

- 1x Active buzzer 5V
  - https://aliexpress.com/item/32762781599.html

- 1x Pin header for the servo power distribution board. 4x servo + 1x motor driver + 1x battery + 1x plug to power UPS. insulate backside to prevent accidental short circuits.
  - Build a small board yourself using 2 rows x 7 pins headers and prototyping board (one slot as a spare) https://aliexpress.com/item/32744837236.html
  - Alternative with insufficient slots. the 3rd row (signal) will not be used. connector has to be replaced. https://aliexpress.com/item/1005001849622193.html
  - Alternative with insufficient slots and missing wires. (UPS plug needs to be soldered to backside) https://aliexpress.com/item/33003433642.html
- 1x small piece of prototyping board for the servo power distribution board.
  - https://aliexpress.com/item/1005001807612572.html

- 1x PH2.0 plug to connect the power distribution board to the ugeek v3 UPS. other UPS may have a different plug.
  - "2P" https://aliexpress.com/item/4000091077742.html
- About 5x Single DuPont pin sleeves
  - "1P" https://aliexpress.com/item/33035707563.html
  - alternative: about 10cm ?mm heatshrink tubing 

- About 10cm double sided foam duct tape (or Velcro tape)(to fix battery pack to middle plate / alternative to fix motor board to middle plate)

- Small Strobing RC light. Vcc and Signal should both be connected to GPIO pins. Vcc to turn on and off / Signal to change pattern.
  - https://aliexpress.com/item/32907858286.html

- A bit of super glue (glue LED lens onto LED board so they don't fall off / glue strobe light to top plate / glue strobe light cap - it falls off easily)
  - https://aliexpress.com/item/1005002488174010.html

- Standoffs Male-Female
  - https://aliexpress.com/item/32871638424.html
    - 4x "5mm" length, "M2.5" male-female standoff between the Raspberry PI board and top plate
    - 4x "17mm" length, "M2.5" male-female standoffs between the Raspberry PI and UPS geekworm v3 hat
    - 4x "25mm" length, "M2.5" male-female standoffs between the UPS hat board and middle plate
- Standoffs Female-Female
  - https://aliexpress.com/item/32872351516.html
    - 4x "10mm" length, "M2.5" female-female standoffs between the middle plate and bottom plate
- Spacers
  - https://aliexpress.com/item/33021883302.html
    - 14x "M2.5x5x1mm" (4 between the Raspberry PI and UPS hat board / 2-4 between motor board and middle plate / 4 (or 6) between head pan plate and top plate)
    - 12x "M2x5x1mm" (4x2 between camera module and head / 4 between head and LED modules)
- Screws
  - https://aliexpress.com/item/10000183209605.html
    - 2x "M2.5", "12mm" length to fix head pan plate to the rest of the robot
    - 8x "M2.5", "6mm" length (2 top plate / 4 bottom plate / 2 middle plate)
    - 1x "M2.5", "10mm" length to fix clamp_finger_a onto the servo horn (for DIYMore metal gear)
    - 8x "M2", "8mm" length (3 to fix USB bracket onto the top plate / 2 to fix 270° servo onto the head pan plate / 3 to fix gripper u-bracket onto middle plate)
      - if you use the pololu motor brackets, use the supplied "#2-56" screws and nuts (they are between M2 and M2.5 in size). if you use different brackets, add 8x "M2", "8mm".
    - 2x "M2", "6mm" length (1 u-bracket to head / 1 u-bracket to gripper)
    - 1x "M2", "16mm" length to mount clamp_finger_b to gripper (estimated for DIYMore metal gear)
    - 6x "M2", "14mm" length (2 to fix 180° servo into the head / 4 to fix servo into gripper)
    - 4x "M2", "20mm" length to fix camera module and LEDs onto the head
      - CAUTION: the M2, 20mm screw has to be electrically conductive, as it powers the LED from the camera module.
- Flathead screws
  - https://aliexpress.com/item/1005004122790928.html
    - 2x "M2.5", "8mm" length to fix motor board to middle plate (head between middle plate and battery)
- Nuts
  - https://aliexpress.com/item/32874684920.html
    - 4x "M2.5" as spares
    - 12x "M2" as spares (if insufficient space for self-locking: 3 for the USB bracket)
      - if you use the pololu motor brackets, use the supplied "#2-56" screws and nuts (they are between M2 and M2.5 in size). if you use different brackets, add 8x "M2" nuts.
- Self-locking nuts
  - https://aliexpress.com/item/32798773566.html
    - 4x "M2.5" (2 for the motor board / 2 middle plate)
    - 12x "304 stainless steel", "M2" (4 to fix camera module to head / 3 to fix gripper u-bracket to middle plate / 2 to fix the pan servo to the head pan plate / if there's enough space: 3 to fix usb bracket to top plate)
      - CAUTION: the M2 nut has to be electrically conductive, as it powers the LED from the camera module.

- About 10cm of about 12mm Heatshrink tubing to store the left over wire lengths (do not shrink the tube)
  - "12mm" https://aliexpress.com/item/4000904296729.html

- 1x cable tie base mount 12x12mm - 20x20mm self-adhesive 
  - "12x12" https://aliexpress.com/item/32813988566.html
- 1x small zip tie, about 100mm in length
  - "3x100" https://aliexpress.com/item/1005001444739470.html

### Notes

- All stl files are provided, you will need a 3D printer to print them.
- All sources files are provided. They are made on openscad. You will need The OpenSCAD open source software available at https://www.openscad.org to open or customize SCAD files
- Step files are also provided to be used as raw file material for other software if you want make modification with your own prefered software.
- This French video can help to better understand how to assemble the robot : https://youtu.be/9Eja0gG4bhI

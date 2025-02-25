# Optional start gcode if you have a BL Touch
M280 P0 S160 ; BLTouch alarm release
G4 P100 ; delay for BLTouch
G28 ; home
G29 ; auto bed leveling

# Start gcode (Do not include this line)
G28 ;Home, optional if you included previous bltouch code
; M420 S1 ;Activate mesh bed levels from calibration, add only if you have done the bed leveling
G1 Z15.0 F6000 ;Move the platform down 15mm
;Prime the extruder
G92 E0
G1 F200 E3
G92 E0
M201 X750 Y750 Z750 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm/sec
M204 P1250 R1250 T1250 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z0.40 E1.50 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec


# Stop gcode (Do not include this line)
M104 S0
M140 S0 ;Retract the filament
G92 E1
G1 E-1 F300
G28 X0 Y0
M84
M81 192.168.0.13 ;send order to switch off electric socket at address 192.168.0.13 through octoprint


# Other settings/properties
## Printer
X (Width): 300mm
Y (Depth): 300mm
Z (Height): 400mm
Build plate shape: Rectangular
Origin at center: no
Heater bed: yes
Heated build volume: no
G-code flavor: Marlin

## Printhead Settings:
X mm: -20mm
Y mm: -10mm
Xmax: 10mm
Ymax: 10mm
Gantry Height: 400mm
Number of Extruders: 1

## Nozzle
nozzel size: 0.4 mm
Compatible material diameter: 1.75mm
Nozzle offset X: 0mm
Nozzle offset Y: 0mm
Cooling Fan Number: 0


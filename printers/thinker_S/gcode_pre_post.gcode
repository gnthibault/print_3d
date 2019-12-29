# Start gcode
G28 ;Home
G1 Z15.0 F6000 ;Move the platform down 15mm
;Prime the extruder
G92 E0
G1 F200 E3
G92 E0
M201 X1000 Y1000 Z1000 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm/sec
M204 P1250 R1250 T1250 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z0.40 E1.50 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec

# Stop gcode
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


; Ender 3 Start G-Code

M117 Heating Bed
M140 S{material_bed_temperature_layer_0}            ; Set Heat Bed temperature
M190 S{material_bed_temperature_layer_0}            ; Wait for Heat Bed temperature

M117 Warming Extruder
M104 S160                                           ; Start warming extruder to 160

M117 Probing Bed
G28                                                 ; Home all axes
G92 E0                                              ; Reset Extruder

M117 Heating Extruder
M104 S{material_print_temperature_layer_0}          ; Set Extruder temperature
G1 Z2.0 F3000                                       ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X2.1 Y20 Z0.3 F5000.0                            ; Move to start position
M109 S{material_print_temperature_layer_0}          ; Wait for Extruder temperature

M117 Purging Extruder
G1 X4.1 Y200.0 Z0.3 F1500.0 E15                     ; Draw the first line
G1 X4.4 Y200.0 Z0.3 F5000.0                         ; Move to side a little
G1 X4.4 Y20 Z0.3 F1500.0 E30                        ; Draw the second line
G92 E0                                              ; Reset Extruder

G1 Z2.0 F3000                                       ; Move Z Axis up little to prevent scratching of Heat Bed

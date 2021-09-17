;===================================================================================================
; PRESET DATA HEADER
;===================================================================================================
presetheader_defeatmoldorm:
	dw presetSRAM_defeatmoldorm ; location of SRAM
	dw presetpersistent_defeatmoldorm ; location of persistent data

;===================================================================================================
%menu_header("Defeat Moldorm", 1)
	%submenu("Moldorm", presetmenu_defeatmoldorm_moldorm)

;===================================================================================================
;---------------------------------------------------------------------------------------------------
; MOLDORM
;---------------------------------------------------------------------------------------------------
;===================================================================================================
presetmenu_defeatmoldorm_moldorm:
%menu_header("Moldorm", 8)

;---------------------------------------------------------------------------------------------------
%preset_UW("Link's Bed", "defeatmoldorm", "moldorm", "links_bed")
dw $0104 ; Screen ID
dw $0940, $215A ; Link Coords
dw $0900, $2110 ; Camera HV
db $00 ; Item
db $02 ; Direction
;-----------------------------
db $00 ; Entrance
db $20 ; Room layout
db $00 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Courtyard", "defeatmoldorm", "moldorm", "courtyard")
dw $0055 ; Screen ID
dw $0A78, $0BE1 ; Link Coords
dw $0A00, $0B10 ; Camera HV
db $00 ; Item
db $02 ; Direction
;-----------------------------
db $7D ; Entrance
db $AF ; Room layout
db $01 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_OW("Castle", "defeatmoldorm", "moldorm", "castle")
dw $001B ; Screen ID
dw $07F8, $06F9 ; Link Coords
dw $0784, $069B ; Camera HV
db $00 ; Item
db $00 ; Direction
;-----------------------------
dw $0803, $0708 ; Scroll X,Y
dw $0530 ; Tilemap position
;-----------------------------
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Stair Clip", "defeatmoldorm", "moldorm", "stair_clip")
dw $0061 ; Screen ID
dw $03E7, $0CF8 ; Link Coords
dw $0300, $0C8C ; Camera HV
db $00 ; Item
db $06 ; Direction
;-----------------------------
db $04 ; Entrance
db $D0 ; Room layout
db $0A ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("EG Trudge", "defeatmoldorm", "moldorm", "eg_trudge")
dw $0062 ; Screen ID
dw $0540, $0D2F ; Link Coords
dw $04C8, $0CC3 ; Camera HV
db $00 ; Item
db $06 ; Direction
;-----------------------------
db $04 ; Entrance
db $F0 ; Room layout
db $00 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Don't Softlock", "defeatmoldorm", "moldorm", "dont_softlock")
dw $0086 ; Screen ID
dw $0DE8, $100C ; Link Coords
dw $0D00, $1002 ; Camera HV
db $00 ; Item
db $06 ; Direction
;-----------------------------
db $04 ; Entrance
db $10 ; Room layout
db $8C ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_OW("Hera Pot", "defeatmoldorm", "moldorm", "hera_pot")
dw $0003 ; Screen ID
dw $08F0, $007B ; Link Coords
dw $087C, $0017 ; Camera HV
db $00 ; Item
db $00 ; Direction
;-----------------------------
dw $08FB, $0086 ; Scroll X,Y
dw $0050 ; Tilemap position
;-----------------------------
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Moldorm", "defeatmoldorm", "moldorm", "moldorm")
dw $0017 ; Screen ID
dw $0FA8, $0270 ; Link Coords
dw $0F00, $0204 ; Camera HV
db $00 ; Item
db $00 ; Direction
;-----------------------------
db $33 ; Entrance
db $D4 ; Room layout
db $00 ; Door / Peg state / Layer
dw $0040 ; Dead sprites
;-----------------------------
%write_end()

;===================================================================================================
presetpersistent_defeatmoldorm:

;===================================================================================================
presetpersistent_defeatmoldorm_moldorm:
;-----------------------------
.links_bed
%write_sq()
%write8($7E0B08, $00) ; Arc variable
%write8($7E0B09, $00) ; Arc variable
%write8($7E02A1, $00) ; Slot 3 Altitude
%write8($7E02A2, $00) ; Slot 4 Altitude
%write8($7E047A, $00) ; Armed EG
%write8($7E044A, $00) ; EG strength
%write8($7E0FC7, $00) ; Prize pack 0
%write8($7E0FC8, $00) ; Prize pack 1
%write8($7E0FC9, $00) ; Prize pack 2
%write8($7E0FCA, $00) ; Prize pack 3
%write8($7E0FCB, $00) ; Prize pack 4
%write8($7E0FCC, $00) ; Prize pack 5
%write8($7E0FCD, $00) ; Prize pack 6
%write8($7E0FCE, $00) ; Prize pack 7
%write8($7E0CFB, $00) ; Rupee pull kills
%write8($7E0CFC, $00) ; Rupee pull hits
..end
;-----------------------------
.courtyard
%write8($7E044A, $02) ; EG strength
..end
;-----------------------------
.castle
..end
;-----------------------------
.stair_clip
..end
;-----------------------------
.eg_trudge
%write8($7E044A, $01) ; EG strength
..end
;-----------------------------
.dont_softlock
..end
;-----------------------------
.hera_pot
..end
;-----------------------------
.moldorm
..end

;===================================================================================================
presetSRAM_defeatmoldorm:
;-----------------------------
.moldorm
;-----------------------------
..links_bed
%write8($7EF36C, $18) ; Max HP
%write8($7EF36D, $18) ; Health
%write8($7EF36F, $FF) ; Keys
%write8($7EF379, $F8) ; Ability
%writeroom($104, $0002)
%writeroom($106, $F000)
%writeroom($107, $F000)
...end
;-----------------------------
..courtyard
%write8($7EF359, $01) ; Sword
%write8($7EF35A, $01) ; Shield
%write8($7EF3C5, $01) ; Game state
%write8($7EF3C6, $11) ; Game flags A
%write8($7EF3C8, $03) ; Spawn point
%write16sram($7EF360, $0001) ; Rupees
%writeroom($055, $000F)
...end
;-----------------------------
..castle
...end
;-----------------------------
..stair_clip
%write8($7EF36F, $00) ; Keys
%writeroom($061, $000F)
...end
;-----------------------------
..eg_trudge
%writeroom($062, $000F)
...end
;-----------------------------
..dont_softlock
%writeroom($063, $0002)
%writeroom($073, $000D)
%writeroom($074, $0003)
%writeroom($084, $000F)
%writeroom($085, $000F)
%writeroom($086, $000C)
...end
;-----------------------------
..hera_pot
%write8($7EF36F, $FF) ; Keys
%writeroom($077, $000F)
%writeroom($087, $000C)
...end
;-----------------------------
..moldorm
%write8($7EF36F, $00) ; Keys
%writeroom($017, $000F)
%writeroom($0A7, $000C)
...end
;===================================================================================================
presetend_defeatmoldorm:
print "defeatmoldorm size: $", hex(presetend_defeatmoldorm-presetheader_defeatmoldorm)

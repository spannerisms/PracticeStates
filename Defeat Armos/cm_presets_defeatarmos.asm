;===================================================================================================
; PRESET DATA HEADER
;===================================================================================================
presetheader_defeatarmos:
	dw presetSRAM_defeatarmos ; location of SRAM
	dw presetpersistent_defeatarmos ; location of persistent data

;===================================================================================================
%menu_header("Defeat Armos", 1)
	%submenu("Armos", presetmenu_defeatarmos_armos)

;===================================================================================================
;---------------------------------------------------------------------------------------------------
; ARMOS
;---------------------------------------------------------------------------------------------------
;===================================================================================================
presetmenu_defeatarmos_armos:
%menu_header("Armos", 17)

;---------------------------------------------------------------------------------------------------
%preset_UW("Link's Bed", "defeatarmos", "armos", "links_bed")
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
%write16_enable()
%write16($7E02CD, $0200) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_OW("Mandatory Clip", "defeatarmos", "armos", "mandatory_clip")
dw $002C ; Screen ID
dw $08B8, $0B05 ; Link Coords
dw $0832, $0AA7 ; Camera HV
db $09 ; Item
db $02 ; Direction
;-----------------------------
dw $08BF, $0B14 ; Scroll X,Y
dw $0506 ; Tilemap position
;-----------------------------
%write16_enable()
%write16($7E02CD, $0CD3) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_OW("Optional Clip", "defeatarmos", "armos", "optional_clip")
dw $002E ; Screen ID
dw $0C90, $0A06 ; Link Coords
dw $0C1E, $0A00 ; Camera HV
db $09 ; Item
db $06 ; Direction
;-----------------------------
dw $0C9B, $0A6D ; Scroll X,Y
dw $0002 ; Tilemap position
;-----------------------------
%write16_enable()
%write16($7E02CD, $08BA) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_OW("Entrance", "defeatarmos", "armos", "entrance")
dw $001E ; Screen ID
dw $0F50, $0A2A ; Link Coords
dw $0EDA, $091E ; Camera HV
db $09 ; Item
db $00 ; Direction
;-----------------------------
dw $0F57, $098D ; Scroll X,Y
dw $185C ; Tilemap position
;-----------------------------
%write16_enable()
%write16($7E02CD, $0565) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Cannonballs", "defeatarmos", "armos", "cannonballs")
dw $00C9 ; Screen ID
dw $12F8, $1815 ; Link Coords
dw $1280, $1800 ; Camera HV
db $09 ; Item
db $00 ; Direction
;-----------------------------
db $08 ; Entrance
db $80 ; Room layout
db $81 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $0450) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Stalfos Dodging", "defeatarmos", "armos", "stalfos_dodging")
dw $00A9 ; Screen ID
dw $120A, $14F8 ; Link Coords
dw $1200, $148B ; Camera HV
db $09 ; Item
db $04 ; Direction
;-----------------------------
db $08 ; Entrance
db $C0 ; Room layout
db $82 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $01B8) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Stalfos Room", "defeatarmos", "armos", "stalfos_room")
dw $00A8 ; Screen ID
dw $110A, $1578 ; Link Coords
dw $1100, $150B ; Camera HV
db $09 ; Item
db $04 ; Direction
;-----------------------------
db $08 ; Entrance
db $70 ; Room layout
db $02 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $00E2) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Big Chest Room 1", "defeatarmos", "armos", "big_chest_room_1")
dw $00A8 ; Screen ID
dw $11E8, $1478 ; Link Coords
dw $1100, $140B ; Camera HV
db $09 ; Item
db $06 ; Direction
;-----------------------------
db $08 ; Entrance
db $50 ; Room layout
db $0E ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $0C53) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Dark Antifairies Room", "defeatarmos", "armos", "dark_antifairies_room")
dw $00AA ; Screen ID
dw $1478, $15E1 ; Link Coords
dw $1400, $1510 ; Camera HV
db $09 ; Item
db $02 ; Direction
;-----------------------------
db $08 ; Entrance
db $60 ; Room layout
db $01 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $09EE) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Dark Key Room", "defeatarmos", "armos", "dark_key_room")
dw $00BA ; Screen ID
dw $14E7, $1678 ; Link Coords
dw $1400, $160B ; Camera HV
db $09 ; Item
db $06 ; Direction
;-----------------------------
db $08 ; Entrance
db $00 ; Room layout
db $82 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $093E) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Big Key Damage Boost", "defeatarmos", "armos", "big_key_damage_boost")
dw $00B9 ; Screen ID
dw $120A, $1678 ; Link Coords
dw $1200, $160B ; Camera HV
db $09 ; Item
db $04 ; Direction
;-----------------------------
db $08 ; Entrance
db $C0 ; Room layout
db $02 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $05B5) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Big Chest Room 2", "defeatarmos", "armos", "big_chest_room_2")
dw $00A8 ; Screen ID
dw $11E8, $1478 ; Link Coords
dw $1100, $140B ; Camera HV
db $09 ; Item
db $06 ; Direction
;-----------------------------
db $08 ; Entrance
db $50 ; Room layout
db $0E ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $0289) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Gifted with Greenies", "defeatarmos", "armos", "gifted_with_greenies")
dw $00A9 ; Screen ID
dw $12F8, $1415 ; Link Coords
dw $1280, $1400 ; Camera HV
db $09 ; Item
db $00 ; Direction
;-----------------------------
db $08 ; Entrance
db $C0 ; Room layout
db $01 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $001E) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Pot Room", "defeatarmos", "armos", "pot_room")
dw $0099 ; Screen ID
dw $1278, $1320 ; Link Coords
dw $1200, $1300 ; Camera HV
db $03 ; Item
db $00 ; Direction
;-----------------------------
db $08 ; Entrance
db $A0 ; Room layout
db $00 ; Door / Peg state / Layer
dw $0008 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $0CE4) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Zeldagamer Room", "defeatarmos", "armos", "zeldagamer_room")
dw $00D9 ; Screen ID
dw $120A, $1B78 ; Link Coords
dw $1200, $1B0B ; Camera HV
db $03 ; Item
db $04 ; Direction
;-----------------------------
db $08 ; Entrance
db $21 ; Room layout
db $82 ; Door / Peg state / Layer
dw $0000 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $0AE3) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Swordless Double Reddies", "defeatarmos", "armos", "swordless_double_reddies")
dw $00D8 ; Screen ID
dw $1178, $1B14 ; Link Coords
dw $1100, $1B00 ; Camera HV
db $03 ; Item
db $00 ; Direction
;-----------------------------
db $08 ; Entrance
db $31 ; Room layout
db $81 ; Door / Peg state / Layer
dw $0700 ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $09E0) ; Zelda message
%write_end()

;---------------------------------------------------------------------------------------------------
%preset_UW("Armos", "defeatarmos", "armos", "armos")
dw $00D8 ; Screen ID
dw $1178, $1A15 ; Link Coords
dw $1100, $1A00 ; Camera HV
db $03 ; Item
db $00 ; Direction
;-----------------------------
db $08 ; Entrance
db $11 ; Room layout
db $81 ; Door / Peg state / Layer
dw $07FF ; Dead sprites
;-----------------------------
%write16_enable()
%write16($7E02CD, $07DC) ; Zelda message
%write_end()

;===================================================================================================
presetpersistent_defeatarmos:

;===================================================================================================
presetpersistent_defeatarmos_armos:
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
.mandatory_clip
..end
;-----------------------------
.optional_clip
..end
;-----------------------------
.entrance
..end
;-----------------------------
.cannonballs
%write8($7E044A, $02) ; EG strength
..end
;-----------------------------
.stalfos_dodging
%write8($7E044A, $01) ; EG strength
..end
;-----------------------------
.stalfos_room
%write8($7E0CFC, $01) ; Rupee pull hits
..end
;-----------------------------
.big_chest_room_1
%write8($7E0CFB, $02) ; Rupee pull kills
..end
;-----------------------------
.dark_antifairies_room
..end
;-----------------------------
.dark_key_room
%write8($7E0CFC, $02) ; Rupee pull hits
..end
;-----------------------------
.big_key_damage_boost
..end
;-----------------------------
.big_chest_room_2
%write8($7E0CFC, $04) ; Rupee pull hits
..end
;-----------------------------
.gifted_with_greenies
..end
;-----------------------------
.pot_room
%write8($7E044A, $02) ; EG strength
%write8($7E0CFB, $03) ; Rupee pull kills
..end
;-----------------------------
.zeldagamer_room
..end
;-----------------------------
.swordless_double_reddies
%write8($7E0FCC, $02) ; Prize pack 5
%write8($7E0CFB, $06) ; Rupee pull kills
..end
;-----------------------------
.armos
%write8($7E0FC8, $05) ; Prize pack 1
%write8($7E0FCB, $02) ; Prize pack 4
%write8($7E0CFB, $0E) ; Rupee pull kills
..end

;===================================================================================================
presetSRAM_defeatarmos:
;-----------------------------
.armos
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
..mandatory_clip
%write8($7EF34A, $01) ; Lamp
%write8($7EF3C6, $10) ; Game flags A
%write8($7EF3CC, $05) ; Follower
%writeroom($104, $0012)
...end
;-----------------------------
..optional_clip
...end
;-----------------------------
..entrance
...end
;-----------------------------
..cannonballs
%write8($7EF36F, $00) ; Keys
%writeroom($0C9, $000F)
...end
;-----------------------------
..stalfos_dodging
%writeroom($0A9, $000F)
%writeroom($0B9, $000F)
...end
;-----------------------------
..stalfos_room
%write8($7EF36D, $14) ; Health
%writeroom($0A8, $0005)
...end
;-----------------------------
..big_chest_room_1
%writeroom($0A8, $000F)
...end
;-----------------------------
..dark_antifairies_room
%write8($7EF377, $05) ; Arrows
%writeroom($0AA, $000A)
...end
;-----------------------------
..dark_key_room
%write8($7EF36D, $10) ; Health
%writeroom($0BA, $0008)
...end
;-----------------------------
..big_key_damage_boost
%write8($7EF36D, $18) ; Health
%writeroom($0BA, $840C)
...end
;-----------------------------
..big_chest_room_2
%write8($7EF36D, $0C) ; Health
%write16sram($7EF366, $2000) ; Big keys
%writeroom($0B8, $8015)
%writeroom($0B9, $800F)
...end
;-----------------------------
..gifted_with_greenies
%write8($7EF340, $02) ; Bow
%write8($7EF377, $0F) ; Arrows
%writeroom($0A8, $200F)
%writeroom($0A9, $001F)
...end
;-----------------------------
..pot_room
%write8($7EF36E, $10) ; Magic
%write8($7EF377, $0E) ; Arrows
%writeroom($099, $0403)
%writeroom($0A9, $201F)
...end
;-----------------------------
..zeldagamer_room
%write8($7EF377, $18) ; Arrows
%writeroom($099, $C403)
%writeroom($0D9, $0003)
%writeroom($0DA, $0002)
...end
;-----------------------------
..swordless_double_reddies
%write8($7EF377, $1A) ; Arrows
%writeroom($0D8, $0001)
...end
;-----------------------------
..armos
%write8($7EF36D, $14) ; Health
%write8($7EF377, $15) ; Arrows
%write16sram($7EF360, $0006) ; Rupees
%writeroom($0D8, $0005)
...end
;===================================================================================================
presetend_defeatarmos:
print "defeatarmos size: $", hex(presetend_defeatarmos-presetheader_defeatarmos)

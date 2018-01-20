/// @description Game Initialization

randomize()

#macro view_width 200
#macro view_height 100
#macro block_size 20
window_set_fullscreen(true)

var dw = display_get_width(), dh = display_get_height()
var aspect = dw / view_width
var vw = dw, vh = view_height * aspect

var caspect = floor(dw / block_size) - 1
var cw = caspect * block_size
var ch = view_height * caspect
var vpx = (dw - cw) / 2
for (var i = room_first; room_exists(i); i = room_next(i)) {
	room_set_view_enabled(i, true)
	room_set_viewport(i, 0, true, vpx, 0, cw, ch)
}

display_set_gui_size(dw, vh)
window_set_size(dw, dh)

global.gui_wsize = display_get_gui_width()
global.gui_hsize = display_get_gui_height()
//*/

global.Gamepad = -1
global.GamepadType = 0
global.GamepadSprite = array_create(3, sIconControllerXbox, sIconControllerPlayStation, sIconControllerOther)

zui_main()
global.applicable = true
application_surface_draw_enable(true)

#macro gamepad_type_xbox 0
#macro gamepad_type_playstation 1
#macro gamepad_type_other 2

#macro gamepad_index global.Gamepad
#macro gamepad_type global.GamepadType
#macro gamepad_sprite global.GamepadSprite[global.GamepadType]

if gamepad_is_supported() {
	gp_number = gamepad_get_device_count()
	
	if gp_number > 0 {
		for (var i = 0; i < gp_number; ++i) {
			if gamepad_is_connected(i) {
				gamepad_index = i // only pick first controller
				var cerif = string_lower(gamepad_get_description(i))
				if string_pos("xbox", cerif) != 0 {
					gamepad_type = gamepad_type_xbox
				} else if string_pos("playstation", cerif) != 0 {
					gamepad_type = gamepad_type_playstation
				} else {
					gamepad_type = gamepad_type_other
				}
				break
			}
		}
	}
}

instance_create_depth(0,  0,  -1000, oGlobal)

// status for all. (Player only uses some)
#macro status_idle 0
#macro status_await 1
#macro status_attack 30
#macro status_stun 80
#macro status_dead 98

// item (Stackable, Wouldn't be carried on the inventory)
#macro ITEM_HOOF 1
#macro ITEM_JETPACK_OLD 2
#macro ITEM_ADRENALINE 3
#macro ITEM_FORK 4
#macro ITEM_FAN 5
#macro ITEM_GLOVE 6
#macro ITEM_HPKIT 7

// item (Will be carried on the inventory)
#macro ITEM_WEAPON_SWORD_LONG "sword_long"
#macro ITEM_WEAPON_SWORD_GREATER "sword_big"
#macro ITEM_WEAPON_AXE_CHOP "axe_chop"
#macro ITEM_WEAPON_AXE_SPEED "axe_fast"
#macro ITEM_WEAPON_MACE_HEAVY "mace_slow"
#macro ITEM_WEAPON_MACE_SPIKE "mace_hurt"
#macro ITEM_WEAPON_SPEAR_REACH "spear_long"
#macro ITEM_WEAPON_SPEAR_FORK "spear_fast"

// abilities for enemy
#macro ABILITY_JUMP 1 // enemy can jump on cliff
#macro ABILITY_CHASE 2 // enemy will chase you
#macro ABILITY_ATTACK1 3 // enemy can attack with kind of first
#macro ABILITY_ATTACK2 4 // enemy can attack with kind of second
#macro ABILITY_ATTACK3 4 // enemy can attack with kind of third

global.item_dictionary = ds_map_create()
item_register(ITEM_HOOF, "Hoof", "You can run faster.", "Movement +10%")
item_register(ITEM_JETPACK_OLD, "Old Jetpack", "You can jump longer.", "Time +10%")
item_register(ITEM_ADRENALINE, "Adrenaliine", "You can attack faster.", "Attack speed +10%")
item_register(ITEM_FORK, "Trifork", "You now have more damage.", "Damage +10%")
item_register(ITEM_FAN, "Fan of Knifes", "Nearby enemies would be hit by knives.", "Fire 25% DMG knives")
item_register(ITEM_GLOVE, "Gloves", "You can block some projectiles.", "1% probality")
item_register(ITEM_HPKIT, "Health Kit", "Heal after being hit.", "Gain 10 HP")

// 1스프라이트, 2최소 공격력, 3최대 공격력, 4속도(초), 5범위(20px * 칸)
// 6방식, 7초기 딜레이(초), 8부가효과 스크립트
// 공격 방식:
/*	0: 위에서 아래로 베기
		1: 앞으로 찌르기
		2: 제자리에서 돌기
		3: 뒤에서 앞까지 휘두르기
*/
var attr_swordlong = weapon_attribute(sItemWeaponSwordLong, 7, 10, 1, 0.8, 3, 1.5, -1)
item_register(ITEM_WEAPON_SWORD_LONG, "Long Sword", "Swing in Circle.", "", attr_swordlong)
var attr_swordgreater = weapon_attribute(sItemWeaponSwordLong, 9.1, 13, 1.1, 0.8, 3, 1.5, -1)
item_register(ITEM_WEAPON_SWORD_GREATER, "Great Sword", "More Power.", "Damage +30%", attr_swordgreater)
item_register(ITEM_WEAPON_AXE_CHOP, "Chopping Axe", "Swing horizontally, More Power.", "Damage +30%", 0)
item_register(ITEM_WEAPON_AXE_SPEED, "Axe of Speed", "Swing Faster", "Attack speed +15%", 0)
item_register(ITEM_WEAPON_MACE_HEAVY, "Heavy Mace", "More Power.", "Damage +30%", 0)
item_register(ITEM_WEAPON_MACE_SPIKE, "Bleeding Mace", "Additional Effect", "Bleed Damge, Make Slow", 0)
item_register(ITEM_WEAPON_SPEAR_REACH, "Spear", "Long Range, Fast", "", 0)
item_register(ITEM_WEAPON_SPEAR_FORK, "Trident", "More Power, Additional Effect", "Damage +30%, Knock back", 0)

alarm[0] = 1;

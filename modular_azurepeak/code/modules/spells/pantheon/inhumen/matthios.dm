#define EQUALIZED_GLOW "equalizer glow"
//////////////////////////
// T0 - Freeman's Tools //
//////////////////////////
// This is a multi-tier miracle that at its base just provides Pocket Sand, a Bread potion and a worse Lesser Knock.

// It provides more and better tools the higher your Miracle tier skill is, all the way to Master/Legendary.

// Most of the things included here envision utility and non-combat applications, and dhe "alchemy" part offers the
// means to convert discarded adven trash and item clutter into useful things.

/datum/action/cooldown/spell/freemans_tools
	button_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	button_icon_state = "lockpick"
	name = "Freeman's Tools"
	desc = "A simple prayer to the Free-God Matthios, for tools of liberation or transaction.<br><br>His will manifests in three forms: gutter-born tricks of want, gilded tools of blessed liberation, or by granting the bases of Malchem, a form of primordial alchemy so impossible it is oft mistaken for sorcery."
	associated_skill = /datum/skill/magic/holy
	click_to_activate = FALSE
	self_cast_possible = TRUE
	primary_resource_type = SPELL_COST_STAMINA
	primary_resource_cost = SPELLCOST_CANTRIP
	charge_required = FALSE
	cooldown_time = 10 SECONDS
	spell_requirements = SPELL_REQUIRES_NO_ANTIMAGIC | SPELL_REQUIRES_HUMAN | SPELL_REQUIRES_SAME_Z
	var/devotion_cost = 20
	var/list/options = list(
		//a simple 'blinds u for 1 sec' throwable
		"Pocket Sand" = list(
			path = /obj/item/impact_grenade/pocketsand,
			m_cooldown = 60 SECONDS,
			m_rank = SKILL_LEVEL_NOVICE,
			category = "Rogue Arts",
			lines = list("Dust to blind thee!", "A handful of freedom!", "A gift for thee!", "Mind yer eyes!", "This always works like a miracle!")
		),
		//basically just lesser knock
		"Gilded Lockpick" = list(
			path = /obj/item/melee/touch_attack/lesserknock/matthios,
			m_cooldown = 5 SECONDS,
			m_rank = SKILL_LEVEL_NOVICE,
			category = "Gilded Tools",
			lines = list("#By thine hands...", "#No locks shall bar the free!", "#Thine tool shall bring liberation!", "#Matthios, shatter my locks!")
		),
		//freely spawns 400 mammon!!! no wae! is this trve?!!?!??
		"Pouch of Bribery" = list(
			path = /obj/item/storage/belt/rogue/pouch/coins/matthios,
			m_cooldown = 5 MINUTES,
			m_rank = SKILL_LEVEL_EXPERT,
			category = "Rogue Arts",
			lines = list("#Coin begets coin!", "#Matthios, grant me a sliver of thy wealth!", "#Wealth through will, as He demands!", "#Matthios, see to my poverty!")
		),
		//makes failed lockpicking attempts muffled
		"Gilded Dexterous Gloves" = list(
			path = /obj/item/clothing/gloves/roguetown/fingerless_leather/muffle_matthios,
			m_cooldown = 5 MINUTES,
			m_rank = SKILL_LEVEL_JOURNEYMAN,
			category = "Gilded Tools",
			lines = list("#Hands of trade, be silent.", "#Let fingers dance for thy amusement.", "#Dexterity bought in faith.")
		),
		//makes your footsteps muffled
		"Gilded Muffled Boots" = list(
			path = /obj/item/clothing/shoes/roguetown/boots/muffle_matthios,
			m_cooldown = 5 MINUTES,
			m_rank = SKILL_LEVEL_APPRENTICE,
			category = "Gilded Tools",
			lines = list("#Steps unheard, as I walk in thy shadow.", "#Silent as coin slipping, for thy hoard.", "#No sound, no chain, no better wisdom, O' Lord.")
		),
		//enables piss night vision and sets your lockpick timer to 3 secs, makes you insane over time and prolonged use
		"Gilded Lockpicking Specs" = list(
			path = /obj/item/clothing/mask/rogue/spectacles/matthios,
			m_cooldown = -1, // this is too stronk, so only 1 allowed
			m_rank = SKILL_LEVEL_EXPERT,
			category = "Gilded Tools",
			lines = list("#Guide my sight, O' Matthios.","#Through pins and wards, thy Free eyes see.","#No door shall be between me and truth.")
		),
		//normal chains that bind nobility faster
		"Gilded Chains" = list(
			path = /obj/item/rope/chain/matthios,
			m_cooldown = 10 MINUTES,
			m_rank = SKILL_LEVEL_JOURNEYMAN,
			category = "Gilded Tools",
			lines = list("Matthios! Chains for the tyrants!", "Matthios! Transact me thy chains!", "Lord of Freedom, chains for the unworthy!")
		),
		//enables thieves' cant when worn on neck
		"Gilded Amulet of Matthios" = list(
			path = /obj/item/clothing/neck/roguetown/psicross/inhumen/matthios/gilded,
			m_cooldown = 30 MINUTES,
			m_rank = SKILL_LEVEL_NOVICE,
			category = "Gilded Tools",
			lines = list("#Matthios, let thine will be done.", "#Lord of Exchange, my soul is yours.", "#God of the Stolen Fyre, thou will be done.")
		),
		//miralchemy mode on
		"Vial of Firstlaw" = list(
			path = /obj/item/matthios_canister/firstlaw,
			m_cooldown = 1 MINUTES,
			m_rank = SKILL_LEVEL_NOVICE,
			category = "Malchem Vials",
			lines = list("#Matthios, provide the base, I shall complete thy work!", "#Matthios! Deliver unto me the truth of alchemy!", "#Lord of Exchange, I shall finish thy work!")
		),
		//turns 10 organic items into 1 rich food of choice (that will often be burned mess or bread if you're not starving to death)
		"Vial of Kingsfeast Base" = list(
			path = /obj/item/matthios_canister/kingsfeast,
			m_cooldown = 2 MINUTES,
			m_rank = SKILL_LEVEL_NOVICE,
			category = "Malchem Vials",
			lines = list("#Matthios, provide the base, I shall complete thy work!", "#Matthios! Deliver unto me the truth of alchemy!", "#Lord of Exchange, I shall finish thy work!")
		),
		//basically turns water or fruits into wine, if used with blood or lux instead, becomes Kingsblood
		"Vial of Kingswine Base" = list(
			path = /obj/item/matthios_canister/kingswine,
			m_cooldown = 2 MINUTES,
			m_rank = SKILL_LEVEL_NOVICE,
			category = "Malchem Vials",
			lines = list("#Matthios, provide the base, I shall complete thy work!", "#Matthios! Deliver unto me the truth of alchemy!", "#Lord of Exchange, I shall finish thy work!")
		),
		//makes you honk shoo mimimi, while restoring energy over time
		"Vial of Goodnite Base" = list(
			path = /obj/item/matthios_canister/goodnite,
			m_cooldown = 2 MINUTES,
			m_rank = SKILL_LEVEL_APPRENTICE,
			category = "Malchem Vials",
			lines = list("#Matthios, provide the base, I shall complete thy work!", "#Matthios! Deliver unto me the truth of alchemy!", "#Lord of Exchange, I shall finish thy work!")
		),
		//a 4 use vial of mending
		"Vial of Warsmith Base" = list(
			path = /obj/item/matthios_canister/warsmith,
			m_cooldown = 2 MINUTES,
			m_rank = SKILL_LEVEL_JOURNEYMAN,
			category = "Malchem Vials",
			lines = list("#Matthios, provide the base, I shall complete thy work!", "#Matthios! Deliver unto me the truth of alchemy!", "#Lord of Exchange, I shall finish thy work!")
		),
		// idk what else, but it should be used by baothans, something they'll want a lot
/*		"Vial of Liquid Desire Base" = list(
			path = /obj/item/matthios_canister/baotha,
			m_cooldown = 10 MINUTES,
			m_rank = SKILL_LEVEL_MASTER,
			category = "Malchem Vials",
			lines = list("Matthios, provide the base, I shall complete thy work!", "Matthios! Deliver unto me the truth of alchemy!", "Lord of Exchange, I shall finish thy work!")
		),
		// same idea but graggarites
		"Vial of Liquid Bloodlust Base" = list(
			path = /obj/item/matthios_canister/graggar,
			m_cooldown = 10 MINUTES,
			m_rank = SKILL_LEVEL_MASTER,
			category = "Malchem Vials",
			lines = list("Matthios, provide the base, I shall complete thy work!", "Matthios! Deliver unto me the truth of alchemy!", "Lord of Exchange, I shall finish thy work!")
		),
		// same idea but zizoids
		"Vial of Liquid Progress Base" = list(
			path = /obj/item/matthios_canister/zizo,
			m_cooldown = 10 MINUTES,
			m_rank = SKILL_LEVEL_MASTER,
			category = "Malchem Vials",
			lines = list("Matthios, provide the base, I shall complete thy work!", "Matthios! Deliver unto me the truth of alchemy!", "Lord of Exchange, I shall finish thy work!")
		),
		// the og idea was to make this deconvert nobles but idk now
		"Vial of Liquid Freedom Base" = list(
			path = /obj/item/matthios_canister/matthios,
			m_cooldown = 10 MINUTES,
			m_rank = SKILL_LEVEL_MASTER,
			category = "Malchem Vials",
			lines = list("Matthios, provide the base, I shall complete thy work!", "Matthios! Deliver unto me the truth of alchemy!", "Lord of Exchange, I shall finish thy work!")
		),*/

		// a spicy, explosive, very, very difficult-to-make revive vial, uses all herbs in the world and 1 of any lux type
		"Vial of Lyfestruth Base" = list(
			path = /obj/item/matthios_canister/lyfestruth,
			m_cooldown = 30 MINUTES,
			m_rank = SKILL_LEVEL_EXPERT,
			category = "Malchem Vials",
			lines = list("#Matthios, provide the base, I shall complete thy work!", "#Matthios! Deliver unto me the truth of alchemy!", "#Lord of Exchange, I shall finish thy work!")
		),
		// a spicy, explosive grenade that ignites over a massive area, making tennites and nobles roll in agony and go insane
		// but in my BETTER JUDGEMENT, this is just my early april fools joke, go to sleep my child
//		"Vial of Truthsnuke Base" = list(
//			path = /obj/item/matthios_canister/truthsnuke,
//			m_cooldown = -1, // single use
//			m_rank = SKILL_LEVEL_MASTER, // exclusive to devotee missionary/heretics
//			category = "Malchem Vials",
//			lines = list("Matthios, provide the base, I shall complete thy work!", "Matthios! Deliver unto me the truth of alchemy!", "Lord of Exchange, I shall finish thy work!")
//		),
		// MIGHT be enough tools but this thing here lets anyone add anything as much as they want, have fun!
		// I'll probably reuse this as a template for a Zizo Artificery miracle in the future.
	)

	var/list/item_cooldowns = list()

/datum/action/cooldown/spell/freemans_tools/cast(atom/cast_on)
	. = ..()
	var/mob/living/carbon/human/H = owner
	if(!istype(H))
		return FALSE

	var/skill = H.get_skill_level(associated_skill)

	// FILTER VALID OPTIONS
	var/list/valid = list()
	for(var/name in options)
		var/list/entry = options[name]
		if(!islist(entry))
			continue
		if(skill >= entry["m_rank"])
			valid[name] = entry

	if(!valid.len)
		return FALSE

	// CATEGORY SELECTION
	var/list/categories = list(
		"Rogue Arts",
		"Gilded Tools",
		"Malchem Vials"
	)

	var/category = tgui_input_list(H, "Choose your path", "Freeman's Tools", categories)
	if(!category)
		return FALSE

	// BUILD DISPLAY LIST
	var/list/display = list()

	for(var/name in valid)
		var/list/entry = valid[name]

		if(entry["category"] != category)
			continue

		var/cd = item_cooldowns[name]
		var/display_name

		if(cd == -1)
			display_name = "[name] (UNAVAILABLE)"
		else
			var/time_left = cd ? max(0, cd - world.time) : 0
			display_name = time_left > 0 ? "[name] ([round(time_left/10, 1)]s)" : name

		display[display_name] = name

	if(!display.len)
		to_chat(H, span_warning("Nothing available in this category."))
		return FALSE

	// CHOICE
	var/choice_display = tgui_input_list(H, "Choose your tool", "Freeman's Tools", display)
	if(!choice_display)
		return FALSE

	var/choice = display[choice_display]
	if(!choice)
		return FALSE

	var/list/entry = valid[choice]
	var/item_path = entry["path"]
	var/m_cd = entry["m_cooldown"]
	var/list/lines = entry["lines"]

	if(!item_path)
		return FALSE

	// COOLDOWN CHECK
	if(item_cooldowns[choice] == -1)
		to_chat(H, span_warning("[choice] cannot be used again."))
		return FALSE

	if(item_cooldowns[choice] && world.time < item_cooldowns[choice])
		to_chat(H, span_warning("[choice] is on cooldown for [round((item_cooldowns[choice] - world.time)/10, 1)] seconds."))
		return FALSE

	// SPAWN ITEM
	var/obj/item/I = new item_path(H.drop_location())
	if(!I)
		return FALSE

	H.put_in_hands(I)

	if(lines && lines.len)
		H.say(pick(lines))

	// APPLY COOLDOWN
	if(m_cd == -1)
		item_cooldowns[choice] = -1
	else
		item_cooldowns[choice] = world.time + m_cd

	StartCooldown()
	return TRUE

// T0: Determine the net mammon value of target

/obj/effect/proc_holder/spell/invoked/appraise
	name = "Appraise"
	desc = "Tells you how many mammons someone has on them and in the nervelock."
	overlay_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	action_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	overlay_state = "appraise"
	releasedrain = 10
	chargedrain = 0
	chargetime = 0
	range = 2
	warnie = "sydwarning"
	movement_interrupt = FALSE
	invocation_type = "none"
	associated_skill = /datum/skill/magic/holy
	antimagic_allowed = TRUE
	recharge_time = 5 SECONDS
	miracle = TRUE
	devotion_cost = 0

/obj/effect/proc_holder/spell/invoked/appraise/secular
	name = "Secular Appraise"
	overlay_icon = 'icons/mob/actions/genericmiracles.dmi'
	action_icon = 'icons/mob/actions/genericmiracles.dmi'
	overlay_state = "appraise"
	range = 2
	associated_skill = /datum/skill/misc/reading // idk reading is like Accounting right
	miracle = FALSE
	devotion_cost = 0 //Merchants are not clerics


/obj/effect/proc_holder/spell/invoked/appraise/cast(list/targets, mob/living/user)
	if(ishuman(targets[1]))
		var/mob/living/carbon/human/target = targets[1]
		if(HAS_TRAIT(target, TRAIT_DECEIVING_MEEKNESS) && target != user)
			to_chat(user, "<font color='yellow'>I cannot tell...</font>")
			if(prob(50 + ((target.STAPER - 10) * 10)))
				to_chat(target, span_warning("A pair of prying eyes were laid on me..."))
			return
		var/mammonsonperson = get_mammons_in_atom(target)
		var/mammonsinbank = SStreasury.bank_accounts[target] ? SStreasury.bank_accounts[target] : 0
		var/totalvalue = mammonsinbank + mammonsonperson
		to_chat(user, ("<font color='yellow'>[target] has [mammonsonperson] mammons on them, [mammonsinbank] in their nervelock, for a total of [totalvalue] mammons.</font>"))

// T1 - Take value of item in hand, apply that as healing. Destroys item.

/obj/effect/proc_holder/spell/invoked/transact
	name = "Transact"
	desc = "Sacrifice an item in your hand, applying a heal over time to yourself with strength depending on its value."
	overlay_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	action_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	overlay_state = "transact"
	releasedrain = 30
	chargedrain = 0
	chargetime = 0
	range = 4
	warnie = "sydwarning"
	movement_interrupt = FALSE
	invocation_type = "none"
	associated_skill = /datum/skill/magic/holy
	antimagic_allowed = TRUE
	recharge_time = 20 SECONDS
	miracle = TRUE
	devotion_cost = 20


/obj/effect/proc_holder/spell/invoked/transact/cast(list/targets, mob/living/user)
	. = ..()
	var/obj/item/held_item = user.get_active_held_item()
	if(!held_item)
		to_chat(user, span_info("I need something of value to make a transaction..."))
		return
	var/helditemvalue = held_item.get_real_price()
	if(!helditemvalue)
		to_chat(user, span_info("This has no value, It will be of no use In such a transaction."))
		return
	if(helditemvalue<10)
		to_chat(user, span_info("This has little value, It will be of no use In such a transaction."))
		return
	if(isliving(targets[1]))
		var/mob/living/target = targets[1]
		if(HAS_TRAIT(target, TRAIT_PSYDONITE))
			user.playsound_local(user, 'sound/magic/PSY.ogg', 100, FALSE, -1)
			target.visible_message(span_info("[target] stirs for a moment, the miracle dissipates."), span_notice("A dull warmth swells in your heart, only to fade as quickly as it arrived."))
			playsound(target, 'sound/magic/PSY.ogg', 100, FALSE, -1)
			return FALSE
		user.visible_message(span_notice("The transaction Is made, [target] Is bathed In empowerment!"))
		to_chat(user, "<font color='yellow'>[held_item] burns into the air suddenly, my Transaction is accepted.</font>")
		if(iscarbon(target))
			var/mob/living/carbon/C = target
			var/datum/status_effect/buff/healing/heal_effect = C.apply_status_effect(/datum/status_effect/buff/healing)
			heal_effect.healing_on_tick = helditemvalue/2
			playsound(user, 'sound/combat/hits/burn (2).ogg', 100, TRUE)
			qdel(held_item)
		else
			target.adjustBruteLoss(helditemvalue/2)
			target.adjustFireLoss(helditemvalue/2)
			playsound(user, 'sound/combat/hits/burn (2).ogg', 100, TRUE)
			qdel(held_item)
		return TRUE
	revert_cast()
	return FALSE

// T2 We're going to debuff a targets stats = to the difference between us and them in total stats.

/obj/effect/proc_holder/spell/invoked/equalize
	name = "Equalize"
	desc = "Create equality, with a thumb on the scales, with your target. Siphon strength, speed, and constitution from them."
	overlay_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	action_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	overlay_state = "equalize"
	clothes_req = FALSE
	associated_skill = /datum/skill/magic/holy
	chargedloop = /datum/looping_sound/invokeascendant
	sound = 'sound/magic/swap.ogg'
	chargedrain = 0
	chargetime = 50
	releasedrain = 60
	no_early_release = TRUE
	antimagic_allowed = TRUE
	movement_interrupt = FALSE
	recharge_time = 2 MINUTES
	range = 4


/obj/effect/proc_holder/spell/invoked/equalize/cast(list/targets, mob/living/user)
	if(ishuman(targets[1]))
		var/mob/living/target = targets[1]
		target.apply_status_effect(/datum/status_effect/debuff/equalizedebuff)
		user.apply_status_effect(/datum/status_effect/buff/equalizebuff)
		return TRUE
	revert_cast()
	return FALSE


// buff
/datum/status_effect/buff/equalizebuff
	id = "equalize"
	alert_type = /atom/movable/screen/alert/status_effect/buff/equalized
	effectedstats = list(STATKEY_STR = 2, STATKEY_CON = 2, STATKEY_SPD = 2)
	duration = 1 MINUTES
	var/outline_colour = "#FFD700"


/atom/movable/screen/alert/status_effect/buff/equalized
	name = "Equalized"
	desc = "Equalized, with a gentle thumb on the scale, tactfully."

/datum/status_effect/buff/equalizebuff/on_apply()
	. = ..()
	owner.add_filter(EQUALIZED_GLOW, 2, list("type" = "outline", "color" = outline_colour, "alpha" = 200, "size" = 1))

/datum/status_effect/buff/equalizebuff/on_remove()
	. = ..()
	owner.remove_filter(EQUALIZED_GLOW)
	to_chat(owner, "<font color='yellow'>My link wears off, their stolen fire returns to them</font>")


// debuff
/datum/status_effect/debuff/equalizedebuff
	id = "equalize"
	alert_type = /atom/movable/screen/alert/status_effect/buff/equalized
	effectedstats = list(STATKEY_STR = -2, STATKEY_CON = -2, STATKEY_SPD = -2)
	duration = 1 MINUTES
	var/outline_colour = "#FFD700"

/atom/movable/screen/alert/status_effect/debuff/equalized
	name = "Equalized"
	desc = "My fire is stolen from me!"

/datum/status_effect/debuff/equalizedebuff/on_apply()
	. = ..()
	owner.add_filter(EQUALIZED_GLOW, 2, list("type" = "outline", "color" = outline_colour, "alpha" = 200, "size" = 1))

/datum/status_effect/debuff/equalizedebuff/on_remove()
	. = ..()
	owner.remove_filter(EQUALIZED_GLOW)
	to_chat(owner, "<font color='yellow'>My fire returns to me!</font>")



//T3 COUNT WEALTH, HURT TARGET/APPLY EFFECTS BASED ON AMOUNT OF WEALTH. AT 500+, OLD STYLE CHURNS THE TARGET.

/obj/effect/proc_holder/spell/invoked/churnwealthy
	name = "Churn Wealthy"
	desc = "Attacks the target by weight of their greed, dealing increased damage and effects depending on how wealthy they are."
	overlay_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	action_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	overlay_state = "churn_wealthy"
	clothes_req = FALSE
	associated_skill = /datum/skill/magic/holy
	chargedloop = /datum/looping_sound/invokeascendant
	chargedrain = 0
	chargetime = 50
	releasedrain = 90
	no_early_release = TRUE
	antimagic_allowed = TRUE
	movement_interrupt = FALSE
	recharge_time = 2 MINUTES
	range = 4


/obj/effect/proc_holder/spell/invoked/churnwealthy/cast(list/targets, mob/living/user)
	if(ishuman(targets[1]))
		var/mob/living/carbon/human/target = targets[1]

		if(user.z != target.z) //Stopping no-interaction snipes
			to_chat(user, "<font color='yellow'>The Free-God compels me to face [target] on level ground before I transact.</font>")
			revert_cast()
			return
		var/mammonsonperson = get_mammons_in_atom(target)
		var/mammonsinbank = SStreasury.bank_accounts[target]
		var/totalvalue = mammonsinbank + mammonsonperson
		if(HAS_TRAIT(target, TRAIT_NOBLE))
			totalvalue += 101 // We're ALWAYS going to do a medium level smite minimum to nobles.
		if(totalvalue <=10)
			to_chat(user, "<font color='yellow'>[target] one has no wealth to hold against them.</font>")
			revert_cast()
			return
		if(totalvalue <=30)
			user.say("Wealth becomes woe!")
			target.visible_message(span_danger("[target] is burned by holy light!"), span_userdanger("I feel the weight of my wealth burning at my soul!"))
			target.adjustFireLoss(30)
			playsound(user, 'sound/magic/churn.ogg', 100, TRUE)
			return
		if(totalvalue <=60)
			user.say("Wealth becomes woe!")
			target.visible_message(span_danger("[target] is burned by holy light!"), span_userdanger("I feel the weight of my wealth burning at my soul!"))
			target.adjustFireLoss(60)
			playsound(user, 'sound/magic/churn.ogg', 100, TRUE)
			return
		if(totalvalue <=100)
			user.say("Wealth becomes woe!")
			target.visible_message(span_danger("[target] is burned by holy light!"), span_userdanger("I feel the weight of my wealth burning at my soul!"))
			target.adjustFireLoss(80)
			target.Stun(20)
			playsound(user, 'sound/magic/churn.ogg', 100, TRUE)
			return
		if(totalvalue <=200)
			user.say("The Free-God rebukes!")
			target.visible_message(span_danger("[target] is burned by holy light!"), span_userdanger("I feel the weight of my wealth tearing at my soul!"))
			target.adjustFireLoss(100)
			target.adjust_fire_stacks(7, /datum/status_effect/fire_handler/fire_stacks/divine)
			target.Stun(20)
			target.ignite_mob()
			playsound(user, 'sound/magic/churn.ogg', 100, TRUE)
			return
		if(totalvalue <=500)
			user.say("The Free-God rebukes!")
			target.visible_message(span_danger("[target] is burned by holy light!"), span_userdanger("I feel the weight of my wealth tearing at my soul!"))
			target.adjustFireLoss(120)
			target.adjust_fire_stacks(9, /datum/status_effect/fire_handler/fire_stacks/divine)
			target.ignite_mob()
			target.Stun(40)
			playsound(user, 'sound/magic/churn.ogg', 100, TRUE)
			return
		if(totalvalue <= 1000)
			target.visible_message(span_danger("[target] is smited with holy light!"), span_userdanger("I feel the weight of my wealth rend my soul apart!"))
			user.say("Your final transaction! The Free-God rebukes!!")
			target.Stun(60)
			target.emote("agony")
			target.adjustFireLoss(140)
			target.adjust_fire_stacks(9, /datum/status_effect/fire_handler/fire_stacks/divine)
			target.ignite_mob()
			playsound(user, 'sound/magic/churn.ogg', 100, TRUE)
			explosion(get_turf(target), light_impact_range = 1, flame_range = 1, smoke = FALSE)
			return
		if(totalvalue >=1001) //THE POWER OF MY STAND: 'EXPLODE AND DIE INSTANTLY'
			target.visible_message(span_danger("[target]'s skin begins to SLOUGH AND BURN HORRIFICALLY, glowing like molten metal!"), span_userdanger("MY LIMBS BURN IN AGONY..."))
			user.say("Wealth beyond measure- YOUR FINAL TRANSACTION!!")
			target.Stun(80)
			target.emote("agony")
			target.adjustFireLoss(50)
			target.adjust_fire_stacks(9, /datum/status_effect/fire_handler/fire_stacks/divine)
			target.ignite_mob()
			playsound(user, 'sound/magic/churn.ogg', 100, TRUE)
			explosion(get_turf(target), light_impact_range = 1, flame_range = 1, smoke = FALSE)
			sleep(80)

			target.visible_message(span_danger("[target]'s limbs REND into coin and gem!"), span_userdanger("WEALTH. POWER. THE FINAL SIGHT UPON MYNE EYE IS A DRAGON'S MAW TEARING ME IN TWAIN. MY ENTRAILS ARE OF GOLD AND SILVER."))
			playsound(user, 'sound/magic/churn.ogg', 100, TRUE)
			playsound(user, 'sound/magic/whiteflame.ogg', 100, TRUE)
			explosion(get_turf(target), light_impact_range = 1, flame_range = 1, smoke = FALSE)
			new /obj/item/roguecoin/silver/pile(target.loc)
			new /obj/item/roguecoin/gold/pile(target.loc)
			new /obj/item/roguegem/random(target.loc)
			new /obj/item/roguegem/random(target.loc)

			var/list/possible_limbs = list()
			for(var/zone in list(BODY_ZONE_R_ARM, BODY_ZONE_L_ARM, BODY_ZONE_R_LEG, BODY_ZONE_L_LEG))
				var/obj/item/bodypart/limb = target.get_bodypart(zone)
				if(limb)
					possible_limbs += limb
				var/limbs_to_gib = min(rand(1, 4), possible_limbs.len)
				for(var/i in 1 to limbs_to_gib)
					var/obj/item/bodypart/selected_limb = pick(possible_limbs)
					possible_limbs -= selected_limb
					if(selected_limb?.drop_limb())
						var/turf/limb_turf = get_turf(selected_limb) || get_turf(target) || target.drop_location()
						if(limb_turf)
							new /obj/effect/decal/cleanable/blood/gibs/limb(limb_turf)

			return


////////////////
//T2 - Mammonite
//Uses up to 100 Mammon to deal 100 damage with 75% armor penetration on your next strike. Can't get simpler than that.
/datum/action/cooldown/spell/mammonite
	name = "Mammonite"
	desc = "Invoke Matthios's name and invest 50 to 100 mammon of your own hoard into your next strike. The power of your offering mirrors the wealth spent, drawing even from your bank. Every coin fuels your glory.<br><br>Penetrates armor equal to 75% of the mammon spent."
	button_icon = 'icons/mob/actions/matthiosmiracles.dmi'
	button_icon_state = "mammonite"
	spell_color = "#d4af37"
	glow_intensity = GLOW_INTENSITY_MEDIUM
	click_to_activate = FALSE
	self_cast_possible = TRUE
	primary_resource_type = SPELL_COST_NONE
	primary_resource_cost = 0
	invocation_type = "shout"
	charge_required = FALSE
	cooldown_time = 45 SECONDS
	associated_skill = /datum/skill/magic/holy
	spell_tier = 0
	var/min_mammon = 50
	var/max_mammon = 100

/datum/action/cooldown/spell/mammonite/can_cast_spell(feedback = TRUE)
	. = ..()
	if(!.)
		return FALSE
	if(!ishuman(owner))
		return FALSE

	var/mob/living/carbon/human/H = owner
	if(!H.cmode)
		return FALSE

	if(!(H in SStreasury.bank_accounts))
		SStreasury.bank_accounts[H] = 0

	var/bank = SStreasury.bank_accounts[H]
	var/onhand = get_mammons_in_atom(H)
	var/total = bank + onhand

	if(total < min_mammon)
		if(feedback)
			to_chat(H, span_warning("I lack the wealth to invoke Matthios' favor..."))
		return FALSE

	return TRUE

/datum/action/cooldown/spell/mammonite/cast(atom/cast_on)
	. = ..()
	var/mob/living/carbon/human/H = owner
	if(!istype(H))
		return FALSE

	if(!H.cmode)
		to_chat(H, span_warning("I need some adrenaline pumping for this, my good sire!"))
		return FALSE

	if(H.has_status_effect(/datum/status_effect/buff/mammonite))
		to_chat(H, span_warning("Matthios' truth already lays claim to my next strike."))
		return FALSE

	if(!(H in SStreasury.bank_accounts))
		SStreasury.bank_accounts[H] = 0

	var/bank = SStreasury.bank_accounts[H]
	var/onhand = get_mammons_in_atom(H)
	var/total = bank + onhand

	if(total < min_mammon)
		to_chat(H, span_warning("I lack the wealth to invoke Matthios' favor..."))
		return FALSE

	var/mammon_used = clamp(total, min_mammon, max_mammon)

	var/list/invocations = list(
		"Gold to glory, Matthios guide my hand!",
		"Wealth be spent, and power be gained!",
		"My hoard bleeds for strength, in His name!",
		"Matthios! A king's ransom for a single blow!",
	)
	H.say(pick(invocations), forced = invocation_type)

	var/remaining = mammon_used

	var/from_inventory = 0
	var/from_bank = 0

	var/drained_onhand = min(onhand, remaining)
	if(drained_onhand > 0)
		from_inventory = remove_mammons_from_atom(H, drained_onhand)
		remaining -= from_inventory

	if(remaining > 0)
		from_bank = min(remaining, SStreasury.bank_accounts[H])
		SStreasury.bank_accounts[H] = max(0, SStreasury.bank_accounts[H] - from_bank)
		SStreasury.log_to_steward("-[from_bank] suddenly disappeared. Is this true?")
		remaining -= from_bank

	var/datum/status_effect/buff/mammonite/E = H.apply_status_effect(/datum/status_effect/buff/mammonite)
	if(E)
		E.bonus_damage = round(mammon_used * 1.5) // jakk here

	var/source_text = ""

	if(from_inventory > 0 && from_bank > 0)
		source_text = "MATTHIOS claims [from_inventory] from my possessions, [from_bank] from their wretched Treasury!"
	else if(from_inventory > 0)
		source_text = "MATTHIOS, claim [from_inventory] from my possessions!"
	else if(from_bank > 0)
		source_text = "MATTHIOS, [from_bank] from their wretched Treasury!"

	H.visible_message(
		span_danger("[H]'s weapon gleams with a greedy golden light!"),
		span_notice("I invest [mammon_used] mammon into my next strike. ([source_text])")
	)

	playsound(get_turf(H), 'sound/magic/antimagic.ogg', 60, TRUE)

	return TRUE

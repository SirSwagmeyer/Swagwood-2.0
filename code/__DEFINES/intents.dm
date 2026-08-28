//intent defines
#define INTENT_HELP			 /datum/intent/unarmed/help
#define INTENT_GRAB			 /datum/intent/unarmed/grab
#define INTENT_DISARM		 /datum/intent/unarmed/shove
#define INTENT_HARM			 /datum/intent/unarmed/punch

//mmb intents
#define INTENT_KICK		/datum/intent/kick
#define INTENT_STEAL	/datum/intent/steal
#define INTENT_BITE		/datum/intent/bite
#define INTENT_JUMP		/datum/intent/jump
#define INTENT_GIVE		/datum/intent/give
#define INTENT_SPELL	/datum/intent/spell

//hurrrddurrrr
#define QINTENT_BITE		 1
#define QINTENT_JUMP		 2
#define QINTENT_KICK		 3
#define QINTENT_STEAL		 4
#define QINTENT_GIVE		 5
#define QINTENT_SPELL		 6

//used for all items that aren't weapons but have a blunt force
#define INTENT_GENERIC	 /datum/intent/hit
#define RANGED_FIRE		/datum/intent/shoot

//Weapon intents
#define SWORD_CUT		 /datum/intent/sword/cut
#define SWORD_THRUST	 /datum/intent/sword/thrust
#define SWORD_CHOP		 /datum/intent/sword/chop //2h swords only
#define SWORD_STRIKE	 /datum/intent/sword/strike //mordhau grip
#define SWORD_PEEL		/datum/intent/sword/peel

// Shield Intents defines
#define SHIELD_BASH		/datum/intent/shield/bash
#define SHIELD_BLOCK		/datum/intent/shield/block
#define SHIELD_BASH_METAL 	/datum/intent/shield/bash/metal
#define SHIELD_BLOCK_METAL 	/datum/intent/shield/block/metal
#define SHIELD_SMASH 		/datum/intent/mace/smash/shield
#define SHIELD_SMASH_METAL 	/datum/intent/mace/smash/shield/metal
#define SHIELD_BANG_COOLDOWN (3 SECONDS)

/*
	Dullfactor Defines. These should be removed at some point.
*/

#define DULLFACTOR_COUNTERED_BY 1.2 // If a shaft is COUNTERED by a weapon type, this is the damage to go for
#define DULLFACTOR_NEUTRAL 1 // If a shaft is NEUTRAL to a weapon type, this is the damage to go for
#define DULLFACTOR_COUNTERS 0.8 // If a shaft COUNTERS a damage type, this is the damage to go for
#define DULLFACTOR_ANTAG 0.5 // For Grand Shaft. Also for dull blade
// Previously value were closer to 0.4 - 0.5 and 1.5 - 1.7x, but it felt like it make weapons
// counter certain shaft type too hard, so now the value is between 0.8 to 1.2x for regular type
#define ELFSWORD_CUT		/datum/intent/sword/cut/elf
#define ELFSWORD_THRUST		/datum/intent/sword/thrust/elf

#define AXE_CUT				/datum/intent/axe/cut
#define AXE_CHOP			/datum/intent/axe/chop

#define SPEAR_THRUST		/datum/intent/spear/thrust
#define SPEAR_THRUST_1H		/datum/intent/spear/thrust/oneh
#define SPEAR_BASH			/datum/intent/spear/bash
#define SPEAR_CUT			/datum/intent/spear/cut
#define SPEAR_CUT_1H		/datum/intent/spear/cut/oneh
#define SPEAR_CAST          /datum/intent/spear/cast
#define PARTIZAN_REND		/datum/intent/rend/reach/partizan
#define PARTIZAN_PEEL		/datum/intent/partizan/peel
#define PARTIZAN_PEEL_BAD	/datum/intent/partizan/peel/nag

#define MESSER_CHOP			/datum/intent/sword/chop/messer

#define OHAXE_STRIKE		/datum/intent/axe/cut/dwarf
#define OHAXE_THRUST		/datum/intent/axe/thrust/dwarf
#define OHAXE_SMASH			/datum/intent/axe/smash/dwarf
#define OHAXE_CHOP			/datum/intent/axe/chop/dwarf

#define BIGSWORD_CHOP		/datum/intent/sword/chop/bigsword
#define BIGSWORD_CUT		/datum/intent/sword/cut/bigsword

#define MACE_SMASH			/datum/intent/mace/smash
#define MACE_STRIKE			/datum/intent/mace/strike
#define AXE_SMASH			/datum/intent/mace/smash/flataxe

#define DAGGER_CUT			/datum/intent/dagger/cut
#define DAGGER_THRUST		/datum/intent/dagger/thrust
#define ICEPICK_STAB		/datum/intent/dagger/icepick

#define MAUL_SMASH			/datum/intent/maul/smash
#define MAUL_STRIKE			/datum/intent/maul/strike

#define INTENT_FEED			/datum/intent/food

#define DUMP_INTENT			/datum/intent/pforkdump
#define TILL_INTENT			/datum/intent/till

#define ROD_CAST			/datum/intent/cast
#define ROD_REEL			/datum/intent/reel

#define INTENT_SPLASH		/datum/intent/splash
#define INTENT_POUR			/datum/intent/pour
#define INTENT_FILL			/datum/intent/fill

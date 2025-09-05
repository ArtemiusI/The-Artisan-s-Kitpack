EXTEND_BOTTOM BHOISIG 0
IF ~Kit(Player1,C0_FAVORED_SOUL)~ EXTERN BHOISIG 1
END

EXTEND_BOTTOM BHOISIG 3
IF ~Global("OHHelmOverride","GLOBAL",0)
Kit(Player1,C0_FAVORED_SOUL)
OR(2)
Alignment(Player1,LAWFUL_GOOD)
Alignment(Player1,NEUTRAL)~ EXTERN BHOISIG 70
END

CHAIN IF WEIGHT #-1 ~!AreaCheck("AR0900")
Kit(Player1,C0_FAVORED_SOUL)
ReputationGT(Player1,14)
OR(2)
Alignment(Player1,MASK_LAWFUL)
Alignment(Player1,NEUTRAL)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)
Global("CDWorkingForLathander","GLOBAL",0)~ THEN BHOISIG oisig.1
#28278
EXTERN BHOISIG 8

CHAIN IF WEIGHT #-1 ~!AreaCheck("AR0900")
Kit(Player1,C0_FAVORED_SOUL)
ReputationLT(Player1,15)
OR(2)
Alignment(Player1,MASK_LAWFUL)
Alignment(Player1,NEUTRAL)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)
Global("CDWorkingForLathander","GLOBAL",0)~ THEN BHOISIG oisig.2
#28280
EXTERN BHOISIG 8

EXTEND_BOTTOM BHARVAL 2
IF ~Global("OHLathanderOverride","GLOBAL",0)
Kit(Player1,C0_FAVORED_SOUL)
OR(2)
Alignment(Player1,LAWFUL_GOOD)
Alignment(Player1,NEUTRAL)~ EXTERN BHARVAL 69
END

CHAIN IF WEIGHT #-1 ~NumberOfTimesTalkedTo(0)
Global("CDSpawnArval","GLOBAL",0)
AreaCheck("AR0900")
Kit(Player1,C0_FAVORED_SOUL)
Global("BeholderPlot","GLOBAL",0)~ THEN BHARVAL arval.0
#28005
COPY_TRANS BHARVAL 0

CHAIN IF WEIGHT #-1 ~!AreaCheck("AR0900")
Kit(Player1,C0_FAVORED_SOUL)
Global("CDSpawnArval","GLOBAL",0)
InPartySlot(LastTalkedToBy,0)
ReputationGT(Player1,14)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)
Global("CDWorkingForHelm","GLOBAL",0)
Global("CDWorkingForTalos","GLOBAL",0)~ THEN BHARVAL arval.1
#28008
EXTERN BHARVAL 4

CHAIN IF WEIGHT #-1 ~!AreaCheck("AR0900")
Kit(Player1,C0_FAVORED_SOUL)
Global("CDSpawnArval","GLOBAL",0)
InPartySlot(LastTalkedToBy,0)
ReputationLT(Player1,15)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)
Global("CDWorkingForHelm","GLOBAL",0)~ THEN BHARVAL arval.2
#28033
EXTERN BHARVAL 4

CHAIN IF WEIGHT #-1 ~NumberOfTimesTalkedTo(0)
OR(3)
Alignment(Player1,CHAOTIC_NEUTRAL)
Alignment(Player1,NEUTRAL_EVIL)
Alignment(Player1,CHAOTIC_EVIL)
Kit(Player1,C0_FAVORED_SOUL)
Global("BeholderPlot","GLOBAL",0)~ THEN BHNALLA nalla.0
#28004
COPY_TRANS BHNALLA 0

CHAIN IF WEIGHT #-1 ~!AreaCheck("AR0900")
Kit(Player1,C0_FAVORED_SOUL)
InPartySlot(LastTalkedToBy,0)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)~ THEN BHNALLA nalla.1
#29225
EXTERN BHNALLA 4

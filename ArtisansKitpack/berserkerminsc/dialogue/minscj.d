CHAIN IF ~Global("C0MinscBearskin","GLOBAL",1)~ THEN MINSCJ a1
~Ah, this is a fine skin, isn't it, Boo? Minsc remembers, back home in Rashemen, all the marvelous things our craftsmen from hides such as this.~
DO ~SetGlobal("C0MinscBearskin","GLOBAL",2)~
== MINSCJ ~If only we were back home. Minsc could have a new pair of boots! Ha!~
== DYNAHJ IF ~IsValidForPartyDialogue("DYNAHEIR")~ THEN ~Perhaps we mayst yet find a smith in these lands capable of working with material such as this.~
EXIT
EXTEND_BOTTOM TAEROM 0
+ ~PartyHasItem("c0mskin")~ + ~Actually, I'd rather have you look at this instead. It's a skin from a red bear.~ EXTERN TAEROM a1
END

EXTEND_BOTTOM TAEROM 4
+ ~PartyHasItem("c0mskin")~ + ~Actually, I'd rather have you look at this instead. It's a skin from a red bear.~ EXTERN TAEROM a1
END

EXTEND_BOTTOM TAEROM 8
+ ~PartyHasItem("c0mskin")~ + ~I'd like for you look at this. It's a skin from a red bear.~ EXTERN TAEROM a1
END

EXTEND_BOTTOM TAEROM 12
+ ~PartyHasItem("c0mskin")~ + ~Actually, I'd rather have you look at this instead. It's a skin from a red bear.~ EXTERN TAEROM a1
END

EXTEND_BOTTOM TAEROM 14
+ ~PartyHasItem("c0mskin")~ + ~I'd like for you look at this. It's a skin from a red bear.~ EXTERN TAEROM a1
END

CHAIN TAEROM a1
~What's this then? Ah, an interesting piece of material indeed. I'm no tanner, but I can see it is remarkably sturdy and could make for a strong suit of armor. I'll make some hide armor out of this skin for 3,000 gold.~
END
+ ~PartyGoldGT(2999)~ + ~A fair price for the workmanship of Taerom Thunderhammer. 3,000 gold it is.~ + a2
++ ~Though your offer is generous, it is more than I can afford right now.~ + a3

CHAIN TAEROM a2
~Good on you. Now it will take me a while to finish, but you will soon have the finest armor in Beregost, if not the entire Sword Coast. Come back in five days, and I'll have it ready for you.~
DO ~TakePartyGold(3000)
TakePartyItem("c0mskin")
DestroyItem("c0mskin")
SetGlobal("C0TaeromMakeArmor","GLOBAL",1)
SetGlobalTimer("C0TaeromArmorTimer","GLOBAL",FIVE_DAYS)~ EXIT

CHAIN TAEROM a3
~As you wish. You may change your mind any time.~
EXIT

CHAIN IF WEIGHT #-1 ~!GlobalTimerExpired("C0TaeromArmorTimer","GLOBAL")
Global("C0TaeromMakeArmor","GLOBAL",1)~ THEN TAEROM b1
~It's not ready yet. Perhaps another day or two. Be patient; quality takes time.~
COPY_TRANS TAEROM 8

CHAIN IF WEIGHT #-1 ~GlobalTimerExpired("C0TaeromArmorTimer","GLOBAL")
Global("C0TaeromMakeArmor","GLOBAL",1)~ THEN TAEROM c1
~Ah, you have returned. And here be what I promised you. Beautiful isn't it? A finer set of armor I have not made for some time. Wear it well.~
DO ~SetGlobal("C0TaeromMakeArmor","GLOBAL",2)
GiveItemCreate("c0mleat",LastTalkedToBy(Myself),1,0,0)
DestroyItem("MISC12")~ EXIT
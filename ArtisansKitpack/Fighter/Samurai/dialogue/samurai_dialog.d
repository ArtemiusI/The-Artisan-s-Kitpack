CHAIN IF WEIGHT #-1 ~Global("C0SamuraiRegainKit","GLOBAL",1)~ THEN PLAYER1 samurai-d
~Your defense of the keep as well as your fair rulership over your lands have served as an adequate fulfillment of duty. With these actions, you believe you may be able to regain your lost honor. Will you choose to become a samurai once more?

This is your one and only chance. Choose wisely!~
DO ~IncrementGlobal("C0SamuraiRegainKit","GLOBAL",1)~
END
  + ~Alignment(Player1,MASK_GOOD)~ + ~I wish to regain my samurai abilities.~ DO ~ChangeAlignment(Player1,LAWFUL_GOOD) AddKit(C0_SAMURAI)~ EXIT
  + ~Alignment(Player1,MASK_GENEUTRAL)~ + ~I wish to regain my samurai abilities.~ DO ~ChangeAlignment(Player1,LAWFUL_NEUTRAL) AddKit(C0_SAMURAI)~ EXIT
  + ~Alignment(Player1,MASK_EVIL)~ + ~I wish to regain my samurai abilities.~ DO ~ChangeAlignment(Player1,LAWFUL_EVIL) AddKit(C0_SAMURAI)~ EXIT
  ++ ~No. What's done is done. I will continue as a ronin.~ EXIT
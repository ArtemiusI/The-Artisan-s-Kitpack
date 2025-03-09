function C0RangerActionbarListener(config, state)
   if 
      state == 12
      then
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.FIND_TRAPS)
   end
end
EEex_Actionbar_AddListener(C0RangerActionbarListener)

function C0RangerActionbarListener(config, state)
   if 
      state == 18
      then
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.FIND_TRAPS)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(C0RangerActionbarListener)
function MoClericMonkActionbarListener(config, state)
   if 
      state == 3
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
      then
      EEex_Actionbar_SetButton(1, EEex_Actionbar_ButtonType.QUICK_WEAPON_3)
      EEex_Actionbar_SetButton(2, EEex_Actionbar_ButtonType.QUICK_WEAPON_1)
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.QUICK_WEAPON_2)
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.FIND_TRAPS)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.TURN_UNDEAD)
   end
end
EEex_Actionbar_AddListener(MoClericMonkActionbarListener)
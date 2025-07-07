function MoSorcererMonkActionbarListener(config, state)
   if 
      state == 1
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
      then
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.QUICK_WEAPON_3)
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.FIND_TRAPS)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(MoSorcererMonkActionbarListener)
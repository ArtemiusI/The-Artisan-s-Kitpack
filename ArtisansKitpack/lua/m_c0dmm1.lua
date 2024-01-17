function MoDarkMoonMonkActionbarListener(config, state)
   if 
      state == 20
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4024
      then
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.FIND_TRAPS)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
      EEex_Actionbar_SetButton(6, EEex_Actionbar_ButtonType.CAST_SPELL)
   end
end
EEex_Actionbar_AddListener(MoDarkMoonMonkActionbarListener)
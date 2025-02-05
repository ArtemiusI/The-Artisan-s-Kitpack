function ArtisanBlackguardActionbarListener(config, state)
   if 
      EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4020
      then
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.TURN_UNDEAD)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(ArtisanBlackguardActionbarListener)
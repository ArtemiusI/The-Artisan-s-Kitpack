function ArtisanFavoredSoulActionbarListener(config, state)
   if 
      state == 21
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
      then
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.QUICK_SPELL_1)
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.QUICK_SPELL_2)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.QUICK_SPELL_3)
   end
end
EEex_Actionbar_AddListener(ArtisanFavoredSoulActionbarListener)
function ArtisanAvengerActionbarListener(config, state)
   if 
      state == 11
      or
      state == 16
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4012
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(ArtisanAvengerActionbarListener)
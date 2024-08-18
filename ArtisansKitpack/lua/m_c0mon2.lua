function ArtisanNinjaActionbarListener(config, state)
   if 
      state == 20
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
      then
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.THIEVING)
   end
end
EEex_Actionbar_AddListener(ArtisanNinjaActionbarListener)
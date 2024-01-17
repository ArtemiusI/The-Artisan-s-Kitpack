function ArtisanSwashbucklerActionbarListener(config, state)
   if 
      state == 4
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x400C
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.GUARD)
   end
end
EEex_Actionbar_AddListener(ArtisanSwashbucklerActionbarListener)

function ArtisanSwashbucklerFighterActionbarListener(config, state)
   if 
      state == 9
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x400C
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.GUARD)
   end
end
EEex_Actionbar_AddListener(ArtisanSwashbucklerFighterActionbarListener)

function ArtisanSwashbucklerFighterMageActionbarListener(config, state)
   if 
      state == 10
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x400C
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.GUARD)
   end
end
EEex_Actionbar_AddListener(ArtisanSwashbucklerFighterMageActionbarListener)

function ArtisanSwashbucklerMageActionbarListener(config, state)
   if 
      state == 13
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x400C
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.GUARD)
   end
end
EEex_Actionbar_AddListener(ArtisanSwashbucklerMageActionbarListener)

function ArtisanSwashbucklerClericActionbarListener(config, state)
   if 
      state == 15
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x400C
      then
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.THIEVING)
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.TURN_UNDEAD)
   end
end
EEex_Actionbar_AddListener(ArtisanSwashbucklerClericActionbarListener)
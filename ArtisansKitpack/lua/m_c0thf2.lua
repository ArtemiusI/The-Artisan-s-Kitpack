function ArtisanSwashbucklerActionbarListener(config, state)
   if 
      state == 4
	  or state == 9
	  or state == 10
	  or state == 13
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x400C
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.GUARD)
   end
end
EEex_Actionbar_AddListener(ArtisanSwashbucklerActionbarListener)

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
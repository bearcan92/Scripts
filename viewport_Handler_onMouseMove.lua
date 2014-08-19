--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	       local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local cam1 = scene.getTaggedObject ( hscene,"campl1" )
     local htargetstring = this.targetsting ( )
     local targetnamehud = hud.getComponent ( hplayer1,"hud.targetname" )
     local targetobject = this.targetobject ( )
        local leon = scene.getTaggedObject ( hscene,"player1" )
     


    if (leon~= nil)
    then 
    object.sendEvent ( leon, "leonai" , "onMouseMove" , nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
	  end
  
      if ( targetobject ~= nil )
      then
          local targetAi = object.getAIModelNameAt ( targetobject,0 )
       this.targetname ( object.getAIVariable ( targetobject,targetAi,"name" ) ) 
      hud.setLabelText ( targetnamehud, this.targetname ( ) )
    
      end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

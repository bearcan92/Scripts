--------------------------------------------------------------------------------
--  Handler.......... : onMouseButtonDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.onMouseButtonDown ( nButton, nPointX, nPointY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
	 local hplayer1 = this.getUser ( )
     local hscene = user.getScene ( hplayer1 )
     local firstcam = scene.getTaggedObject ( hscene,"firstcam" )
     local targetobject = this.targetobject ( )
     local targetname = hud.getComponent ( hplayer1,"hud.targetname" )
     local htargetobject = targetobject
     local htargetstring = this.targetsting ( )
     local inventory1 = scene.getTaggedObject (hscene, "inventory1" )
     local hudgold = hud.getComponent ( hplayer1,"hud.gold" )
     local gold = this.gold ( )
     local hTXM = this.hTXM ( )
     local hTYM = this.hTYM ( )
     local hTZM = this.hTZM ( )
     local hTX = this.hTX ( )
     local hTY = this.hTY ( )
     local hTZ = this.hTZ ( )
     local targetobjectleft = this.targetobjectleft ( )
     local leon = scene.getTaggedObject ( hscene,"player1" )
     local htargetobjectleft = targetobjectleft
     
     if ( targetobject ~= nil )
     then
     local XX,YY,ZZ = object.getTranslation ( targetobject,object.kGlobalSpace )
     this.hTX ( XX)
     this.hTY (YY )
     this.hTZ (ZZ )
     end
     

    
    if (nButton == 0)
    then
    this.leftcilck (true)
    end
    if (nButton == 1)
    then
    this.rightclick (true)
    end
    
    
    
      if (this.inputtype ( )==1)
      then
      if (this.rightclick ( ))
      then
      if ( targetobject ~= nil )
      then
      local targetAi = object.getAIModelNameAt ( targetobject,0 )
      local durability = object.getAIVariable ( targetobject,targetAi,"durebility" )
      object.setAIVariable (  targetobject,targetAi,"durebility",object.getAIVariable ( targetobject,targetAi,"durebility" ) - 10  )
      end
      end
      hud.setLabelText ( targetname, htargetstring )

      if( this.leftcilck ( ))
      then
      this.Place (  )
      end
      end

  
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

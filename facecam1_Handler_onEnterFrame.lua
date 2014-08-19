--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function facecam1.onEnterFrame (  )
--------------------------------------------------------------------------------
    local cX, cY , cZ = object.getRotation ( this.getObject ( ),object.kLocalSpace)
    local ctX , ctY ,ctZ = object.getTranslation (this.getObject ( ),object.kLocalSpace)
    	local hplayer1 = application.getUser ( 1  )
    local hscene = user.getScene ( hplayer1 )
      local leon = scene.getTaggedObject ( hscene,"player1" )
      

 local hHitObject, nHitDist, nHitSensorID =  scene.getFirstHitSensor ( hscene,ctX , ctY ,ctZ,cX, cY , cZ,5)
 
  if ( hHitObject ~= nil )
      then
      object.setAIVariable (leon,"leonai", "targetobject",hHitObject )
      
    end
     if ( nHitSensorID ~= nil )
      then
      object.setAIVariable (leon,"leonai", "nhit",nHitSensorID )
      
    end
  
      log.message ( object.getRotation (this.getObject ( ),object.kGlobalSpace) )
     log.message (  object.getRotation (leon,object.kGlobalSpace) )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

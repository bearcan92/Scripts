--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Cam3rd.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
		local hplayer1 = application.getUser ( 1  )
        local hscene = user.getScene ( hplayer1 )
        local cam1 = scene.getTaggedObject ( hscene,"campl1" )
    local hcam1 = group.getSubObjectAt ( cam1, 0 )
    local leon = application.getCurrentUserSceneTaggedObject ( "player1") 
    local xx ,xy ,xz = object.getTranslation (  hcam1,object.kLocalSpace )
     local pltX, pltY ,pltZ = object.getTranslation ( cam1 ,object.kGlobalSpace )
     local RSX ,RSY ,RSZ = object.getRotation ( hcam1,object.kGlobalSpace)
      local RX ,RY ,RZ = object.getRotation ( cam1,object.kGlobalSpace )
	--object.rotate ( ,nDeltaY * 400,0,0,object.kLocalSpace )
    -- object.rotateAround ( hcam1 ,pltX, pltY ,pltZ ,nDeltaY * 300,0,0,object.kLocalSpace )
      object.rotate ( cam1,0,-nDeltaX * 100,0,object.kGlobalSpace )
     
   --  if( xx  < -5 )
    -- then
      -- if( RX  > 31 )
   --  then
-- object.rotateAround ( hcam1 ,pltX, pltY ,pltZ ,nDeltaY * 100,0,0,object.kLocalSpace )
object.rotate ( cam1,nDeltaY * 100,0,0,object.kGlobalSpace )
 --   end
  --  end
    log.message (RX )
   
--object.rotateAround ( sub,xx ,xy ,xz,nDeltaY * 375,0,0,object.kLocalSpace)
   -- object.rotateAround ( sub,xx ,xy ,xz,0,nDeltaX * 375,0,object.kLocalSpace)
    
   -- object.setTranslation ( sub , nRayDirX, nRayDirY, nRayDirZ,object.kLocalSpace )
    
    
    
  
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

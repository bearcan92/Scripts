--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function fpsCamAi.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	 local tempUser = application.getCurrentUser ( )
       local hscene = user.getScene ( tempUser )
    local sub = group.getSubObjectAt ( this.getObject ( ),1 )
    local leon = application.getCurrentUserSceneTaggedObject ( "player1") 
    local xx ,xy ,xz = object.getTranslation ( this.firstcam ( ),object.kLocalSpace )
    
	object.rotate ( this.firstcam ( ),nDeltaY * 200,0,0,object.kLocalSpace )
    object.rotate ( this.firstcam ( ),0,-nDeltaX * 200,0,object.kGlobalSpace )
    
--object.rotateAround ( sub,xx ,xy ,xz,nDeltaY * 375,0,0,object.kLocalSpace)
   -- object.rotateAround ( sub,xx ,xy ,xz,0,nDeltaX * 375,0,object.kLocalSpace)
    
   -- object.setTranslation ( sub , nRayDirX, nRayDirY, nRayDirZ,object.kLocalSpace )
    
     hud.setCursorVisible (tempUser,false )
    
     if ( nPointX < -1 
        or   nPointX >  1 
        or   nPointY < -1
        or   nPointY >  1 )
        then
            this.centermouse (  )
        end
	
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Handler.......... : onMouseButtonUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.onMouseButtonUp ( nButton, nPointX, nPointY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
	local hHitObject, nHitDist, nHitSensorID =  scene.getFirstHitSensor ( hscene, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ, 100 )
	
    
	this.pickup (false)
    if (nButton == 0)
    then
    this.leftcilck (false)
    end
    if (nButton == 1)
    then
    
    this.rightclick (false)
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

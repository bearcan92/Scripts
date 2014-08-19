--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionBegin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function pl1sw.onSensorCollisionBegin ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when a sensor collision begins.
	--
    
    
    local hplayer1 = application.getUser ( 1  )
    
    local hp = this.hp ( )
    ---local getID = nTargetSensorID
 --log.message ( targetID )
    
     if ( nTargetSensorID == 2)  
   then
    
    log.message ( "hit" )
    this.hp (hp -1 ) 
    
    user.setAIVariable ( hplayer1,"viewport","hit",  true  )
    
    end 
    
    
    
    --JUST SEND TRUE COLLISION VARIABLE
    
    
    --user.setAIVariable ( hplayer1,"viewport","pl1HP", -1  )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionBegin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inventory1.onSensorCollisionBegin ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when a sensor collision begins.
	--
    local hplayer1 = application.getUser ( 1  )
    local sword = hud.getComponent (hplayer1,"hud.sword"  )
    
      if ( nTargetSensorID == 7)  
   then
    
    
   
    --log.message ( "gold+1" )
    user.setAIVariable ( hplayer1,"viewport","gold",  user.getAIVariable ( hplayer1,"viewport", "gold" ) + 1 )
    
    end 
    
    if ( nTargetSensorID == 12) 
    then
    
   hud.setComponentVisible (sword,true  )
     --user.setAIVariable ( hplayer1,"viewport","swordeq",  true  )
    --becuase of a matchtraselation to iventori sword cant return to hand
    
    end
	
   -- log.message ( nTargetSensorID )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

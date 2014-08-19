--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onInit (  )
--------------------------------------------------------------------------------
	
    	
local o = application.getCurrentUserSceneTaggedObject ( "leon" )
    local dt = application.getLastFrameTime ( )
   
    
	local nScreenLeft, nScreenBottom, nScreenWidth, nScreenHeight = user.getViewport ( this.getUser ( ) )
    local hPlayer1 = application.createUser ( )
    local hPlayer2 = application.createUser ( )
 
    
    
    if ( hPlayer1 )
    then        
        user.addAIModel  ( hPlayer1, "viewport" ) 
        user.setViewport ( hPlayer1, nScreenLeft, nScreenBottom, nScreenWidth , nScreenHeight  ) 
    end
 
    -- Create a new user for player 2 
    --
    
    if ( hPlayer2 )
    then        
        user.addAIModel  ( hPlayer2, "viewport2" ) 
        user.setViewport ( hPlayer2, nScreenLeft + nScreenWidth , nScreenBottom, nScreenWidth / 2, nScreenHeight  ) --left part of the display
    end
    
    
    hud.setCursorVisible (hPlayer1,false )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

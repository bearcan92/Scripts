--------------------------------------------------------------------------------
--  Function......... : CreatePlayer
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.CreatePlayer ( )
--------------------------------------------------------------------------------
	
  	      local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
     local playercreated  = this.playercreated ( )
   

   local leon = scene.createRuntimeObject ( hscene, "adultlinkv5"  )
  -- end
   
       -- Check if the object was created
    if ( leon ~= nil )
    then
 
      
       object.setTranslation ( leon ,5,10,5,object.kGlobalSpace )
        scene.setObjectTag( hscene, leon, "player1" ) 
        this.playercreated (playercreated + 1)
        log.message ( "PLAYER 1 HAS ENTERED THE GAME" )
 
    else
 
    -- show a message telling that you have not create the object
  -- log.message ( "Cannot create the new object" )
 
    end -- Verify creation
   
   
   
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

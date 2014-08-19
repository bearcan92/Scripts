--------------------------------------------------------------------------------
--  Handler.......... : onMouseWheel
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.onMouseWheel ( nDelta )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when the mouse wheel is scrolled.
	--
    local hplayer1 = application.getUser ( 0 )
    local hscene = user.getScene ( hplayer1 )
    local interactwheel = this.interactwheel ( )
    local wheelrool = nDelta
    local leon = scene.getTaggedObject ( hscene,"player1" )
    local command = hud.getComponent ( hplayer1,"hud.command" )
    
     
 
    
    if (leon ~= nil)
    then
    local inventoryhash = object.getAIVariable ( leon,"leonai" ,"inventory")
     
   
     this.hashdeltastring (this.ListLooper (object.getAIVariable ( leon,"leonai" ,"inventory"),nDelta ) )
     if (hashtable.contains ( this.itemlistreverse(),this.hashdeltastring ( ) ) )
     then
     this.currentItemKey (hashtable.get (this.itemlistreverse ( ),this.hashdeltastring ( )  ) )
     this.currentitemimg (hashtable.get (this.itemiconlist ( ),this.currentItemKey ( )  )  )
     log.message ( this.currentItemKey ( ) )
     end
     hud.setLabelText ( command, this.hashdeltastring () )
    
    else
    log.message ( "CANT FIND PLAYER" )
    end
    
   
     
    
   
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

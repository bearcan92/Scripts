--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Cam3rd.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    local hplayer1 = application.getUser ( 1  )
    local hscene = user.getScene ( hplayer1 )
    local cam1 = this.getObject ( )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    local hcam1 = group.getSubObjectAt ( cam1, 0 )
    local pltX, pltY ,pltZ = object.getTranslation ( cam1 ,object.kGlobalSpace )
         local RSX ,RSY ,RSZ = object.getRotation ( hcam1,object.kLocalSpace )
      local RX ,RY ,RZ = object.getRotation ( cam1,object.kGlobalSpace )
   
    this.RSY (RSY )
   --  log.message ( RY )
     --178 lowest ,162 highest
    object.lookAt ( hcam1, pltX, pltY + 1 ,pltZ , object.kGlobalSpace , 1 )
        if ( leon ~= nil )
    then
 
    object.matchTranslation (cam1,leon,object.kGlobalSpace ) 
    
    else
 
    -- show a message telling that you have not create the object
   -- log.message ( "Cannot create the new object" )
 
    end -- Verify creation

	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

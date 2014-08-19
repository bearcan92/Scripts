--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function playballAI.onEnterFrame (  )
--------------------------------------------------------------------------------
		  local hplayball = this.getObject ( )
    local hplayer1 = application.getUser ( 0  )
     local hscene = user.getScene ( hplayer1 )
     local x ,y ,z = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
     
	if (this.durebility ( ) < 0)
    then 
     local goldloot = scene.createRuntimeObject (hscene,"gold_coinsv2" )
     object.setTranslation (goldloot ,x ,y ,z ,object.kGlobalSpace )
   
     scene.destroyRuntimeObject ( hscene, this.getObject ( ) )
     
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

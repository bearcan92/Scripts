--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function goldcoinAI.onEnterFrame (  )
--------------------------------------------------------------------------------
	
		  local hplayball = this.getObject ( )
    local hplayer1 = application.getUser ( 0  )
     local hscene = user.getScene ( hplayer1 )
     local x ,y ,z = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
     
	if (this.durebility ( ) < 0)
    then 
     
 
     user.setAIVariable (hplayer1,"viewport","gold",user.getAIVariable (hplayer1,"viewport","gold"  ) + this.goldamount ( ) )
     scene.destroyRuntimeObject ( hscene, this.getObject ( ) )
     
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

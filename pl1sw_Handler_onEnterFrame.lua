--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function pl1sw.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called every frame.
	--
    local hplayer1 = application.getUser ( 1  )
     local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    local vansword = this.getObject ( )
    local icon = hud.getComponent (hplayer1,"hud.sword"  )
    
    if (this.equiped ( ))
    then
    
    hud.setComponentVisible ( icon,true )
      object.setParent (vansword, leon, true)
     object.bindTransformToParentSkeletonJoint ( vansword , "Bip001_R_Hand" ) 
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Function......... : lampon
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.lampon ( )
--------------------------------------------------------------------------------
	
	
          local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
	local newlamp = scene.createRuntimeObject (hscene,"LAMP"  )
    local leon = this.playercharacter ( )
      local leon = scene.getTaggedObject ( hscene,"player1" )
    local hrX ,hrY,hrZ = shape.getSkeletonJointTranslation ( leon, "Bip001_R_Hand", object.kGlobalSpace )  
   local hrrX,hrrY,hrrZ = shape.getSkeletonJointRotation ( leon, "Bip001_R_Hand", object.kGlobalSpace )
    
       object.setParent (newlamp, this.playercharacter ( ), false )
    object.bindTransformToParentSkeletonJoint ( newlamp ,"Bip001_R_Hand")
    
    if (this.lamp (false))
    then
    
    scene.destroyRuntimeObject (hscene,newlamp  )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

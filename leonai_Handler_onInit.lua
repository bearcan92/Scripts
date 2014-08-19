--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function leonai.onInit (  )
--------------------------------------------------------------------------------
	
--inside the onInit() of the character we want to bind to
    	local hplayer1 = application.getUser ( 0  )
    local hscene = user.getScene ( hplayer1 )
    local firstpersoncam = this.firstpersoncam ( )
    local hfirstpersoncam  = scene.createRuntimeObject ( hscene, "facecam" )
    local camdummy  = scene.createRuntimeObject ( hscene, "Dummy" )
        local hHX ,hHY,hHZ = shape.getSkeletonJointTranslation ( this.getObject ( ),"Bip001_Head", object.kGlobalSpace )  
    local hHXr,hHYr,hHZr = shape.getSkeletonJointRotation ( this.getObject ( ), "Bip001_Head", object.kLocalSpace )
    if (hfirstpersoncam ) 
    then 
    object.setParent ( hfirstpersoncam , this.getObject ( ), false )
    end
    
    if object.bindTransformToParentSkeletonJoint ( hfirstpersoncam , "Bip001_Head" ) then
        log.message ( "skeleton binding successful!" )
        this.firstpersoncam ( hfirstpersoncam )
     	       local firstcam = group.getSubObjectAt (this.firstpersoncam ( ) ,0  )
                    local H3rdcam = group.getSubObjectAt (this.firstpersoncam ( ) ,1  )
        user.setActiveCamera (hplayer1, firstcam )
	
       this.h3rdcam ( H3rdcam)
    end
    
    object.setVisible ( this.getObject ( ),true )
 
this.hcamdummy ( camdummy )

  for i=0, 70 -1
    do 
    hashtable.add ( this.inventory ( ), "slot"..i, "empty" )
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function leonai.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	local hplayer1 = application.getUser ( 0 )
    local hscene = user.getScene ( hplayer1 )
    local leon = this.getObject ( )
    local island = scene.getTaggedObject (hscene, "terrainbox" )
    local isX, isY, isZ = object.getRotation (island,object.kGlobalSpace  )
    local p1X, p1Y , p1Z = object.getRotation ( this.getObject ( ),object.kGlobalSpace)
    local cX, cY , cZ = object.getRotation ( this.hcamdummy ( ),object.kGlobalSpace)
    local  nRayPntX, nRayPntY, nRayPntZ = object.getTranslation (this.firstpersoncam ( ),object.kGlobalSpace )
    local PX , PY ,PZ = object.getTranslation ( leon,object.kGlobalSpace )
    local hHX ,hHY,hHZ = shape.getSkeletonJointTranslation ( this.getObject ( ),"Bip001_Head", object.kGlobalSpace )  
    local hHXr,hHYr,hHZr = shape.getSkeletonJointRotation ( this.getObject ( ), "Bip001_Head", object.kGlobalSpace )
     local firstcam = group.getSubObjectAt (this.firstpersoncam ( ) ,0  )
    local nRayDirX, nRayDirY, nRayDirZ = object.getDirection ( firstcam, object.kGlobalSpace )
    local hhashsize = hashtable.getSize ( this.inventory ( ) )
    
    this.hashsize ( hhashsize)
    user.setAIVariable (hplayer1,"viewport","hashsize",this.hashsize ( ) )
    

     object.setRotation ( this.getObject ( ),isX,p1Y , isZ,object.kGlobalSpace  )
     local targetnamehud = hud.getComponent ( hplayer1,"hud.targetname" )
     object.matchTranslation ( this.hcamdummy ( ),this.firstpersoncam ( ),object.kGlobalSpace )
     object.matchRotation ( this.hcamdummy ( ),this.firstpersoncam ( ),object.kGlobalSpace  )
      -- shape.overrideSkeletonJointRotation ( this.getObject ( ), "Bip001_Head", this.headYR ( ), 0, 0, object.kLocalSpace, 1 )
      --hud.setCursorPosition (hplayer1 , 50,50 )
     if ( PY < -10 )
     then
    object.setTranslation ( leon ,5,10,5,object.kGlobalSpace )
    
    end
      local hHX ,hHY,hHZ = shape.getSkeletonJointTranslation ( leon,"Bip001_Head", object.kGlobalSpace )  
    local hHXr,hHYr,hHZr = shape.getSkeletonJointRotation ( leon, "Bip001_Head", object.kLocalSpace )
  
    
       local hHitObject, nHitDist, nHitSensorID =  scene.getFirstHitSensor ( hscene, nRayPntX, nRayPntY, nRayPntZ, nRayDirX  , nRayDirY, nRayDirZ ,100)
   
     this.nhit ( nHitSensorID )
   
  
        if ( hHitObject ~= nil )
      then
       this.targetobject( hHitObject )
      
      end
     
      user.setAIVariable (hplayer1,"viewport","targetobject",this.targetobject ( )  )
            if ( this.targetobject () ~= nil )
      then
          local targetAi = object.getAIModelNameAt ( this.targetobject(),0 )
       this.targetname ( object.getAIVariable ( this.targetobject (),targetAi,"name" ) ) 
      hud.setLabelText ( targetnamehud, this.targetname ( ) )
    
      end 
      

   

   
   if (this.b3rdcam ( ))
   then 
    user.setActiveCamera ( hplayer1, this.h3rdcam ( ))
    else
     user.setActiveCamera ( hplayer1, this.firstpersoncam ( ))
   end
 
   
   

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

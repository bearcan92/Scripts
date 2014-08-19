--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function leonai.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
	   	local hplayer1 = application.getUser ( 0 )
    local hscene = user.getScene ( hplayer1 )
       local nLeft, nBottom, nWidth, nHeight = user.getViewport ( hplayer1  )
    local nPosX, nPosY = hud.getCursorPosition ( hplayer1  )
    local firstcam = group.getSubObjectAt (this.firstpersoncam ( ) ,0  )
    this.headYR ( -nDeltaY * 50 )
  
    local inputtype = user.getAIVariable (hplayer1,"viewport", "inputtype")
    
    if (inputtype == 1)
    then
    shape.overrideSkeletonJointRotation ( this.getObject ( ), "Bip001_Head", -nPosY +50 , 0, 0, object.kLocalSpace,10000 )
    object.rotate ( this.getObject ( ),0, -nDeltaX * 200,0,object.kGlobalSpace )
    -- object.rotate ( this.firstpersoncam ( ),-nDeltaY * 200, 0,0,object.kGlobalSpace )
    -- object.sendEvent ( this.getObject ( ), "leonai" , "onMouseMove" , nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )

   -- if ( nPosY > 50.01 or  nPosY < 49.99 )
 --  then
  
 --  end
      if ( nPosX > 100 )
   then
    hud.setCursorPosition (hplayer1 ,0,nPosY  )
  end
        if ( nPosY > 100 )
   then
    hud.setCursorPosition (hplayer1 , nPosX,100 )
  end
        if ( nPosX < 0 )
   then
    hud.setCursorPosition (hplayer1 ,100,nPosY )
  end
        if ( nPosY < 0 )
   then
    hud.setCursorPosition (hplayer1 ,nPosX,0 )
  end
  
end


 
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

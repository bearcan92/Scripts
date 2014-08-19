--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	        local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
     local attackanimrotation = this.attackanimrotation ( )
    
    if (this.gameready ( ))
    then
	
		if ( kKeyCode == input.kKeyW)
    then
    this.wmove (false)
          local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
          local nClipIndex = 1
      local nBlendLayer = 0
   --   animation.setCurrentClip ( leon, nBlendLayer, nClipIndex )
   --   animation.setPlaybackMode ( leon, 0, animation.kPlaybackModeLoop )
    
	end
       if (kKeyCode == input.kKeyS)
    then
    this.smove (false)
             local nClipIndex = 0
      local nBlendLayer = 0
   --   animation.setCurrentClip ( leon, nBlendLayer, nClipIndex )
   --   animation.setPlaybackMode ( leon, 0, animation.kPlaybackModeLoop )
	end
    if ( kKeyCode == input.kKeyA)
    then
    this.amove (false)
             local nClipIndex = 2
      local nBlendLayer = 0
   --   animation.setCurrentClip ( leon, nBlendLayer, nClipIndex )
   --   animation.setPlaybackMode ( leon, 0, animation.kPlaybackModeLoop )
	end
    if ( kKeyCode == input.kKeyD)
    then
    this.dmove (false)
             local nClipIndex = 3
      local nBlendLayer = 0
     -- animation.setCurrentClip ( leon, nBlendLayer, nClipIndex )
     -- animation.setPlaybackMode ( leon, 0, animation.kPlaybackModeLoop )
	end
	
        if ( kKeyCode == input.kKeyI)
    then
    this.imove (false)
	end
    
     if ( kKeyCode == input.kKeyJ)
    then
    this.jmove (false)
	end
    
     if ( kKeyCode == input.kKeyL)
    then
    this.lmove (false)
	end
    
     if ( kKeyCode == input.kKeyK)
    then
    this.kmove (false)
	end
    
      if ( kKeyCode == input.kKeyE)
    then
    this.eattack(false)
    
    
    
   -- log.message ( "eup" )
     local nClipIndex = 8
      local nBlendLayer = 0
    --  animation.setCurrentClip ( leon, nBlendLayer, nClipIndex )
   --   animation.setPlaybackMode ( leon, 0, animation.kPlaybackModeLoop )

    
	end
	
     if ( kKeyCode == input.kKeyQ)
    then
    this.overcam (false)
    
    end
    
    end
    
    	if (kKeyCode == input.kKeySpace)
    then
  
  this.jump (false)
    
            
	end
     	if (kKeyCode == input. kKeyLShift)
    then
  
    
    this.LShift (false)
            
	end
    
   --  if ( kKeyCode == input.kKeyR)
    --then
    --this.InventoriOpen (false)
	--end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

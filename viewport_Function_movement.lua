--------------------------------------------------------------------------------
--  Function......... : movement
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.movement ( )
--------------------------------------------------------------------------------
	
    
    local speed = this.speed ( )
    
    if ( this.LShift ( ))
    then
    this.speed(this.defultspeed() * this.speedmodifyer ())
    else
    this.speed(this.defultspeed ()) 
    end 
    
    if (this.wmove ( ))
    then
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    local dt = application.getLastFrameTime ( )
    if ( leon ~= nil )
    then
    dynamics.setLinearVelocity  ( leon, 0,  0,speed, object.kLocalSpace )
    end
    end
    
    if (this.smove ( ))
    then
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    if (leon) 
    then
    local dt = application.getLastFrameTime ( )
    dynamics.setLinearVelocity  ( leon, 0,  0, -speed, object.kLocalSpace )
    end
    end
    
    if (this.amove ( ))
    then
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    if ( leon ~= nil )
    then
    local dt = application.getLastFrameTime ( )
    dynamics.setLinearVelocity  ( leon, speed, 0, 0, object.kLocalSpace )
    end
    end
    
    if (this.dmove ( ))
    then
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    if ( leon ~= nil )
    then
    local dt = application.getLastFrameTime ( )
    dynamics.setLinearVelocity  ( leon, -speed, 0, 0, object.kLocalSpace )
    end
    end
    
    if (this.jump ( ))
    then
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    if ( leon ~= nil )
    then
    dynamics.addForce  ( leon, 0, 999, 0, object.kLocalSpace )
    end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

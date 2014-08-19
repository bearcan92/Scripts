--------------------------------------------------------------------------------
--  Function......... : upgradestore
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.upgradestore (x,price)
--------------------------------------------------------------------------------
	local speedmodifyer= this.speedmodifyer ( )
    local gold = this.gold ( )
    -- x 1 is running 
	if ( x == 1)
    then
    if (this.gold ( ) > 50)
    then
    
    log.message ( "CHA CHING" )
    this.speedmodifyer (speedmodifyer +5)
    log.message ( "SPEED UPGRADED TO : ",speedmodifyer )
    this.gold (gold -50 )
    else
    log.message ( "No enough funds" )
    end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

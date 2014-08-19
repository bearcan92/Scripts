--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
	if ( kKeyCode == input.kKeyW)
    then
    this.wmove (false)
    
	end
       if (kKeyCode == input.kKeyS)
    then
    this.smove (false)
	end
    if ( kKeyCode == input.kKeyA)
    then
    this.amove (false)
	end
    if ( kKeyCode == input.kKeyD)
    then
    this.dmove (false)
	end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

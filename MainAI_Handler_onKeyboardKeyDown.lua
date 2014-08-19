--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
	if (kKeyCode == input.kKeyW)
    then
  
    this.wmove (true)
    log.message ("Wdown" )
            
	end
    
    if (kKeyCode == input.kKeyS)
    then
    
    this.smove (true)
	end
    
    if ( kKeyCode == input.kKeyA)
    then
    this.amove (true)
	end
    
    if ( kKeyCode == input.kKeyD)
    then
    this.dmove (true)
	end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

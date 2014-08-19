--------------------------------------------------------------------------------
--  Function......... : righthandequip
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function leonai.righthandequip ( )
--------------------------------------------------------------------------------
	
    -- Some code--
    -- Create the sword--
    local inrighthand = scene.createRuntimeObject ( object.getScene ( this.getObject ( ) ), "vanisword" )
    if  ( inrighthand )
    then
        -- Some sword setup code--
        -- Take a handle on the created sword--
        this.righthandobject ( inrighthand )
    end

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

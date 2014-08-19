--------------------------------------------------------------------------------
--  Function......... : blockstore
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.blockstore (price,player,name,amount)
--------------------------------------------------------------------------------
	   local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    local gold = this.gold ( )
     local inventory = object.getAIVariable ( leon ,"leonai" ,"inventory")
    -- x 1 is running 
    local slot = this.checkinv (inventory, name, amount  )


     if ( slot ~= nil )
    then
    if (this.gold ( ) > price )
    then

    log.message ( "CHA CHING" )
    local inventory = object.getAIVariable ( player ,"leonai" ,"inventory")
    
    
    this.addtoinventory (inventory, name, amount,slot )
    
    this.gold (gold -price )
    else
    log.message ( "No enough funds" )
    end
    
    else
    log.message ( "your inventory is full you cant buy anything" )
    end
 
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Handler.......... : onHudButtonHandler
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function storeAI.onHudButtonHandler ( index )
--------------------------------------------------------------------------------
	
    local amountbuy = this.amountbuy ( )
    local itemselection = this.itemselection ( )
    local price = this.hprice ( )
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
     local player = scene.getTaggedObject ( hscene,"player1" )
    --local player = user.getAIVariable ( hplayer1,"viewport","playercharacter" )
    local itemlist = user.getAIVariable ( hplayer1, "viewport","itemlist"  )
 
    local itemlistsize = hashtable.getSize ( itemlist )
    

    local hName = hashtable.getKeyAt ( itemlist,this.itemslectionCLAMP ( ) )
    this.name (hashtable.get( itemlist, hName) ) 
    

    
	if (index == 5 )
    then
    log.message ( "item", itemselection )
    this.itemselection (itemselection -1 )
    
    end
    	if (index == 6 )
    then
    log.message ("item", itemselection )
    this.itemselection (itemselection +1 )
    
    end
    	if (index == 7 )
    then
    log.message ( amountbuy )
    this.amountbuy (amountbuy -1 )
    end
    	if (index == 8 )
    then
    log.message ( amountbuy )
    this.amountbuy (amountbuy +1 )
    end
      	if (index == 9 )
    then
    log.message ( amountbuy )
    
    this.buy ( this.hprice ( ), player,this.name(),this.amountbuy ( ) )
    end 


--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

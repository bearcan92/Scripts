--------------------------------------------------------------------------------
--  Handler.......... : onHudButtonHandler
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Crafting.onHudButtonHandler ( index  )
--------------------------------------------------------------------------------
	local hplayer1 = this.getUser ( )
    local hslotlist = this.Craftingtablehash ( )
    local iteminput = user.getAIVariable (hplayer1,"viewport","currentItemKey"  )
    local imginput = user.getAIVariable ( hplayer1,"viewport","currentitemimg"  )
    local hud1 = hud.getComponent ( hplayer1,"hud.slot1" )
    local hud2 = hud.getComponent ( hplayer1,"hud.slot2" )
    local hud3 = hud.getComponent ( hplayer1,"hud.slot3" )
    local hud4 = hud.getComponent ( hplayer1,"hud.slot4" )
    local hud5 = hud.getComponent ( hplayer1,"hud.slot5" )
    local hud6 = hud.getComponent ( hplayer1,"hud.slot6" )
    local hud7 = hud.getComponent ( hplayer1,"hud.slot7" )
    local hud8 = hud.getComponent ( hplayer1,"hud.slot8" )
    local hud9 = hud.getComponent ( hplayer1,"hud.slot9" )
    local hud10 = hud.getComponent ( hplayer1,"hud.Outputslot" )
    local vSlot1 = hashtable.get (hslotlist, "slot1" )
    local vSlot2 = hashtable.get (hslotlist, "slot2" )
    local vSlot3 = hashtable.get (hslotlist, "slot3" )
    local vSlot4 = hashtable.get (hslotlist, "slot4" )
    local vSlot5 = hashtable.get (hslotlist, "slot5" )
    local vSlot6 = hashtable.get (hslotlist, "slot6" )
    local vSlot7 = hashtable.get (hslotlist, "slot7" )
    local vSlot8 = hashtable.get (hslotlist, "slot8" )
    local vSlot9 = hashtable.get (hslotlist, "slot9" )
    
    
	if (index == 1 )
    then
   
    
    hashtable.set (hslotlist,"slot1",iteminput )
    
    log.message ( hashtable.get (hslotlist, "slot1" ) )
    hud.setComponentBackgroundImage ( hud1,imginput )
    
    end
    
    	if (index == 2 )
    then
  
    hashtable.set (hslotlist,"slot2",iteminput )
      log.message ( hashtable.get (hslotlist, "slot2" ) )
    hud.setComponentBackgroundImage ( hud2,imginput )
    end
    
    	if (index == 3 )
    then
   
    
    hashtable.set (hslotlist,"slot3",iteminput )
      log.message ( hashtable.get (hslotlist, "slot3" ) )
    hud.setComponentBackgroundImage ( hud3,imginput )
    end
    
    	if (index == 4 )
    then
   
    
    hashtable.set (hslotlist,"slot4",iteminput )
      log.message ( hashtable.get (hslotlist, "slot4" ) )
    hud.setComponentBackgroundImage ( hud4,imginput )
    end
    
    	if (index == 5 )
    then
   
    
    hashtable.set (hslotlist,"slot5",iteminput )
      log.message ( hashtable.get (hslotlist, "slot5" ) )
    hud.setComponentBackgroundImage ( hud5,imginput )
    end
    
    	if (index == 6 )
    then
   
    
    hashtable.set (hslotlist,"slot6",iteminput )
      log.message ( hashtable.get (hslotlist, "slot6" ) )
    hud.setComponentBackgroundImage ( hud6,imginput )
    end
    
    	if (index == 7 )
    then
   
    
    hashtable.set (hslotlist,"slot7",iteminput )
      log.message ( hashtable.get (hslotlist, "slot7" ) )
    hud.setComponentBackgroundImage ( hud7,imginput )
    end
    
    	if (index == 8 )
    then
   
    
    hashtable.set (hslotlist,"slot8",iteminput )
      log.message ( hashtable.get (hslotlist, "slot8" ) )
    hud.setComponentBackgroundImage ( hud8,imginput )
    end
    
    	if (index == 9 )
    then
   hashtable.set (hslotlist,"slot9",iteminput )
     log.message ( hashtable.get (hslotlist, "slot9" ) )
    hud.setComponentBackgroundImage ( hud9,imginput )
    
    end
    
  
    
    this.craftedstring (vSlot1..vSlot2..vSlot3..vSlot4..vSlot5..vSlot6..vSlot7..vSlot8..vSlot9  ) 
    log.message ( "craftstring",this.craftedstring ( ) )
    
    if (hashtable.contains (this.craftlist ( ) ,this.craftedstring ( ) )) 
    then
    local vValue = hashtable.get (this.craftlist ( ) ,this.craftedstring ( ) )
    log.message ("you crafted :" ,vValue  )
    end
    
    --000000000000000000030000000000030000  sticks
    
    
    -- add 0000 to all item list and item icon lists 
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

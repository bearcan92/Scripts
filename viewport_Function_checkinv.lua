--------------------------------------------------------------------------------
--  Function......... : checkinv
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.checkinv (htHashtable, sKey, vValue )
--------------------------------------------------------------------------------
	--needs fixing
    local firstslot = hashtable.getAt (htHashtable, 0 )
     if ( firstslot == "empty" )
    then 
    
    
   
    
    return 0
    
    end
    
    for i=0, 70 
    do
    local nextemptyslot = this.nextemptyslot ( )
     this.nextemptyslot (nextemptyslot + 1 )
   
    
     this.content(hashtable.getAt (htHashtable, nextemptyslot )) 
    if ( this.content() == "empty" )
    then 
    --freeslot should be the same as the index number of the first "empty" ,you can access that 
    
    log.message ( "freeslot:  ", nextemptyslot ) 
    
    return nextemptyslot
    
    else
    log.message ( "inventory full" )
    return nil 
    end
    
    end
   
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Function......... : addtoinventory
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.addtoinventory (htHashtable, sKey, vValue ,freeslot)
--------------------------------------------------------------------------------
	
    if (freeslot  ~= nil)
    then 

    if ( hashtable.contains ( htHashtable, sKey )  )
   then
       -- If the key is in the hashtable, update the value
       local hvalue = hashtable.get ( htHashtable,sKey )
       hashtable.set ( htHashtable, sKey, hvalue+vValue )
       log.message ( "set :",sKey," to ", hvalue+vValue )
   else
       -- If the key is not in the hashtable, create a new entry in the hashtable, with sKey and vValue as key/value for this entry.
       local hplayer1 = this.getUser ( )
       local oldkey = hashtable.getKeyAt (htHashtable, freeslot )
       local keytoicon = hashtable.get ( this.itemlistreverse ( ),sKey)
       local vValueicon = hashtable.get ( this.itemiconlist ( ),keytoicon)
       local invcomponenttag = hashtable.getKeyAt ( this.inventoryhudslots ( ), freeslot )
       local invcomponent = hud.getComponent ( hplayer1,invcomponenttag )
       
       hashtable.remove ( htHashtable ,oldkey )
       hashtable.add ( htHashtable, sKey, vValue )
       
       hud.setComponentBackgroundImage (invcomponent,vValueicon)
       log.message (oldkey,"to removed" ,vValueicon,"new icon" ,freeslot,"freeslot")
       
       
   end
 
  end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

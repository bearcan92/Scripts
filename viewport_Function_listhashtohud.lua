--------------------------------------------------------------------------------
--  Function......... : listhashtohud
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.listhashtohud ( Hashtable)
--------------------------------------------------------------------------------
    --called OnEnterFrame if player ~= nil
    local hplayer1 = this.getUser ( )
	local nSize = hashtable.getSize ( Hashtable )	
    local hComponent = hud.getComponent ( hplayer1, "hud.invcontent" )
    local invslot = this.inventoryhudslots ( )
    local itemiconlist = this.itemiconlist ( )
    local iconNsize = hashtable.getSize ( itemiconlist )
    hud.removeListAllItems ( hComponent )
    if (Hashtable ~= nil)
    then
    if (nSize > 0)
    then
    
    for i=0, hashtable.getSize ( Hashtable ) -1
    do 
    local key = hashtable.getKeyAt (Hashtable, i  )
    local hvalue = hashtable.get (Hashtable ,key )
    --log.message (key, hvalue )
    local hvaluestr = ""..hvalue
    local combostring = key.."  :"..hvaluestr
    
    hud.addListItem ( hComponent, combostring )
    

    end
    end
    end
 
  	 
      
  
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

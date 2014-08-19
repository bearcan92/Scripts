--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function storeAI.onInit (  )
--------------------------------------------------------------------------------
	
    local hitemlist = this.itemiconlist ( )
    
    hashtable.add ( hitemlist, "0001", "icon_Dirt")--0
    hashtable.add ( hitemlist, "0002", "icon_Cobblestone")--1
    hashtable.add ( hitemlist, "0003", "icon_oak_planks")--2
    hashtable.add ( hitemlist, "0004", "icon_Wood")--3
    hashtable.add ( hitemlist, "0005", "icon_Leaves")--4
    hashtable.add ( hitemlist, "0006", "icon_Sapling")--5
    hashtable.add ( hitemlist, "0007", "icon_Iron_Block")--6
    hashtable.add ( hitemlist, "0008", "icon_Coal_Ore")--7
    hashtable.add ( hitemlist, "0009", "icon_Crafting_Table")--8 need correctinon truogh all lists 
    hashtable.add ( hitemlist, "0010", "icon_Iron_Bars")--9
    hashtable.add ( hitemlist, "0011", "icon_Sand")--10
    hashtable.add ( hitemlist, "0012", "icon_Sandstone")--11
    hashtable.add ( hitemlist, "0013", "icon_Brick")--12
    hashtable.add ( hitemlist, "0014", "icon_Glass")--13
    hashtable.add ( hitemlist, "0015", "icon_Stone_Brick")--14
    hashtable.add ( hitemlist, "0016", "icon_Stone_Brick")--15
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

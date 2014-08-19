--------------------------------------------------------------------------------
--  Function......... : itemliststarter
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.itemliststarter ( )
--------------------------------------------------------------------------------
	
        local hTable = this.itemtable ( )
        local hTable2 = this.itemcode ( )
        local nSize = table.getSize ( hTable )
        local nSize2 = table.getSize ( hTable2 )
        local hitemlist = this.itemlist ( )
        local hitemlist2 = this.itemlistcode ( )
        local hitemlistR = this.itemlistreverse ( )
        
        
        if  (nSize2 > 0 )
        then
          for nIndex=0, nSize2 - 1
          do 
          local vElement = table.getAt ( hTable2, nIndex  )
          
          hashtable.add ( hitemlist2 , vElement , nIndex )
          end
                  if  (nSize2 > 0 )
        then
          for nIndex=0, nSize2 - 1
          do 
          local sKey = table.getAt ( hTable2, nIndex  )
          local vElement = table.getAt ( hTable, nIndex  )
          
          hashtable.add ( hitemlist ,sKey, vElement )
          end
          end

          end
          
                  if  (nSize2 > 0 )
        then
          for nIndex=0, nSize2 - 1
          do 
          local vElement = table.getAt ( hTable2, nIndex  )
          local key = table.getAt ( hTable, nIndex  )
          
          hashtable.add ( hitemlistR , key , vElement )
          end
          end
          
          
          	
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

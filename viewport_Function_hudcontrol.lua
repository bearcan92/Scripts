--------------------------------------------------------------------------------
--  Function......... : hudcontrol
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.hudcontrol ( )
--------------------------------------------------------------------------------
	
    	local hplayer1 = application.getUser ( 0 )
        local hscene = user.getScene ( hplayer1 )
        local inventory = hud.getComponent ( hplayer1, "hud.inventory" )
        local tabmenu = hud.getComponent ( hplayer1, "hud.tabmenu" )
        local leon = scene.getTaggedObject ( hscene,"player1" )
        local upgradebutton = hud.getComponent ( hplayer1,"hud.upgrade" )
        local upgradesbackdrop =  hud.getComponent ( hplayer1,"hud.Upgrades" )
        local tabmenuNtree = this.tabmenuNtree ( )
        local runninghud =  hud.getComponent ( hplayer1,"hud.running" )
        local buyrun =  hud.getComponent ( hplayer1,"hud.buyrun" )
        local command = hud.getComponent ( hplayer1,"hud.command" )
        local hashsize = this.hashsize ( )
        local storebutton = hud.getComponent ( hplayer1,"hud.storebutton" )
        local store = hud.getComponent ( hplayer1,"hud.Store" )
        local left = hud.getComponent ( hplayer1,"hud.left" )
        local right = hud.getComponent ( hplayer1,"hud.right" )
        local less = hud.getComponent ( hplayer1,"hud.less" )
        local more = hud.getComponent ( hplayer1,"hud.more" )
        local storeamount = hud.getComponent ( hplayer1,"hud.amount" )
        local storeintamount = user.getAIVariable (hplayer1,"storeAI", "amountbuy" )
        local buyblock = hud.getComponent ( hplayer1,"hud.buy" )
        local invslotsize = hashtable.getSize ( this.inventoryhudslots ( ) )
        local crafthud = hud.getComponent ( hplayer1, "hud.crafting" )
        
     
    

      
      
      if (this.hudtree ( ) > 0 )
      then
      this.inputtype ( 2 )
      hud.setCursorVisible (hplayer1,true )
      else
      this.inputtype ( 1 )
      hud.setCursorVisible (hplayer1,false )
      end
      
      if (this.hudtree ( )==1)
      then
      hud.setComponentVisible ( tabmenu, true  )
      hud.setComponentActive (upgradebutton ,true )
      hud.setComponentActive (storebutton ,true )

      else
      hud.setComponentVisible ( tabmenu, false )
      hud.setComponentActive (upgradebutton ,false)
      hud.setComponentActive (storebutton ,false )

      
      end
      -- open and colses the upgrade menu
      if (this.hudtree ( )==2)
      then
      
      hud.setComponentVisible ( upgradesbackdrop, true  )
      hud.setComponentVisible ( runninghud, true  )
      hud.setComponentVisible ( buyrun, true  )
      hud.setComponentActive (buyrun ,true)
      else
      hud.setComponentVisible ( upgradesbackdrop, false )
      hud.setComponentVisible ( runninghud, false )
      hud.setComponentVisible ( buyrun, false )
      hud.setComponentActive (buyrun ,false)
      end
      
      -- open and closes the inventory window
      if (this.hudtree ( )==3)
      then
      hud.setComponentVisible ( inventory, true )
      hud.setComponentVisible ( crafthud,true )
      hud.setComponentActive (  crafthud,true )
       if ( invslotsize > 0 )
  then
    for i = 0, invslotsize -1
    do
        local sKey = hashtable.getKeyAt ( this.inventoryhudslots ( ), i)
        local vValue = hashtable.get ( this.inventoryhudslots ( ),sKey)
        local invcomponent = hud.getComponent ( hplayer1 ,vValue  )
        hud.setComponentVisible ( invcomponent, true )
    end
    end
      
      else
      hud.setComponentVisible ( inventory, false )
      hud.setComponentVisible ( crafthud,false )
      hud.setComponentActive (  crafthud,false )
        if ( invslotsize > 0 )
  then
    for i = 0, invslotsize -1
    do
        local sKey = hashtable.getKeyAt ( this.inventoryhudslots ( ), i)
        local vValue = hashtable.get ( this.inventoryhudslots ( ),sKey)
        local invcomponent = hud.getComponent ( hplayer1 ,vValue  )
        hud.setComponentVisible ( invcomponent, false )
    end
    end
    
    
      end
      
      if (this.hudtree ( )==4)
      then
      
      hud.setComponentVisible ( store, true  )
      hud.setComponentActive (left ,true)
      hud.setComponentActive (right ,true)
      hud.setComponentActive (less ,true)
      hud.setComponentActive (more ,true)
      hud.setComponentActive (buyblock ,true)
      hud.setLabelText ( storeamount,""..storeintamount )
   
      else
      hud.setComponentVisible ( store, false )
      hud.setComponentActive (left ,false)
      hud.setComponentActive (right ,false)
      hud.setComponentActive (less ,false)
      hud.setComponentActive (more ,false)
      hud.setComponentActive (buyblock ,false)
 
      
      end
      
     
 
      
      
    
    
      
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

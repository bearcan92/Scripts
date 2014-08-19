--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function storeAI.onEnterFrame (  )
--------------------------------------------------------------------------------
	
       local hplayer1 = this.getUser ( )
       local hscene = user.getScene ( hplayer1 )
       local leon = scene.getTaggedObject ( hscene,"player1" )
       local itemlist = user.getAIVariable ( hplayer1, "viewport","itemlist"  )
       local itemlistsize = hashtable.getSize ( itemlist )
       local store = hud.getComponent ( hplayer1,"hud.Store" )
       local itemicon = hud.getContainerChildAt ( store, 6 )
       local vElement = hashtable.getAt ( this.itemiconlist ( ), this.itemselection ( ) )
       
       this.itemselection (this.toptozero (this.itemselection ( ),itemlistsize ) )
       this.itemslectionCLAMP (math.clamp( this.itemselection ( ),0,itemlistsize) )
       this.amountbuy ( math.clamp ( this.amountbuy ( ),0,100 ) )
       
       --hud.setComponentBackgroundImage ( itemicon, vElement )
       if(vElement ~= nil)
       then
       hud.setComponentBackgroundImage ( itemicon, vElement )
       --log.message ( "itemselection",this.itemselection ( ),"itemlsit size",itemlistsize )
       end
       --log.message ( "itemselectionclamp: ",this.itemslectionCLAMP ( ),"itemselection: ",this.itemselection ( ),"name ",this.name ( ),"temlist size :",itemlistsize)
       
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Function......... : buy
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function storeAI.buy ( price,player,name,amount)
--------------------------------------------------------------------------------
	 local hplayer1 = this.getUser ( )
	 user.sendEvent ( hplayer1,"viewport","onstoreinput",price,player,name,amount )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

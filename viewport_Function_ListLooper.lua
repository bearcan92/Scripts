--------------------------------------------------------------------------------
--  Function......... : ListLooper
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.ListLooper ( hHashtable,nDelta )
--------------------------------------------------------------------------------
	
     
      -- TO BE CALLED ON onMouseWheel
      -- put hash in indexd parameter and nDelta in nDelta (duh!)
      local nEnd = hashtable.getSize ( hHashtable )
      local number = this.number ( )
      

      if ( nEnd ~= nil ) 
      then
      
      if (nEnd > 0)
      then
       this.number (  this.toptozero ( this.number ( ),nEnd  ) )
      if (nDelta == 1)
    then
     this.number ( this.increment ( this.number() )  )
    -- log.message ( this.number() )
     end 
        if (nDelta == -1)
    then
     this.number ( this.decrement ( this.number() )  )
     --log.message ( this.number())
     end 
     
     this.number (math.clamp ( this.number(), 0, nEnd-1 ))
     
  
      local sKey = hashtable.getKeyAt ( hHashtable ,this.number ( ) )
      return sKey
      
      
     
     
    
      
      else -- hashsize check else
      log.message ( "size not bigger than 0 " )
      end -- hashsize check end
      else -- hash not nil check else
      log.message ( "no size" )
      end -- hash not nil check end 
      
     
   
      
   
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

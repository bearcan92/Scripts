--------------------------------------------------------------------------------
--  Function......... : toptozero
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.toptozero ( nNumber , nEnd )
--------------------------------------------------------------------------------
	
    
  if ( nNumber == 0  or nNumber < 1)
      then
      
      nNumber = nEnd
      
 
      return nNumber
      end
      
      
      
      if (nNumber > nEnd  )--or nNumber == nEnd
      then
       nNumber = 1
        
     
       return nNumber
      end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
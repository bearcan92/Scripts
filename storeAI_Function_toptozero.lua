--------------------------------------------------------------------------------
--  Function......... : toptozero
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function storeAI.toptozero (nNumber , nEnd )
--------------------------------------------------------------------------------
	
  if ( nNumber < -1)
      then
      
      nNumber = nEnd
      
 
      return nNumber
      end
      
      
      --nEnd = nEnd + 1
      if (nNumber > nEnd +1 )--or nNumber == nEnd
      then
       nNumber = -1
        
     
       return nNumber
      end
	
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

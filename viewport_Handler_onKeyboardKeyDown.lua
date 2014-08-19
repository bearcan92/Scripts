--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
     
     local attackanimrotation = this.attackanimrotation ( )
     
     local cammodeR = this.cammodeR ( )
     local increasetest = this.increasetest ( )
     local leon = this.playercharacter ( )
     local placeblocktype = this.placeblocktype ( )
           local hplayer1 = this.getUser ( 0 )
    local hscene = user.getScene ( hplayer1 )
     local inventory1 = scene.getTaggedObject (hscene, "inventory1" )
     local playercreated =this.playercreated ( )
     
     
     
	
	if (kKeyCode == input.kKeyW)
    then
  
    this.wmove (true)
    
            
	end
    
    if (kKeyCode == input.kKeyS)
    then
    this.smove (true) 
	end
    
    if ( kKeyCode == input.kKeyA)
    then
    this.amove (true)
	end
    
    if ( kKeyCode == input.kKeyD)
    then
    this.dmove (true)
	end
    
     if ( kKeyCode == input.kKeyI)
    then
    if (this.hudtree ( ) > 0)
    then
    this.hudtree (0)
    else
    this.hudtree (3)
    end
	end
    
     if ( kKeyCode == input.kKeyJ)
    then
    this.jmove (true)
	end
    
     if ( kKeyCode == input.kKeyL)
    then
    this.lmove (true)
	end
    
     if ( kKeyCode == input.kKeyK)
    then
  
    
	end
    
     if ( kKeyCode == input.kKeyE)
    then
    this.eattack (true)
    this.attackanimrotation ( attackanimrotation + 1 )
    
	end
    
    if ( kKeyCode == input.kKeyR)
    then
    
    
    end
    
    if ( kKeyCode == input.kKeyTab)
    then
    if (this.hudtree ( ) > 0)
    then
    this.hudtree (0)
    else
    this.hudtree (1)
    end
    end
    
     if ( kKeyCode == input.kKeyQ)
    then
    this.overcam (true)
    
    end
    if ( kKeyCode == input.kKeyC)
    then
    this.cammodeR ( cammodeR + 1 )
    
    end
      if ( kKeyCode == input.kKeyM)
    then
    
    if( this.increasetest ( ) < 5 )
    then
    this.increasetest( increasetest + 1 )
    end
    
    log.message ( increasetest )
    end
     if ( kKeyCode == input.kKeyReturn)
    then
    
  
    
   this.CreatePlayer (  )

   this.gameready (true)
 
   
    end
      
      	if (kKeyCode == input.kKey1)
    then
  
  
   

	end	
    if (kKeyCode == input.kKey2)
    then
    

            
	end
	if (kKeyCode == input.kKeyW)
    then
  
   
    
            
	end
	if (kKeyCode == input.kKeyW)
    then
  
    
    
            
	end
    local itemlistsize = hashtable.getSize ( this.inventoryhudslots ( ))
	if (kKeyCode == input.kKeySpace)
    then
  
    this.jump (true)
      if ( itemlistsize > 0 )
  then
    for i = 0, itemlistsize -1
    do
        local sKey = hashtable.getKeyAt ( this.inventoryhudslots ( ), i)
        local vValue = hashtable.get ( this.inventoryhudslots ( ),sKey)
        log.message ("key : ", sKey,"  value :", vValue )
    end
    end
            
	end
    
       if ( kKeyCode == input.kKeyF)
    then
    --this.lamp (true)
    this.playball (  )
   
	end
    
    	if (kKeyCode == input. kKeyLShift)
    then
  
    
    this.LShift (true)
            
	end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

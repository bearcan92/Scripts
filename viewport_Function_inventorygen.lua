--------------------------------------------------------------------------------
--  Function......... : inventorygen
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.inventorygen ( X,Y )
--------------------------------------------------------------------------------
	       local hplayer1 = this.getUser ( 0 )
           local XM = 3
           
           local YM = 3.3
           
           
        


    
     for i=0, 10 
    do
    
    local X = X + i*XM
    
    
	local hComponent =  hud.newComponent ( hplayer1, hud.kComponentTypeButton, "slot"..X..Y )
    local tag = hud.getComponentTag ( hComponent )
  
 
    
    hud.setComponentAspectInvariant ( hComponent, true)
    hud.setComponentSize ( hComponent, 7, 7 )
    hud.setComponentBackgroundColor ( hComponent, 127, 127, 127, 255)
    hud.setComponentBackgroundImage ( hComponent,"icon_blank" )
    hud.setComponentBorderColor ( hComponent, 255, 255, 255, 255 )
    hud.setComponentOrigin ( hComponent, hud.kOriginBottom )
    hud.setComponentActive ( hComponent,false )
    hud.setComponentVisible ( hComponent,false )
    


    
  
    hud.setComponentPosition ( hComponent, X  , Y )
  
 
    
    hashtable.add ( this.inventoryhudslots ( ),"slot"..X..Y, tag )
    
    
    
    
    
end
  
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.onInit (  )
--------------------------------------------------------------------------------
	local player1 = this.getUser ( )
    user.setScene ( player1, "terraintest" )
    local hscene = user.getScene ( player1 )
    --local cam1 = scene.getTaggedObject ( hscene,"campl1" )
   -- local hcam1 = group.getSubObjectAt ( cam1, 0 )
    local vansword = scene.getTaggedObject (hscene,"vansword" )
	local leon = scene.getTaggedObject ( hscene,"player1" )
 
    local island = scene.getTaggedObject ( hscene,"island" )
    local box = scene.getTaggedObject ( hscene,"boxi" )
    local pl1HP = this.pl1HP ( )
    local hitemlist = this.itemlist ( )
    --  local firstcam = scene.getTaggedObject ( hscene,"firstcam" )
   -- local firstcamsub = group.getSubObjectAt ( firstcam, 0 )
        
      --  this.hfirstcam ( scene.getTaggedObject ( hscene,"firstcam" ) )
        
      --  user.setActiveCamera ( player1,firstcamsub )
        
       user.addAIModel  ( player1, "storeAI" ) 
       user.addAIModel  ( player1, "Crafting"  )
        
           local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
       
      local nClipIndex = 1
      local nBlendLayer = 0
   
      
      
  
      
     -- music.play (hscene,0,0 )
        
       hud.newTemplateInstance (player1,"NEWTEST","hud" )
       local hbar = hud.getComponent ( player1,"hud.bar" )
       hud.setProgressValue ( hbar,255 )
       hud.setCursorPosition ( player1,25,50 )
    hud.setCursorVisible (player1,false )
    
    this.nextbox  (scene.getTaggedObject (hscene, "terrainbox" ))
    
    local hComponent = hud.getComponent ( hplayer1, "hud.invcontent" )
    local nIndex = hud.addListColumn ( hComponent )
    
  
   this.itemliststarter ( )
   this.inventorygen (40, 48 )
   this.inventorygen (40, 41 )
   this.inventorygen (40, 34 )
   this.inventorygen (40, 27 )
   this.inventorygen (40, 20 )
   this.inventorygen (40, 13 )
    
 
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

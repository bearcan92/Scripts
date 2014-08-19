--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.onEnterFrame (  )
--------------------------------------------------------------------------------
	      local hplayer1 = this.getUser ( )
          
    local hscene = user.getScene ( hplayer1 )
    local leon = this.playercharacter ( )
    local leon = scene.getTaggedObject ( hscene,"player1" )
          local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )

	  
      local dt = application.getLastFrameTime ( ) 

  
      if ( leon ~= nil )
      then
      local PX , PY ,PZ = object.getTranslation ( leon,object.kGlobalSpace )
    local p1X, p1Y , p1Z = object.getRotation ( leon,object.kGlobalSpace)
      local firstpersoncam = object.getAIVariable ( leon ,"leonai","firstpersoncam" )
        this.nhit ( object.getAIVariable ( leon,"leonai","nhit" ))
       -- log.message ( this.nhit ( ) ,"red1")
        
   
    end
  
     
    local hlight = application.getCurrentUserSceneTaggedObject ( "light" )
    local pl1HP = this.pl1HP ( )
    local hbar = hud.getComponent ( hplayer1,"hud.bar" )
    local progress = hud.getProgressValue ( hbar )
    local inventory = hud.getComponent ( hplayer1, "hud.inventory" )
    local crosshair = hud.getComponent (hplayer1,"hud.crosshair"  )
    local vcamy = this.camy ( )
    
    local targetobject = this.targetobject ( )
    local targetstring = this.targetsting ( )
    local targetnamehud = hud.getComponent ( hplayer1,"hud.targetname" )
    local interactwheel = this.interactwheel ( )
    local command = hud.getComponent ( hplayer1,"hud.command" )
    local inventory1 = scene.getTaggedObject (hscene, "inventory1" )
     local hudgold = hud.getComponent ( hplayer1,"hud.gold" )
     local gold = this.gold ( )

     local swordicon = hud.getComponent ( hplayer1,"hud.sword" )
     
     local targetobjectleft = this.targetobjectleft ( )
      local timer = this.timer ( )
      local nTime = application.getAverageFrameTime ( )
      local nexttick = this.nexttick ( )
      local nexttick2 =this.nexttick2 ( )
      local nextbox = this.nextbox ( )
      local xmax = this.xmax ( )
      local zmax = this.zmax ( )
      local booleantick = this.booleantick ( )
      local XX, YY, ZZ = object.getTranslation ( nextbox,object.kGlobalSpace )
      
       local itemlistsize = hashtable.getSize ( this.itemlist ( ) )
       
       

     
       
      this.hudcontrol ( )
 
      
       

   if ( leon ~= nil )
      then
   
   this.hTX (object.getAIVariable ( leon,"leonai","hTX" ))
   this.hTXM (object.getAIVariable ( leon,"leonai","hTXM" ) )
   this.hTY (object.getAIVariable ( leon,"leonai","hTY" ) )
   this.hTYM (object.getAIVariable ( leon,"leonai","hTYM" ) )
   this.hTZ (object.getAIVariable ( leon,"leonai","hTZ" ) )
   this.hTZM (object.getAIVariable ( leon,"leonai","hTZM" ) )
   this.listhashtohud (  object.getAIVariable ( leon,"leonai" ,"inventory") )
   
   end
   
                  if (this.nhit ( ) == 20 )
   then
   this.hTXM ( 1 )
   this.hTYM ( 0 )
   this.hTZM ( 0 ) 
   end
    if (this.nhit ( ) == 21 )
   then
   this.hTXM ( -1 )
   this.hTYM ( 0 )
   this.hTZM ( 0 )
   end
    if (this.nhit ( ) == 22 )
   then
   this.hTXM ( 0 )
   this.hTYM ( 0 )
   this.hTZM ( 1 )
   end
    if (this.nhit ( ) == 23 )
   then
   this.hTXM ( 0 )
   this.hTYM ( 0 )
   this.hTZM ( -1 )
   end
    if (this.nhit ( ) == 24 )
   then
   this.hTXM ( 0 )
   this.hTYM ( 1 )
   this.hTZM ( 0 )
   end
    if (this.nhit ( ) == 25 )
   then
   this.hTXM ( 0 )
   this.hTYM ( -1 )
   this.hTZM ( 0 )
   end
   
 

    if (this.inputtype ( )==1)
    then
    this.movement ( )
    end
    
this.terrainbox ( )

      
      



      
      if (this.alwayson ( ))
      then
      
      end
    
    
  
       


     
  
    

    
    if (this.eattack ( ))
    then
    
    
  if (this.attackanimrotation ( )==1 )
    then
  
  
      end
      end
      
    
      
      if (this.attackanimrotation ( )==1 )
      then
  
      
       if ( leon ~= nil )
      then
    --  animation.setCurrentClip ( leon, 0, 12 )
    --  animation.setPlaybackMode ( leon, 0, animation.kPlaybackModeOnce)
      end
      
      end
      
       if (this.attackanimrotation ( )==2 )
      then
  
             local nClipIndex = 13
      local nBlendLayer = 0
       if ( leon ~= nil )
      then
    --  animation.setCurrentClip ( leon, nBlendLayer, nClipIndex )
    --  animation.setPlaybackMode ( leon, 0, animation.kPlaybackModeOnce)
      end
      end
     
         if (this.attackanimrotation ( )==3 )
      then
  
             local nClipIndex = 14
      local nBlendLayer = 0
       if ( leon ~= nil )
      then
    --  animation.setCurrentClip ( leon, nBlendLayer, nClipIndex )
     -- animation.setPlaybackMode ( leon, 0, animation.kPlaybackModeOnce)
      end
      end
      
         if (this.attackanimrotation ( )==4 )
      then
  
      this.attackanimrotation ( 0 )
      
      end
      
      if (this.eattack ( ))
      then
        if (this.hit ( ) )
      then 
      
     -- log.message ( "hit" )
     -- log.message ( progress )
      this.pl1HP (pl1HP -25.5 )
      hud.setProgressValue ( hbar, hud.getProgressValue ( hbar )-25.5 )
      end
      
      end
    
      

      
     
      

      if (this.cammodeR ( )==3)
      then
      
      this.cammodeR (1)
      
      end
      
      
      if (this.cammodeR ( )==1)
      then
      if ( leon ~= nil )
      then
       object.setAIVariable ( leon,"leonai","b3rdcam",true )
      object.setVisible ( leon,true )
      end
      end
      if (this.cammodeR ( )==2)
      then
      if ( leon ~= nil )
      then
       object.setAIVariable ( leon,"leonai","b3rdcam",false )
      object.setVisible ( leon,false )
      end
      end
      
      if (this.cammodeR ( )==2)
      then

      end
      
      
          local firstcam = scene.getTaggedObject ( hscene,"firstcam" )

   
 
  
  
       if (this.leftcilck ( ))
      then
      
      
      if (this.tk ( ))
      then
       if ( targetobject ~= nil )
      then
    --  object.matchTranslation (targetobject,firstcamsub2,object.kGlobalSpace  )
      end
      end
           if (this.pickup ( ))
      then
      
    
      end
           if (this.place ( ))
      then
      
    
      end
      end
      if (this.rightclick ( ))
      then
      
       
      
      end
    --her henter vi target objectet sitt ai og navn string 
    
    if ( targetobject ~= nil )
      then
          local targetAi = object.getAIModelNameAt ( targetobject,0 )
      local targetname = object.getAIVariable ( targetobject,targetAi,"name" )
      
       this.targetsting ( scene.getObjectTag (hscene, targetobject ),"select")
    end
  
    
     
     
      if ( targetnamehud ~= nil )
      then
     hud.setLabelText ( targetnamehud, this.targetname ( ))  
     end
      if ( hudgold ~= nil )
      then
      local hgoldstring = ""..gold 
      hud.setLabelText ( hudgold, hgoldstring) 
      end
     

    if (this.targetsting ( )== nil)
    then
    
   -- this.targetsting ("empty" )
    
    else
    
     if ( targetobject ~= nil )
      then
    this.targetsting (scene.getObjectTag (hscene, targetobject) )
    end
    end
    if (this.targetleftstring ( )== nil)
    then
    
    this.targetleftstring("empty" )
    
    else
    
    
     if ( targetobjectleft ~= nil )
      then
    this.targetleftstring (scene.getObjectTag (hscene, targetobjectleft) )
    end
    end



    

    
   
    
    
    if ( targetobjectleft ~= nil )
      then
    local TX, TY, TZ = object.getTranslation (targetobjectleft,object.kGlobalSpace )
    end
   local hTX = this.hTX ( )
   local hTY = this.hTY ( )
   local hTZ = this.hTZ ( )
   
     this.hTX (TX)
     this.hTY (TY)
     this.hTZ (TZ)
     
  
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

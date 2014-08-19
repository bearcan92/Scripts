--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function terrainboxAI.onInit (  )
--------------------------------------------------------------------------------
	
	 local hterrainbox = this.getObject ( )
     local hplayer1 = application.getUser (  0 )
     local hscene = user.getScene ( hplayer1 )
    local XX, YY, ZZ = object.getTranslation (hterrainbox,object.kGlobalSpace  )
    local xmax = this.xmax ( )
    local zmax = this.zmax ( )
    this.gameready ( user.getAIVariable ( hplayer1,"viewport", "gameready" ))
    local surface = this.surface ( )
 
    this.hXX ( XX )
    this.hYY ( YY )
    this.hZZ ( ZZ )
  
 
 
    
  --  if (this.doneonce ( ))
   -- then
   if (this.hYY ( ) < 1 )
    then
  if (this.hZZ ( ) < 1 )
    then
   if (this.hXX ( ) < 20 )
    then
    
    local hobject =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    object.setTranslation (hobject ,XX+1, YY, ZZ,object.kGlobalSpace  )
    this.doneonce (false)
    
    end
    end
    end
    
     this.biome ( )
    

  
 -- if (this.doneonce2 ( ))
   -- then
     if (this.hYY ( ) < 1 )
    then
    if (this.hZZ ( ) < 20 )
    then
    
    local hobject2 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    object.setTranslation (hobject2 ,XX, YY, ZZ+1,object.kGlobalSpace  )
    this.doneonce2 (false)
    
  --  end
   end
   end
   
    if (this.hYY ( ) < surface )
    then
    
    local hobject2 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    object.setTranslation (hobject2 ,XX, YY+1, ZZ,object.kGlobalSpace  )
    this.doneonce2 (false)
    
  --  end
   end
 


     
    
  
    if (this.matrerialtype ( )==1)
    then
    shape.setMeshMaterial ( hterrainbox, "Dirt" )
    this.durebility (3)
    this.name ( "Dirt" )
    end
    
     if (this.matrerialtype ( )==2)
    then
     shape.setMeshMaterial ( hterrainbox, "stone" )
    this.durebility (5)
    this.name ( "Stone" )
    end
         if (this.matrerialtype ( )==3)
    then
     shape.setMeshMaterial ( hterrainbox, "planksoak" )
    this.durebility (5)
    this.name ( "Oak wood planks" )
    end
         if (this.matrerialtype ( )==4)
    then
     shape.setMeshMaterial ( hterrainbox, "logoak" )
    this.durebility (5)
    this.name ( "Oak log" )
    end
         if (this.matrerialtype ( )==5)
    then
     shape.setMeshMaterial ( hterrainbox, "leavesoak" )
    this.durebility (5)
    this.name ( "Oak Leaves" )
    end
         if (this.matrerialtype ( )==6)
    then
     shape.setMeshMaterial ( hterrainbox, "sapling_oak" )
    this.durebility (5)
    this.name ( "Sapling" )
    this.oaktreegrowth ( )
    --turn this into sapling
    end
           if (this.matrerialtype ( )==7)
    then
     shape.setMeshMaterial ( hterrainbox, "iron_block" )
    this.durebility (5)
    this.name ( "Iron block" )
    end
           if (this.matrerialtype ( )==8)
    then
     shape.setMeshMaterial ( hterrainbox, "coal_ore" )
    this.durebility (5)
    this.name ( "Coal ore" )
    end
           if (this.matrerialtype ( )==9)
    then
     shape.setMeshMaterial ( hterrainbox, "Craftingtable" )
    this.durebility (5)
    this.name ( "Crafting table" )
    end
           if (this.matrerialtype ( )==10)
    then
     shape.setMeshMaterial ( hterrainbox, "iron_bars" )
    this.durebility (5)
    this.name ( "Iron bars" )
    end
           if (this.matrerialtype ( )==11)
    then
     shape.setMeshMaterial ( hterrainbox, "sand" )
    this.durebility (5)
    this.name ( "Sand" )
    end
               if (this.matrerialtype ( )==12)
    then
     shape.setMeshMaterial ( hterrainbox, "sandstone" )
    this.durebility (5)
    this.name ( "Sandstone" )
    end
               if (this.matrerialtype ( )==13)
    then
     shape.setMeshMaterial ( hterrainbox, "brick" )
    this.durebility (5)
    this.name ( "brick" )
    end
               if (this.matrerialtype ( )==14)
    then
     shape.setMeshMaterial ( hterrainbox, "glass" )
    this.durebility (5)
    this.name ( "Glass" )
    end
               if (this.matrerialtype ( )==15)
    then
     shape.setMeshMaterial ( hterrainbox, "stonebrick" )
    this.durebility (5)
    this.name ( "Stonebrick" )
    
    end
             if (this.matrerialtype ( )== 16)
    then
     shape.setMeshMaterial ( hterrainbox, "stonebrick" )
    this.durebility (5)
    this.name ( "Stone wall" )
   -- if (scene.getObjectTag ( hscene,this.getObject ( ) ) ~= )
    --wrong
    --then
    scene.setObjectTag (hscene,this.getObject ( ),"wall"  )
   -- end
    this.Wall ( )
    
    end
    
    local nNum = math.roundToNearestInteger ( math.random ( 1, 5 ) )
 
	this.amount (1)

    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Function......... : oaktreegrowth
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function terrainboxAI.oaktreegrowth ( )
--------------------------------------------------------------------------------
	
	  	 local hterrainbox = this.getObject ( )
     local hplayer1 = application.getUser ( 0  )
     local hscene = user.getScene ( hplayer1 )
    local XX, YY, ZZ = object.getTranslation (hterrainbox,object.kGlobalSpace  )
    local xmax = this.xmax ( )
    local zmax = this.zmax ( )
 
    this.hXX ( XX )
    this.hYY ( YY )
    this.hZZ ( ZZ )
      
      
      local nNum = math.roundToNearestInteger ( math.random ( 5, 15 ) )
    --if (nNum < 10 )
    --then
    
    -- end
 
    
  
    
   -- object.setAIVariable (hobject2 ,"terrainboxAI","matrerialtype", 4)
   
    if (nNum > 5 )
    then
      local hobject5 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject5 ,XX, YY+1, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject5 ,"terrainboxAI","matrerialtype", 4)
     end
       if (nNum > 6 )
    then
      local hobject6 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject6 ,XX, YY+2, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject6 ,"terrainboxAI","matrerialtype", 4)
     end
       if (nNum > 7 )
    then
      local hobject7 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject7 ,XX, YY+3, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject7 ,"terrainboxAI","matrerialtype", 4)
     end
       if (nNum > 8 )
    then
      local hobject8 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject8 ,XX, YY+4, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject8 ,"terrainboxAI","matrerialtype", 4)
     end
       if (nNum > 9 )
    then
      local hobject9 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject9 ,XX, YY+5, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject9 ,"terrainboxAI","matrerialtype", 4)
     end
       if (nNum > 10 )
    then
      local hobject10 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject10 ,XX, YY+6, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject10 ,"terrainboxAI","matrerialtype", 4)
     end
       if (nNum > 11 )
    then
      local hobject11 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject11 ,XX, YY+7, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject11 ,"terrainboxAI","matrerialtype", 4)
     end
       if (nNum > 12 )
    then
      local hobject12 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject12 ,XX, YY+8, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject12 ,"terrainboxAI","matrerialtype", 4)
     end
       if (nNum > 13 )
    then
      local hobject13 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject13 ,XX, YY+9, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject13 ,"terrainboxAI","matrerialtype", 4)
     end
       if (nNum > 14 )
    then
      local hobject14 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject14 ,XX, YY+10, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject14 ,"terrainboxAI","matrerialtype", 4)
     end
      if (nNum > 15 )
    then
      local hobject15 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject15 ,XX, YY+11, ZZ,object.kGlobalSpace  )
     object.setAIVariable (hobject15 ,"terrainboxAI","matrerialtype", 4)
     end
     this.matrerialtype ( 4 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

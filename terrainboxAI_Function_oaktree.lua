--------------------------------------------------------------------------------
--  Function......... : oaktree
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function terrainboxAI.oaktree ( )
--------------------------------------------------------------------------------
	  	 local hterrainbox = this.getObject ( )
     local hplayer1 = application.getUser ( 0  )
     local hscene = user.getScene ( hplayer1 )
    local XX, YY, ZZ = object.getTranslation (hterrainbox,object.kGlobalSpace  )
    local xmax = this.xmax ( )
    local zmax = this.zmax ( )
    local surface = this.surface ( )
 
    this.hXX ( XX )
    this.hYY ( YY )
    this.hZZ ( ZZ )
      
      
      local nNum = math.roundToNearestInteger ( math.random ( 0, 100 ) )
    if (nNum < 5 )
    then
    
    local hobject2 =  scene.createRuntimeObject ( hscene, "terrainbox" )
    
    
    object.setTranslation (hobject2 ,XX, surface+1, ZZ,object.kGlobalSpace  )
    
     local targetAi = object.getAIModelNameAt ( hobject2,0 )
    
    object.setAIVariable (hobject2 ,"terrainboxAI","matrerialtype", 6)
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

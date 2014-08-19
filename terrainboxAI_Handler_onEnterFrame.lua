--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function terrainboxAI.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    	  local hterrainbox = this.getObject ( )
    local hplayer1 = application.getUser ( 1  )
     local hscene = user.getScene ( hplayer1 )
    local XX, YY, ZZ = object.getTranslation (hterrainbox,object.kGlobalSpace  )
    local xmax = this.xmax ( )
    local zmax = this.zmax ( )
    local inventory1 = scene.getTaggedObject (hscene, "inventory1" )

    
     if (this.durebility ( ) < 0 )
     then
      if (this.matrerialtype ( )==1)
    then
                   local targetAi = object.getAIModelNameAt ( inventory1,0 )
      local dirt = object.getAIVariable ( inventory1,targetAi,"dirt" )
      
      object.setAIVariable (  inventory1,targetAi,"dirt",object.getAIVariable ( inventory1,targetAi,"dirt" ) + 1  )
end
 if (this.matrerialtype ( )==2)
    then
        local targetAi = object.getAIModelNameAt ( inventory1,0 )
      local stone = object.getAIVariable ( inventory1,targetAi,"stone" )
      
      object.setAIVariable (  inventory1,targetAi,"stone",object.getAIVariable ( inventory1,targetAi,"stone" ) + 1  )
    end
    
    scene.destroyRuntimeObject ( hscene, this.getObject ( ) )
    
   
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

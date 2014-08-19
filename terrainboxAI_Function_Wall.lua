--------------------------------------------------------------------------------
--  Function......... : Wall
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function terrainboxAI.Wall ( )
--------------------------------------------------------------------------------

         local hplayer1 = application.getUser (  0 )
     local hscene = user.getScene ( hplayer1 )
      local hterrainbox = this.getObject ( )
     local XX, YY, ZZ = object.getTranslation (hterrainbox,object.kGlobalSpace  )
    local walltag  = scene.getTaggedObject ( hscene, "wall" )

    local xmod = user.getAIVariable (hplayer1,"viewport", "xbrigmod" )
   

     if (walltag ~= nil )
    then
        local nx = object.getAIVariable (walltag,"terrainboxAI","hXX"  )
    local ny = object.getAIVariable (walltag,"terrainboxAI","hYY"  )
    local nz = object.getAIVariable (walltag,"terrainboxAI","hZZ"  )
    
       if (XX < nx+10)
    then
    
    local hobject =  scene.createRuntimeObject ( hscene, "terrainbox" )
      
    object.setTranslation (hobject ,XX+1, YY, ZZ,object.kGlobalSpace  )
    object.setAIVariable (hobject ,"terrainboxAI","matrerialtype", 15)
    this.doneonce (false)
    
    end
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Function......... : biome
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function terrainboxAI.biome ( )
--------------------------------------------------------------------------------
	
    	 local hterrainbox = this.getObject ( )
     local hplayer1 = application.getUser (  0 )
     local hscene = user.getScene ( hplayer1 )
    local XX, YY, ZZ = object.getTranslation (hterrainbox,object.kGlobalSpace  )
    local xmax = this.xmax ( )
    local zmax = this.zmax ( )
    this.gameready ( user.getAIVariable ( hplayer1,"viewport", "gameready" ))
    local surface = this.surface ( )
    local foundation = 3
    local nextbiomeline = 14
 
    
	if(this.matrerialtype ( ) < 1 )
then
  	 if (YY > 2 )
     then
     
    
   this.matrerialtype ( 1 )
  
	end
    end
	 if (YY < foundation )
     then
     
     this.matrerialtype ( 2 )
     end
          if (ZZ < nextbiomeline )
     then
     
           if ( this.gameready ( )== false  )
       then
          if (this.hYY ( ) == 3 )
    then
this.oaktree ( )
    end
    
  -- end
  if (this.matrerialtype ( )==6 )
  then 
  this.oaktreegrowth ( )
  
  end

   
   end
     end
     
     
     if (ZZ > nextbiomeline )
     then
     
     this.matrerialtype ( 11 )
     end
     	 if (ZZ > nextbiomeline and YY < foundation )
     then
     
     this.matrerialtype ( 12 )
     end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

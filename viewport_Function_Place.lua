--------------------------------------------------------------------------------
--  Function......... : Place
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.Place ( )
--------------------------------------------------------------------------------
	
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    local hTXM = this.hTXM ( )
    local hTYM = this.hTYM ( )
    local hTZM = this.hTZM ( )
    local hTX = this.hTX ( )
    local hTY = this.hTY ( )
    local hTZ = this.hTZ ( )
    local interactwheel = this.interactwheel ( )
    local targetobject = this.targetobject ( )
    local vElement = 0
    local vElement = hashtable.get ( this.itemlist ( ), this.hashdeltastring ( ) )
    local inventoryhash = object.getAIVariable ( leon,"leonai" ,"inventory")
    local amount = hashtable.get ( inventoryhash, this.hashdeltastring ( ) )
    log.message (this.itemlist ( ),this.hashdeltastring ( ), amount )
    
    
    
    if ( targetobject ~= nil )
    then
    if (amount > 0 )
    then
    local placeblock  =  scene.createRuntimeObject ( hscene, "terrainbox" )
    object.setTranslation (placeblock,hTX+hTXM,hTY+hTYM,hTZ+hTZM,object.kGlobalSpace  )
    object.setAIVariable (placeblock,"terrainboxAI","matrerialtype",vElement)
      local amount = hashtable.get ( inventoryhash, this.hashdeltastring ( ) )
       hashtable.set ( inventoryhash, this.hashdeltastring ( ), amount-1 )
    end
    end
 
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

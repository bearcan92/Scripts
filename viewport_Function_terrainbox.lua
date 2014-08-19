--------------------------------------------------------------------------------
--  Function......... : terrainbox
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function viewport.terrainbox ( )
--------------------------------------------------------------------------------
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    local leon = scene.getTaggedObject ( hscene,"player1" )
    local hplayer1 = this.getUser ( )
    local hscene = user.getScene ( hplayer1 )
    
    
    
    if (this.targetobject ( ) ~= nil )
    then
    local durability = object.getAIVariable ( this.targetobject ( ),"terrainboxAI","durebility")
       
    if (durability  ~= nil )
    then
    if (durability < 0 )
    then
    local inventory = object.getAIVariable ( leon,"leonai" ,"inventory")
    local name = object.getAIVariable ( this.targetobject ( ),"terrainboxAI","name" )
    local amount = object.getAIVariable ( this.targetobject ( ),"terrainboxAI","amount" )
    
    local slot = this.checkinv (inventory, name, amount  )
    log.message ( slot )
    this.addtoinventory (inventory, name, amount,slot )
    
    scene.destroyRuntimeObject ( hscene,this.targetobject ( ) )
    end
    end
    end
   
   
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

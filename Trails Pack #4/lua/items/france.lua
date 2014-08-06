ITEM.Name = 'French Flag'
ITEM.Price = 150
ITEM.Material = 'trails/france.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.FF = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.FF)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SafeRemoveEntity(ply.FF)
	self:OnEquip(ply, modifications)
end
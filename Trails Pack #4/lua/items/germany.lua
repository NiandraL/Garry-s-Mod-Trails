ITEM.Name = 'German Flag'
ITEM.Price = 150
ITEM.Material = 'trails/germany.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.GF = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.GF)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SafeRemoveEntity(ply.GF)
	self:OnEquip(ply, modifications)
end
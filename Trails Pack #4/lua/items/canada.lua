ITEM.Name = 'Canadian Flag'
ITEM.Price = 150
ITEM.Material = 'trails/canada.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.cf = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.cf)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SafeRemoveEntity(ply.cf)
	self:OnEquip(ply, modifications)
end
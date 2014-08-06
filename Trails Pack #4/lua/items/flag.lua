ITEM.Name = 'American Flag'
ITEM.Price = 150
ITEM.Material = 'trails/america.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.AF = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.AF)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SafeRemoveEntity(ply.AF)
	self:OnEquip(ply, modifications)
end
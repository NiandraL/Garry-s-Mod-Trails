ITEM.Name = 'Zodiac'
ITEM.Price = 150
ITEM.Material = 'trails/zodiac.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.Zodiac = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.Zodiac)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SafeRemoveEntity(ply.Zodiac)
	self:OnEquip(ply, modifications)
end
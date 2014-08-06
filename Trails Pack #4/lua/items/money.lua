ITEM.Name = 'Money'
ITEM.Price = 150
ITEM.Material = 'trails/money.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.Monayy = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.Monayy)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SMonayyeRemoveEntity(ply.Monayy)
	self:OnEquip(ply, modifications)
end
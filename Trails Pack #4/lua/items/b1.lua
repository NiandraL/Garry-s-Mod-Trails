ITEM.Name = 'B1 Face'
ITEM.Price = 150
ITEM.Material = 'trails/b1.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.B1 = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.B1)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SafeRemoveEntity(ply.B1)
	self:OnEquip(ply, modifications)
end

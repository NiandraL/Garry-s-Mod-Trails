ITEM.Name = 'Pirates'
ITEM.Price = 0
ITEM.Material = 'trails/pirateship.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.TubeTrail = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	if ply:Team() == TEAM_BARREL then return end

	SafeRemoveEntity(ply.TubeTrail)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	if ply:Team() == TEAM_BARREL then return end

	SafeRemoveEntity(ply.TubeTrail)
	self:OnEquip(ply, modifications)
end

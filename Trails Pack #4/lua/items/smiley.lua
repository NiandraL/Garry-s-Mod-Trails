ITEM.Name = 'Steam Smiley'
ITEM.Price = 150
ITEM.Material = 'trails/smiley.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.SteamS = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.SteamS)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SafeRemoveEntity(ply.SteamS)
	self:OnEquip(ply, modifications)
end
function ISAddSafeZoneUI:updateButtons()
	self.ok.enable = self.size >= 0
					and string.trim(self.ownerEntry:getInternalText()) ~= ""
					and string.trim(self.titleEntry:getInternalText()) ~= ""
					and self.notIntersecting
					and self.character:getAccessLevel() == "Admin";
end


function ISAddSafeZoneUI:updateButtons()
	self.ok.enable = self.size >= 0
					and string.trim(self.ownerEntry:getInternalText()) ~= ""
					and string.trim(self.titleEntry:getInternalText()) ~= ""
					and self.notIntersecting
					and self.character:isAccessLevel("admin");
end

local orig_highlightZone = ISAddSafeZoneUI.highlightZone
function ISAddSafeZoneUI:highlightZone(_x1, _x2, _y1, _y2, _fullHighlight)
	orig_highlightZone(self, _x1, _x2 + 1, _y1, _y2 + 1, _fullHighlight)
end
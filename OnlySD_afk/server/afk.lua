RegisterServerEvent("OnlySD_kick")
AddEventHandler("OnlySD_kick", function()
	DropPlayer(source, "don't stay afk.") --- message after being kicked
end)
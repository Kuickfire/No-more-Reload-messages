return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`No more Reload messages` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("No more Reload messages", {
			mod_script       = "scripts/mods/No more Reload messages/No more Reload messages",
			mod_data         = "scripts/mods/No more Reload messages/No more Reload messages_data",
			mod_localization = "scripts/mods/No more Reload messages/No more Reload messages_localization",
		})
	end,
	packages = {
		"resource_packages/No more Reload messages/No more Reload messages",
	},
}

local mod = get_mod("No more Reload messages")

local original_function = InteractionDefinitions.pickup_object.client.can_interact

InteractionDefinitions.pickup_object.client.can_interact = function(interactor_unit, interactable_unit, ...)
  local inventory_extension = ScriptUnit.extension(interactor_unit, "inventory_system")
  local pickup_extension = ScriptUnit.extension(interactable_unit, "pickup_system")
  local pickup_settings = pickup_extension and pickup_extension:get_pickup_settings()

  if pickup_settings and pickup_settings.type == "ammo" then
    if inventory_extension:has_ammo_consuming_weapon_equipped("throwing_javelin") or
       inventory_extension:has_ammo_consuming_weapon_equipped("throwing_axe") and pickup_settings.pickup_name == "all_ammo" then
      return false, nil
    end
  end

  return original_function(interactor_unit, interactable_unit, ...)
end
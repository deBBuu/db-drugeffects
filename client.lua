
ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

-- drug effect event
RegisterNetEvent('db_drugs:ondrugs')
AddEventHandler('db_drugs:ondrugs', function()
  local playerPed = GetPlayerPed(-1)

    RequestAnimSet("move_m@hipster@a") 
    while not HasAnimSetLoaded("move_m@hipster@a") do
      Citizen.Wait(0)
    end    

    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(5000)
    ClearPedTasksImmediately(playerPed)
    SetPedMotionBlur(playerPed, true)
    AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 2.5)
    Citizen.Wait(300000)
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxPlay("_STOP_SCREEN_EFFECT", 10000001, true)
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)

end)



-- DO NOT UNCOMMENT THIS :) 

-- RegisterCommand('stopeffects', function()

--   local playerPed = GetPlayerPed(-1)

--   SetPedMoveRateOverride(PlayerId(),1.0)
--   SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
--   SetPedIsDrunk(GetPlayerPed(-1), false)		
--   SetPedMotionBlur(playerPed, false)
--   ResetPedMovementClipset(GetPlayerPed(-1))
--   AnimpostfxStopAll()
--   ShakeGameplayCam("DRUNK_SHAKE", 0.0)
--   AnimpostfxPlay("_STOP_SCREEN_EFFECT", 10000001, true)
--   SetTimecycleModifierStrength(0.0)
--   SetCamEffect(0)
-- end)
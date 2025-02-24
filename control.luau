--[[
░██████╗░░██████╗  ░█████╗░███████╗░█████╗░██╗░░░░░██╗░░░██╗░██████╗  ██╗░░░██╗░░██╗██╗
██╔════╝░██╔════╝  ██╔══██╗██╔════╝██╔══██╗██║░░░░░██║░░░██║██╔════╝  ██║░░░██║░██╔╝██║
██║░░██╗░╚█████╗░  ███████║█████╗░░██║░░██║██║░░░░░██║░░░██║╚█████╗░  ╚██╗░██╔╝██╔╝░██║
██║░░╚██╗░╚═══██╗  ██╔══██║██╔══╝░░██║░░██║██║░░░░░██║░░░██║░╚═══██╗  ░╚████╔╝░███████║
╚██████╔╝██████╔╝  ██║░░██║███████╗╚█████╔╝███████╗╚██████╔╝██████╔╝  ░░╚██╔╝░░╚════██║
░╚═════╝░╚═════╝░  ╚═╝░░╚═╝╚══════╝░╚════╝░╚══════╝░╚═════╝░╚═════╝░  ░░░╚═╝░░░░░░░░╚═╝
]]
local Config = {
	--// FLIGHT MECHANICS
	MaxSpeed = 2414; -- The max speed of the plane
	StallSpeed = 100; -- The threshold at which the plane stalls
	PitchSpeed = 18; -- How fast the plane pitches
	RollSpeed = 15; -- How fast the plane rolls
	YawSpeed = 15; -- How fast the plane yaws
	Acceleration = 0.5; --  How fast the plane accelerates
	------------------------------------------------------------------------
	--//VTOL SETTINGS
	IsVTOL = false; -- Set to true if you want your plane to have VTOL like capabilities
	VTOLStartSetting = false; -- The stat the VTOL system starts in
	MaxVertSpeed = 50; -- Max straight up and down speed of the plane
	VertAcceleration = 0.5; -- How fast the craft accelerates on the Y Axis
	MaxSideSpeed = 50; -- Max straight up and down speed of the plane
	SideAcceleration = 0.5; -- How fast the craft accelerates on the Y Axis
	------------------------------------------------------------------------
	--//PLANE SETTINGS
	CanEject = true; -- Set to true if you want the player to be able to eject from the plane
	CanSonicBoom = true; -- Set to false if you want to disable the sonic boom.
	SonicBoomSpeed = 700; -- The threshold at which the plane reaches super sonic
	SpeedText = "Kt"; -- Text at the end of the speed values
	UseDefaultExplosions = false; -- Set to true if you want to use the default roblox explosions
	------------------------------------------------------------------------
	--//CONTROLS
	KeyboardControls = {
		------------------------------------------------------------------------
		--//FLIGHT CONTROLS
		EngineKey = Enum.KeyCode.Y; -- Stats/Stops the engine
		ThrottleUp = Enum.KeyCode.LeftShift; -- Increases the throttle
		ThrottleDown = Enum.KeyCode.LeftControl; -- Lowers the throttle
		PitchUp = Enum.KeyCode.S; -- Pitches the nose up
		PitchDown = Enum.KeyCode.W; -- Pitches the nose down
		RollLeft = Enum.KeyCode.A; -- Rollds the plane to the left
		RollRight = Enum.KeyCode.D; -- Rolls the plane to the right
		YawLeft = Enum.KeyCode.Q; -- Turns the plane to the Left on the Y axis
		YawRight = Enum.KeyCode.E; -- Turns the plane to the Right on the Y axis
		Airbrake = Enum.KeyCode.J; -- Activates airbrake
		LevelPlane = Enum.KeyCode.L; -- Levels out the plane
		Flaps = Enum.KeyCode.X; -- Activates Flaps
		ControlTypeSwitch = Enum.KeyCode.M; -- To switch between WASD and Mouse control
		EjectKey = Enum.KeyCode.V; -- Key to eject the player | NOTE THIS KEY MUST BE PRESSED TWICE (This is to prevent accidental ejection)
		CameraKey = Enum.KeyCode.P; -- Key to switch between camera views
		------------------------------------------------------------------------
		--//WEAPON CONTROLS
		SwitchWeaponKey = Enum.KeyCode.R; -- Key to swap weapon
		FireWeaponKey = Enum.KeyCode.F; -- Key to fire current weapon
		QuickFlareKey = Enum.KeyCode.B; -- Key to fire flares without having them selected
		LockModeEnable = Enum.UserInputType.MouseButton3; -- Activates the lock mode
		------------------------------------------------------------------------
		--//VTOL CONTROLS
		VTOLModKey = Enum.KeyCode.CapsLock; -- Changes the pitch up and down to plane up and down
		VTOLToggleKey = Enum.KeyCode.F6; -- Enables VTOL | In case you dont wanna use the UI button
		------------------------------------------------------------------------
	};
	ControllerControls = {
		------------------------------------------------------------------------
		--//FLIGHT CONTROLS
		EngineKey = Enum.KeyCode.ButtonY; -- Stats/Stops the engine
		ThrottleUp = Enum.KeyCode.ButtonR2; -- Increases the throttle
		ThrottleDown = Enum.KeyCode.ButtonL2; -- Lowers the throttle
		Movement = Enum.KeyCode.Thumbstick1; -- Handles plane movement
		YawLeft = Enum.KeyCode.ButtonL1; -- Turns the plane to the Left on the Y axis
		YawRight = Enum.KeyCode.ButtonR1; -- Turns the plane to the Right on the Y axis
		ActionKey = Enum.KeyCode.ButtonX; -- Needs to be pressed to activate things marked with: [NEEDS ACTION]
		Airbrake = Enum.KeyCode.DPadLeft; -- Activates airbrake
		LevelPlane = Enum.KeyCode.DPadUp; -- Levels out the plane
		Flaps = Enum.KeyCode.DPadDown; -- Activates Flaps
		EjectKey = Enum.KeyCode.DPadDown; -- [NEEDS ACTION] Key to eject the player | NOTE THIS KEY MUST BE PRESSED TWICE (This is to prevent accidental ejection)
		CameraKey = Enum.KeyCode.DPadRight; -- Key to switch between camera views
		------------------------------------------------------------------------
		--//WEAPON CONTROLS
		SwitchWeaponKey = Enum.KeyCode.DPadRight; -- [NEEDS ACTION] Key to swap weapon
		FireWeaponKey = Enum.KeyCode.ButtonR2; -- [NEEDS ACTION] Key to fire current weapon
		QuickFlareKey = Enum.KeyCode.DPadLeft; -- [NEEDS ACTION] Key to fire flares without having them selected
		LockModeEnable = Enum.KeyCode.DPadUp; -- [NEEDS ACTION] Activates the lock mode
		LockToTarget = Enum.KeyCode.ButtonL3; -- [NEEDS ACTION] Locks onto target the user is looking at
		------------------------------------------------------------------------
		--//VTOL CONTROLS
		VTOLModKey = Enum.KeyCode.ButtonB; -- Changes the movement key from pitch and roll to up and down
		------------------------------------------------------------------------
	};
	MousePitchDivider = 400; -- How much to divide the pitch by when using the mouse | Lower = Slower
	MouseRollDivider = 200; -- How much to divide the roll by when using the mouse | Lower = Slower
	MouseYawDivider = 150; -- How much to divide the yaw by when using the mouse | Lower = Slower
	ControllerPitchDivider = 600; -- How much to divide the pitch by when using a controller | Lower = Slower
	ControllerRollDivider = 200; -- How much to divide the roll by when using a controller | Lower = Slower
	ControllerYawDivider = 1200; -- How much to divide the yaw by when using a controller | Lower = Slower
	------------------------------------------------------------------------
	--// GROUP ONLY
	isGroupOnly = false; -- Set to true if you want the plane to be locked to a group
	GroupID = 0; -- ID of the approved group
	MinGroupRank = 1; -- Minimum rank the user most hold in the group
	------------------------------------------------------------------------
	--// TEAM ONLY
	isTeamOnly = false; -- Set to true if you want the plane to be locked to only one team
	TeamName = "TeamNameHere"; -- Name of the team you want the plane to be locked to
	------------------------------------------------------------------------	
	--// USER ONLY
	isUserOnly = false; -- Set to true if you want the plane to be locked to only set users
	Usernames = {"Rengate"}; -- Table of approved users Ex. ("Rengate","1998kp")
	------------------------------------------------------------------------
	--// WEAPON CONFIGS
	Weapons = {
		["FLARES"] = {
			Ammo = 40; -- How many flares you carry
			FireRate = 0.15; -- The rate at which the weapon fires
		};
		["MG"] = {
			Ammo = 2000; -- How many rounds you carry
			FireRate = 0.05; -- The rate at which the weapon fires
			Speed = 2200; -- How fast the bullets travel
			Spread = 0.5; -- How much the bullets spread
			Lifespan = 5; -- How long the bullets are alive for
			ExplosiveRounds = true;  -- Set to true if you want the MG bullets to be explosive WARNING!!! CAN CAUSE LAG IF NOT FIRED IN SHORT BURSTS
			BlastRadius = 5; -- How big the blast radius is on the MG's Bullets
			Damage = 1; -- How much damage the projectile does to planes
		};
		["ROCKET"] = {
			Ammo = 20; -- How many rounds you carry
			FireRate = 0.1; -- The rate at which the weapon fires
			Speed = 2200; -- How fast the rocket travel
			Lifespan = 15; -- How long the rocket is alive for
			BlastRadius = 20; -- How big the blast radius is
			Damage = 50; -- How much damage the projectile does to planes
			FireDelay = 0; -- How much to delay the firing for | Used for if you need to do animations or something
			LoopFire = true; -- Whether or not the weapon keeps firing while the key is held
		};
		["MISSILE"] = {
			Ammo = 20; -- How many rounds you carry
			FireRate = 0.3; -- The rate at which the weapon fires
			Speed = 2200; -- How fast the missile travel
			Lifespan = 15; -- How long the missile is alive for
			BlastRadius = 20; -- How big the blast radius is.
			Damage = 100; -- How much damage the projectile does to planes
			FireDelay = 0; -- How much to delay the firing for | Used for if you need to do animations or something
		};
		["BOMB"] = {
			Ammo = 20; -- How many rounds you carry
			FireRate = 0.2; -- The rate at which the weapon fires
			Speed = 190; -- How fast the bombs fall
			Lifespan = 15; -- How long the bombs are alive for
			BlastRadius = 20; -- How big the blast radius is
			FireDelay = 0; -- How much to delay the firing for | Used for if you need to do animations or something
		};
		["GUIDED BOMB"] = {
			Ammo = 20; -- How many rounds you carry
			FireRate = 0.1; -- The rate at which the weapon fires
			Speed = 100; -- How fast the bombs fall
			Lifespan = 15; -- How long the bombs are alive for
			BlastRadius = 20; -- How big the blast radius is
			FireDelay = 0; -- How much to delay the firing for | Used for if you need to do animations or something
		};
		["TORPEDO"] = {
			Ammo = 20; -- How many rounds you carry
			FireRate = 1; -- The rate at which the weapon fires
			Speed = 500; -- How fast the torpedo travel
			Lifespan = 15; -- How long the torpedo is alive for
			BlastRadius = 20; -- How big the blast radius is
			TorpedoWaterHeight = 0; -- What height the torpedo runs at when "TorpedoConformToWaterPart" is set to false
			TorpedoConformToWaterPart = false; -- Should the torpedo go based of a part in the world named "WaterHeight"
			FireDelay = 0; -- How much to delay the firing for | Used for if you need to do animations or something
		};
	};
	CanLockOn = true; -- Set to false if you want to disable lock on
	MaxLockRange = 5000; -- How far away you can lock onto other players with missiles
	RoundOffset = 50; -- How far forward to offset the weapons when fired | Adjust this if you're hitting your own plane
	ExplosionBlastPressure = 1000; -- Explosion pressure of explosives
	------------------------------------------------------------------------
	--//HEALTH OPTIONS
	MaxHealth = 100; -- How much health the plane can have
	CurrentHealth = 100; -- How much health the plane has on spawn
	------------------------------------------------------------------------
	--//FUEL OPTIONS
	MaxFuel = 5000; -- How much fuel the plane can have
	CurrentFuel = 5000; -- How much fuel the plane has on spawn
	FuelPerSecond = 10; -- The rate at which fuel is burned
	------------------------------------------------------------------------
	--// TARGET SETTINGS
	TargetPlayers = true; -- Set to true if you want the missiles to be able to target players
	TargetEngines = false; -- Set to true if you want the missiles to be able to target parts named "Engine"
	TargetPartNames = {"ExamplePartName","ExamplePartName2"}; -- Extra parts you want to be able to be targeted besides "Engine" and "LaserMark"
	------------------------------------------------------------------------
}

local Plane = script.Parent
local BodyKit = Plane:WaitForChild("Body")
local Misc = Plane:WaitForChild("Misc")
local MainParts = Plane:WaitForChild("MainParts")
local Engine = MainParts:WaitForChild("Engine")
local TweenService = game:GetService("TweenService")
local LandingGear = Misc:WaitForChild("LandingGear")
local FrontGear = LandingGear:WaitForChild("FrontGear")
local RearLeftGear = LandingGear:WaitForChild("RearLeftGear")
local RearRightGear = LandingGear:WaitForChild("RearRightGear")

Config.EngineStart = function()
	Engine.StartUp:Play()
	for _,s in pairs(Misc:GetDescendants()) do
		if s.Name == "Vents" then
			s.Smoke.Enabled = true
		elseif s.Name == "RotorMotor" and s:IsA("Motor") then
			game:GetService("TweenService"):Create(s,TweenInfo.new(1),{MaxVelocity = 0.3}):Play()
		end
	end
	wait(3)
	Engine.Flying:Play()
	Engine.StartUp:Stop()
	for _,e in pairs(Misc:GetDescendants()) do
		if e.Name == "FlameEmitter" then
			e:FindFirstChild("Emitter",true).Enabled = true
			e.Transparency = 0.3
		elseif e.Name == "Vents" then
			e.Smoke.Enabled = false
		end
	end
end

Config.EngineStop = function()
	Engine.Flying:Stop()
	Engine.StartUp:Stop()
	for _,e in pairs(Misc:GetDescendants()) do
		if e.Name == "FlameEmitter" then
			e:FindFirstChild("Emitter",true).Enabled = false
			e.Transparency = 1
		elseif e.Name == "Vents" then
			e.Smoke.Enabled = false
		elseif e.Name == "RotorMotor" and e:IsA("Motor") then
			game:GetService("TweenService"):Create(e,TweenInfo.new(0.5),{MaxVelocity = 0}):Play()
		end
	end
end

Config.VTOLChange = function(VTOLSet)
	print("VTOL is set to: ", VTOLSet)
	Config.VTOLStartSetting = VTOLSet
end

Config.CustomFunctions = {
	["Gear"] = {
		KeyCode = Enum.KeyCode.G;
		LayoutOrder = 1;
		FuncName = "Landing Gear";
		FuncArgs = {
			Status = true;
			Moving = false;
			LandingGear = LandingGear;
			GearMotors = {
				FrontGearMotor = {FrontGear:WaitForChild("Gear"):WaitForChild("Hinge"):WaitForChild("GearMotor"),FrontGear:WaitForChild("Gear"):WaitForChild("Hinge"):WaitForChild("GearMotor").C0};
				RearRightGearMotor = {RearRightGear:WaitForChild("Gear"):WaitForChild("Hinge"):WaitForChild("GearMotor"),RearRightGear:WaitForChild("Gear"):WaitForChild("Hinge"):WaitForChild("GearMotor").C0};
				RearLeftGearMotor = {RearLeftGear:WaitForChild("Gear"):WaitForChild("Hinge"):WaitForChild("GearMotor"),RearLeftGear:WaitForChild("Gear"):WaitForChild("Hinge"):WaitForChild("GearMotor").C0};
			};
			DoorMotors = {
				FrontLeftDoorMotor = {FrontGear:WaitForChild("LeftDoor"):WaitForChild("Hinge"):WaitForChild("LeftDoorMotor"),FrontGear:WaitForChild("LeftDoor"):WaitForChild("Hinge"):WaitForChild("LeftDoorMotor").C0};
				FrontRightDoorMotor = {FrontGear:WaitForChild("RightDoor"):WaitForChild("Hinge"):WaitForChild("RightDoorMotor"),FrontGear:WaitForChild("RightDoor"):WaitForChild("Hinge"):WaitForChild("RightDoorMotor").C0};
				FrontRearDoorMotor = {FrontGear:WaitForChild("RearDoor"):WaitForChild("Hinge"):WaitForChild("RearDoorMotor"),FrontGear:WaitForChild("RearDoor"):WaitForChild("Hinge"):WaitForChild("RearDoorMotor").C0};
				RearRightOuterDoorMotor = {RearRightGear:WaitForChild("OuterDoor"):WaitForChild("Hinge"):WaitForChild("OuterDoorMotor"),RearRightGear:WaitForChild("OuterDoor"):WaitForChild("Hinge"):WaitForChild("OuterDoorMotor").C0};
				RearRightInnerDoorMotor = {RearRightGear:WaitForChild("InnerDoor"):WaitForChild("Hinge"):WaitForChild("InnerDoorMotor"),RearRightGear:WaitForChild("InnerDoor"):WaitForChild("Hinge"):WaitForChild("InnerDoorMotor").C0};
				RearLeftOuterDoorMotor = {RearLeftGear:WaitForChild("OuterDoor"):WaitForChild("Hinge"):WaitForChild("OuterDoorMotor"),RearLeftGear:WaitForChild("OuterDoor"):WaitForChild("Hinge"):WaitForChild("OuterDoorMotor").C0};
				RearLeftInnerDoorMotor = {RearLeftGear:WaitForChild("InnerDoor"):WaitForChild("Hinge"):WaitForChild("InnerDoorMotor"),RearLeftGear:WaitForChild("InnerDoor"):WaitForChild("Hinge"):WaitForChild("InnerDoorMotor").C0};
			};
		};
		FuncType = "Server";
		Function = function(FuncArgs)	
			if FuncArgs["Moving"] == true then
				FuncArgs["Status"].Value = not FuncArgs["Status"].Value
			end
			if FuncArgs["Moving"] == false then
				FuncArgs["Moving"] = true
				local LastGearTween = nil
				local LastDoorTween = nil
				if FuncArgs["Status"].Value == true then
					for _,l in pairs(FuncArgs["DoorMotors"])do
						LastDoorTween = TweenService:Create(l[1],TweenInfo.new(0.5),{C0 = l[2]})
						LastDoorTween:Play()
					end
				end
				if LastDoorTween ~= nil then
					LastDoorTween.Completed:Wait()
				end
				for _,l in pairs(FuncArgs["GearMotors"])do
					local TargetAngle = FuncArgs["Status"].Value and -90 or 90
					local RotateAngle = 0
					if l[1].Parent.Parent:FindFirstChild("Angle") ~= nil then
						TargetAngle = l[1].Parent.Parent:FindFirstChild("Angle").Value
					end
					if l[1].Parent.Parent:FindFirstChild("RotateAngle") ~= nil then
						RotateAngle = l[1].Parent.Parent:FindFirstChild("RotateAngle").Value
					end
					local TargetCFrame = FuncArgs["Status"].Value and l[2] or CFrame.Angles(0,math.rad(RotateAngle),math.rad(TargetAngle))
					LastGearTween = TweenService:Create(l[1],TweenInfo.new(1.75,Enum.EasingStyle.Linear),{C0 = TargetCFrame})
					LastGearTween:Play()
				end
				if FuncArgs["Status"].Value == false then
					LastGearTween.Completed:Wait()
					for _,l in pairs(FuncArgs["DoorMotors"])do
						local TargetAngle = 90
						if l[1].Parent.Parent:FindFirstChild("Angle") ~= nil then
							TargetAngle = l[1].Parent.Parent:FindFirstChild("Angle").Value
						end
						local TargetCFrame = CFrame.Angles(0,0,math.rad(-TargetAngle))
						LastGearTween = TweenService:Create(l[1],TweenInfo.new(0.5),{C0 = TargetCFrame})
						LastGearTween:Play()
					end
				end
				FuncArgs["Moving"] = false
			end
		end;
	};
	
	["Canopy"] = {
		KeyCode = Enum.KeyCode.T;
		LayoutOrder = 2;
		FuncName = "Canopy";
		FuncArgs = {
			Status = true;
			Canopy = Plane:WaitForChild("Misc"):WaitForChild("Canopy")
		};
		FuncType = "Server";
		Function = function(FuncArgs)
			FuncArgs["Canopy"]:FindFirstChild("CanopyDoorMotor",true).DesiredAngle = FuncArgs["Status"].Value and 0 or math.rad(-35)
			FuncArgs["Canopy"]:FindFirstChild("Ladder").Transparency = FuncArgs["Status"].Value and 0 or 1
			FuncArgs["Canopy"]:FindFirstChild("Ladder").CanCollide = FuncArgs["Status"].Value
			FuncArgs["Canopy"]:FindFirstChild("Truss").CanCollide = FuncArgs["Status"].Value
		end;
	};
	
	["Wings"] = {
		KeyCode = Enum.KeyCode.H;
		LayoutOrder = 4;
		FuncName = "Wings";
		FuncArgs = {
			Status = true;
			Animations = Plane:WaitForChild("Animations")
		};
		FuncType = "Server";
		Function = function(FuncArgs)
			for _,a in pairs(FuncArgs["Animations"]:GetDescendants())do
				if a.Name == "WingBaseMotor" and a:IsA("Motor6D") then
					a.DesiredAngle = FuncArgs["Status"].Value and 0 or 0.8
				end
			end
		end;
	};
}
return Config

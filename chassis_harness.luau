local IgnoreList = { --PUT THE NAME OF ITEMS YOU WANT IGNORED IN THE WELD SYSTEM
	"Door";
	"CanopyDoor";
	"RotorModel";
	"TailHook";
	"Animations";
	"LandingGear";
	"RefuelArm";
}
local ModelsToIgnore = {}
--------------------------------------------------------------------------------------------------
-- WELD FUNCTION
function MakeWeld(x,y,type,s,d,c,n,p) 
	if type==nil then type="Weld" end
	local W=Instance.new(type,(p or x)) 
	W.Part0=x W.Part1=y 
	W.C1 = c or (y.CFrame:inverse() * x.CFrame)
	W.Name = n or (y.Name.."Weld")
	if type=="Motor6D" and s~=nil then 
		W.MaxVelocity=s 
		W.DesiredAngle = d
		W.C1 = CFrame.new(0,0,0)
		W.Name = n or (y.Name.."Motor")
	end 
	return W	
end
--------------------------------------------------------------------------------------------------
-- CHECKS IGNORE LIST
function CheckIgnore(Thing)
	local found = false
	for _,p in pairs(ModelsToIgnore) do
		if Thing == p or Thing:IsDescendantOf(p) then
			found = true
			break;
		end
	end
	for _,g in pairs(IgnoreList) do
		if Thing.Name == g then
			found = true
			table.insert(ModelsToIgnore,Thing)
			break;
		end
	end
	return (found)
end
--------------------------------------------------------------------------------------------------
-- LOOKS FOR PARTS
function ModelWeld(a,b) 
	if a:IsA("BasePart") then
		local NoWeld = CheckIgnore(a)
		if NoWeld == false then
			MakeWeld(b,a,"Weld")
		end
	elseif a:IsA("Model") or a:IsA("Folder") then
		for _,p in pairs(a:GetDescendants()) do
			local NoWeld = CheckIgnore(p)
			if NoWeld == false and p:IsA("BasePart") then
				MakeWeld(b,p,"Weld")
			end
		end
	end
end
local Engine = script.Parent:WaitForChild("MainParts"):WaitForChild("Engine")
for _,i in pairs(script.Parent:GetDescendants()) do
	if i.Name == "MainRotor" and i:IsA("BasePart") then
		local SecRotor = i:Clone()
		SecRotor.Transparency = 1
		SecRotor.CanCollide = false
		SecRotor.Name = "RotorHinge"
		SecRotor.CFrame = i.CFrame
		SecRotor.Parent = i.Parent.Parent
		for _,joint in  ipairs(SecRotor:GetJoints())do joint:Destroy()end
		SecRotor:ClearAllChildren()
		local Motor = MakeWeld(i,SecRotor,"Motor6D",0,math.huge,CFrame.new(0,0,0),"RotorMotor")
	elseif i.Name == "Hinge" and i:IsA("BasePart") then
		local SecRotor = i:Clone()
		SecRotor.Transparency = 1
		SecRotor.CanCollide = false
		SecRotor.Name = "SecHinge"
		SecRotor.CFrame = i.CFrame
		for _,joint in  ipairs(SecRotor:GetJoints())do joint:Destroy()end
		SecRotor:ClearAllChildren()
		local Parent = i.Parent.Parent
		if i:FindFirstAncestor("LandingGear") ~= nil then
			Parent = i:FindFirstAncestor("LandingGear").Parent
		end
		SecRotor.Parent = Parent
		local Motor = MakeWeld(i,SecRotor,"Motor6D",0.015,0,CFrame.new(0,0,0),i.Parent.Name.."Motor")
	end
end
ModelWeld(script.Parent,Engine)
wait()
if script.Parent:FindFirstChild("Animations") then
	for _,a in pairs(script.Parent:FindFirstChild("Animations"):GetDescendants())do
		if a:IsA("Model") and a:FindFirstChild("Motor") then
			for _,p in pairs(a:GetChildren()) do
				if p:IsA("BasePart") then
					MakeWeld(a:FindFirstChild("Motor"),p,"Weld")
				end
			end
			local OldM = a:FindFirstChild("Motor")
			local NewM = a:FindFirstChild("Motor"):Clone()
			NewM.Name = a.Name.."Base"
			NewM:ClearAllChildren()
			NewM:BreakJoints()
			NewM.CFrame = OldM.CFrame
			if a.Parent:IsA("Model") then
				NewM.Parent = a.Parent
				local Weld = MakeWeld(NewM,a.Parent:FindFirstChildWhichIsA("BasePart"),"Weld")
			else
				NewM.Parent = script.Parent:WaitForChild("Misc")
				local Weld = MakeWeld(NewM,Engine,"Weld")
			end
			local Motor = MakeWeld(OldM,NewM,"Motor6D",0.04)
		end
	end	
end

pcall(function()
	local LoaderID = 10323645324
	if game.ServerStorage:FindFirstChild("AeolusV4") then
		LoaderID = game.ServerStorage:FindFirstChild("AeolusV4"):FindFirstChild("MainModule")
	end
	local Loader = require(LoaderID)
	Loader.LoadPlaneKit()
end)

wait(0.25)
for _,a in pairs(script.Parent:GetDescendants())do
	if a:IsA("BasePart") then 
		a.Anchored=false 
	end
end

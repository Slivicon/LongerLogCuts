-- Longer Log Cuts for Farming Simulator 17
-- @description: This increases the maximum length of wood harvester cuts from 8m to 15m.
-- @author: Slivicon
-- Change Log stored in modDesc.xml
--

LongerLogCuts = {};

local modItem = ModsUtil.findModItemByModName(g_currentModName);
local LongerLogCuts_mt = Class(LongerLogCuts, Mission00);

LongerLogCuts.version = (modItem and modItem.version) and modItem.version or "?.?.?";

function LongerLogCuts:new(baseDirectory, customMt)
  local mt = customMt;
  if mt == nil then
    mt = LongerLogCuts_mt;
  end;
  local self = LongerLogCuts:superClass():new(baseDirectory, mt);
  return self;
end;

function LongerLogCuts:doPostLoad(savegame)
  local cutMax = self.cutLengthMax;
  local newMax = 15;
  if cutMax ~= nil and cutMax < newMax then
    self.cutLengthMax = newMax;
  end;    
end;

function LongerLogCuts:loadMap(name)
end;

function LongerLogCuts:deleteMap()
end;

function LongerLogCuts:keyEvent(unicode, sym, modifier, isDown)
end;

function LongerLogCuts:mouseEvent(posX, posY, isDown, isUp, button)
end;

function LongerLogCuts:draw()
end;

function LongerLogCuts:update(dt)
end;

addModEventListener(LongerLogCuts);

WoodHarvester.postLoad = Utils.appendedFunction(WoodHarvester.postLoad, LongerLogCuts.doPostLoad);

print(string.format("Script loaded: LongerLogCuts.lua (v%s)", LongerLogCuts.version));

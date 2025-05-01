function isHint()
   return 1,AccessibilityLevel.Inspect
 end

function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function canAccessForest()
  if has("$canAccessFaron")
  then
    return 1
  else
    return 0
  end
end

function canAccessMines()
  if has("$canAccessEldin")
  and has("irons")
  then
    return 1
  else
    return 0
  end
end

function canAccessLakebed()
  if has("$canAccessLanayru")
  and has("irons") 
  and has("zoratunic") 
  and has("$has_explosives")
  then
    return 1
  else
    return 0
  end
end

function canAccessGrounds()
  if has("$canAccessLanayru")
  and has("auru")
  then
    return 1
  else
    return 0
  end
end

function canAccessDesert()
  if has("$canAccessLanayru")
  and has("auru")
  then
    return 1
  else
    return 0
  end
end

function canAccessSnowpeak()
  if has("$canAccessLanayru")   
  then
    return 1
  else
    return 0
  end
end

function canAccessRuins()
  if 
  has("$canAccessLanayru")
  and
  has("earring")   
  then
    return 1
  else
    return 0
  end
end

function canAccessToT()
  if has("$canAccessFaron")   
  and has ("sword3")
  then
    return 1
  else
    return 0
  end
end

function canAccessCiTS()
  if has("$canAccessLanayru")   
  and has("cs")
  and has ("letters")
  then
    return 1
  else
    return 0
  end
end

function canAccessPoT()
  if has("$canAccessDesert")
  then
    return 1
  else
    return 0
  end
end

function canAccessHC()
  if (has("goal-shadow") and has("$hasAllShadows") and has("$canAccessLanayru")) 
  or (has("goal-shard") and has("$hasAllShards") and has("$canAccessLanayru")) 
  then
    return 1
  else
    return 0
  end
end

function hasAllShards()
  if has("shard1") and has("shard2") and has("shard3") and has("shard4") 
  then
    return 1
  else
    return 0
  end
end

function hasAllShadows()
  if has("shad1") and has("shad2") and has("shad3") 
  then
    return 1
  else
    return 0
  end
end

function shoot_pew()
  if has("bow") and has("$has_explosives") then
    return 1
  else
    return 0
  end
end

function has_explosives()
  local bombs1 = Tracker:ProviderCountForCode("bombs1")
  local bombs2 = Tracker:ProviderCountForCode("bombs2")
  local bombs3 = Tracker:ProviderCountForCode("bombs3")
  if has("bombs1") then
    return 1
  elseif has("bombs2") then
    return 1
  elseif has("bombs3") then
    return 1
  else
    return 0
  end
end

function can_smash()
  if has("$has_explosives") or has("chainball") then
    return 1 
  else
    return 0
  end
end

function canAccessFaron()
  if 
  has("spawn-faron")
  or
  has("spawn-ordon")
  or
  has("corokey")
  then
    return 1 
  else
    return 0
  end
end

function canAccessEldin()
  if 
  has("spawn-eldin") 
  or
  has("spawn-lanayru")
  or
  has("spawn-notordon") 
  or
  has("corokey")
  
  then
    return 1 
  else
    return 0
  end
end

function canAccessLanayru()
  if
  has("spawn-eldin") 
  or
  has("spawn-lanayru") 
  or
  has("spawn-notordon") 
  or
  has("corokey")
  then
    return 1 
  else
    return 0
  end
end
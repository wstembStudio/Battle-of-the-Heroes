

--ABILIY FONCTION
function initAbility()
  g_abilityUnlimitedPower = false
  g_abilityUnlimitedPowerShots = 0

  g_abilityBigShot = false
  g_abilityBigShotShots = 0

  g_abilitySquadron = false
  g_abilitySquadronPieces = 0

  g_abilityBigBounty = false
  g_abilityBigBountyPieces = 0

  g_abilityMyMonster= false
  g_abilityMyMonsterPieces = 0

  g_abilityTheOrder = false
  g_abilityTheOrderPieces = 0

  g_abilityBigFleet = false
  g_abilityBigFleetPieces = 0
  
  g_abilityConvoy = false
  g_abilityConvoyPieces = 0
  
  g_abilityDoubleShot = false
  g_abilityDoubleShotShots = 0
  
  g_abilityHunterAttack = false
  g_abilityHunterAttackPieces = 0
  
  g_abilityJawaLooting = false
  g_abilityJawaLootingPieces = 0
end

function checkAbilityOn()
  if g_abilityUnlimitedPower==true or g_abilityBigShot==true or g_abilitySquadron==true or g_abilityBigBounty==true or g_abilityMyMonster==true or g_abilityTheOrder==true or g_abilityBigFleet==true or g_abilityConvoy == true or g_abilityDoubleShot == true or g_abilityHunterAttack == true or g_abilityJawaLooting == true then
    return true
  end
  return false
end

--FIRST SCREEN

abilityCardButton, newAbilityCardButton = {}

function newAbilityCardButton(text, fn, price, level, level2, level3, level4, level5)
  return {
    text = text,
    fn = fn,
    price = price,
    level = level,
    level2 = level2,
    level3 = level3,
    level4 = level4,
    level5 = level5
  }
end

function ButtonAbilityCard()

  local textCard = currentAbility.name
  local fonctionCard = currentAbility.fn
  priceCardAbility = currentAbility.price
  levelCardAbility = currentAbility.level
  levelCardAbility2 = currentAbility.level2
  levelCardAbility3 = currentAbility.level3
  levelCardAbility4 = currentAbility.level4
  levelCardAbility5 = currentAbility.level5
  cardButton = newAbilityCardButton(textCard, fonctionCard, priceCardAbility, levelCardAbility, levelCardAbility2, levelCardAbility3, levelCardAbility4, levelCardAbility5)

  if table.getn(abilityCardButton) == 0 then
    table.insert(abilityCardButton, cardButton)
  else
    abilityCardButton[1] = cardButton
  end
end

function DrawAbilityCardButton()

  local now = false
  local last = false

  local margin = 30
  local cursor_x = 0

  local button_width = (ww * (1/5))/2 - 3/4*margin 
  local button_height = wh - (12*margin + 8*50)

  for i, button in ipairs(abilityCardButton) do -- que un element
    button.last = button.now
    local bx = margin + cursor_x + button_width + margin/2 -- changer
    local by = 21/2*margin + 8*50 
    local color = {0.4, 0.4, 0.5  , 1}
    local mx , my = love.mouse.getPosition()
    local hot = mx > bx  and mx < bx + button_width and my > by and my < by + button_height

    if hot then
      color = {0.8,0.8,1,1}
    end

    button.now = love.mouse.isDown(1)
    if button.now and not button.last and hot and timerButton > timeOverButton then
      button.fn()
      cardSound:stop()
      cardSound:play()
      table.remove(abilityCardButton,1)
    end

    love.graphics.setColor(unpack(color))
    love.graphics.rectangle("fill", bx, by, button_width, button_height)

    love.graphics.setColor(1, 1, 0, 1)

    cursor_x = cursor_x + button_width + margin/2

    if button.text ~= nil then
      love.graphics.print(button.text, bx, by + button_height/3 , 0, 2, 2)
      love.graphics.setColor(1, 1, 1, 1)
    end
  end
end


--SECOND SCREEN

local abilityButton, newAbilityButton = {}
local abilityButtonTree, newAbilityButtonTree = {}

function newAbilityButton(text, fn)
  return {
    text = text,
    fn = fn
  }
end
function newAbilityButtonTree(text, level, level2, level3, level4, level5,effect, price, fn)
  return {
    text = text,
    level = level,
    level2 = level2,
    level3 = level3,
    level4 = level4,
    level5 = level5,
    effect = effect,
    price = price,
    fn = fn
  }
end
function ButtonAbility()
  table.insert(abilityButton, newAbilityButton(
      "Buy", 
      function()
        if currentAbility.img == nil then
          table.insert(markerTable, {markertype='help', nombre="You must select an ability\r\nif you want to buy an ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.price ~= nil and getCurrentAbilityPoint() < currentAbility.price then
          table.insert(markerTable, {markertype='help', nombre="You do not have enought ABILITY POINT\r\nto buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if table.getn(abilityCardButton) ~= 0 then
          table.insert(markerTable, {markertype='help', nombre="You already buy an ability,\r\nyou must use it\r\nif you want an other ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level ~= nil and getCurrentLevel() < currentAbility.level then
          table.insert(markerTable, {markertype='help', nombre="You must buy the previous\r\nability to buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level ~= nil and getCurrentLevel() > currentAbility.level then
          table.insert(markerTable, {markertype='help', nombre="You already buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level2 ~= nil and getCurrentLevel2() < currentAbility.level2 then
          table.insert(markerTable, {markertype='help', nombre="You must buy the previous\r\nability to buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level2 ~= nil and getCurrentLevel2() > currentAbility.level2 then
          table.insert(markerTable, {markertype='help', nombre="You already buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level3 ~= nil and getCurrentLevel3() < currentAbility.level3 then
          table.insert(markerTable, {markertype='help', nombre="You must buy the previous\r\nability to buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level3 ~= nil and getCurrentLevel3() > currentAbility.level3 then
          table.insert(markerTable, {markertype='help', nombre="You already buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level4 ~= nil and getCurrentLevel4() > currentAbility.level4 then
          table.insert(markerTable, {markertype='help', nombre="You already buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level4 ~= nil and getCurrentLevel4() < currentAbility.level4 then
          table.insert(markerTable, {markertype='help', nombre="You must buy the previous\r\nability to buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level5 ~= nil and getCurrentLevel5() > currentAbility.level5 then
          table.insert(markerTable, {markertype='help', nombre="You already buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.level5 ~= nil and getCurrentLevel5() < currentAbility.level5 then
          table.insert(markerTable, {markertype='help', nombre="You must buy the previous\r\nability to buy this ability.", timer=-4})
          failSound:stop()
          failSound:play()
        end
        if currentAbility.img ~= nil then
          clickSound:stop()
          clickSound:play()
          buyAbility()
        end
      end))
  table.insert(abilityButton, newAbilityButton(
      "Exit", 
      function()
        clickSound:stop()
        clickSound:play()
        drawGameB = true
        drawPieceInfo = true
        drawGame = true
        drawGameInfo = true
        drawAddAbility = false
        timerButton = 0
      end))
  
  for i, ability in ipairs(abilityTable) do
    table.insert(abilityButtonTree, newAbilityButtonTree(
        ability.name,
        ability.level,
        ability.level2,
        ability.level3,
        ability.level4,
        ability.level5,
        ability.effect,
        ability.price,
        function()
          clickSound:stop()
          clickSound:play()
          currentAbility = ability
          
          if currentSide == LIGHT_SIDE then
            if ability.lightEffect ~= nil then
              currentAbility.effect = ability.lightEffect
            else
              currentAbility.effect = ability.effect
            end
            if ability.lightImg ~= nil then
              currentAbility.img = ability.lightImg
            else
              currentAbility.img = ability.img
            end
          elseif currentSide == DARK_SIDE then
            if ability.darkEffect ~= nil then
              currentAbility.effect = ability.darkEffect
            else
              currentAbility.effect = ability.effect
            end
            if ability.darkImg ~= nil then
              currentAbility.img = ability.darkImg
            else
              currentAbility.img = ability.img
            end
          end
  
          timerButton = 0
        end))
  end
end
function buyAbility()
  if currentAbility.level ~= nil then
    if getCurrentLevel() == currentAbility.level then
      if currentAbility ~= nil and table.getn(abilityCardButton) == 0 then
        if getCurrentAbilityPoint() >= currentAbility.price then
          updateCurrentAbilityPoint(-currentAbility.price)
          ButtonAbilityCard()
          updateCurrentLevel(1)
        end
      end
    end
  elseif currentAbility.level2 ~= nil then
    if getCurrentLevel2() == currentAbility.level2 then
      if currentAbility ~= nil and table.getn(abilityCardButton) == 0 then
        if getCurrentAbilityPoint() >= currentAbility.price then
          updateCurrentAbilityPoint(-currentAbility.price)
          ButtonAbilityCard()
          updateCurrentLevel2(1)
        end
      end
    end
  elseif currentAbility.level3 ~= nil then
    if getCurrentLevel3() == currentAbility.level3 then
      if currentAbility ~= nil and table.getn(abilityCardButton) == 0 then
        if getCurrentAbilityPoint() >= currentAbility.price then
          updateCurrentAbilityPoint(-currentAbility.price)
          ButtonAbilityCard()
          updateCurrentLevel3(1)
        end
      end
    end
  elseif currentAbility.level4 ~= nil then
    if getCurrentLevel4() == currentAbility.level4 then
      if currentAbility ~= nil and table.getn(abilityCardButton) == 0 then
        if getCurrentAbilityPoint() >= currentAbility.price then
          updateCurrentAbilityPoint(-currentAbility.price)
          ButtonAbilityCard()
          updateCurrentLevel4(1)
        end
      end
    end
  elseif currentAbility.level5 ~= nil then
    if getCurrentLevel5() == currentAbility.level5 then
      if currentAbility ~= nil and table.getn(abilityCardButton) == 0 then
        if getCurrentAbilityPoint() >= currentAbility.price then
          updateCurrentAbilityPoint(-currentAbility.price)
          ButtonAbilityCard()
          updateCurrentLevel5(1)
        end
      end
    end
  end
end
function DrawAbilityButton()
  local now = false
  local last = false

  local button_width = ww * (1/5)
  local button_height = 50

  local margin = 30 
  --local total_height = (button_height + margin) * #menuButton
  local cursor_y = 0

  for i, button in ipairs(abilityButton) do
    button.last = button.now
    local bx = margin/2
    local by = 4*margin + 4*button_height + cursor_y
    local color = {0.4, 0.4, 0.5  , 1}
    local mx , my = love.mouse.getPosition()
    local hot = mx > bx  and mx < bx + button_width and my > by and my < by + button_height

    if hot then
      color = {0.8,0.8,1,1}
    end

    button.now = love.mouse.isDown(1)
    if button.now and not button.last and hot and timerButton > timeOverButton then
      button.fn()
    end

    love.graphics.setColor(unpack(color))
    love.graphics.rectangle("fill", bx, by, button_width, button_height)

    love.graphics.setColor(1, 1, 0, 1)
    love.graphics.print(button.text, bx + margin/2, by , 0, 2, 2)
    love.graphics.setColor(1, 1, 1, 1)

    cursor_y = cursor_y + (button_height + margin)
  end
end
function DrawAbilityTree()
  local now = false
  local last = false

  local button_size = 60
  local mx , my = love.mouse.getPosition()

  local margin = 16 
  local total_size1 = (button_size + margin) * 4 
  local total_size2 = (button_size + margin) * 4 
  local total_size3 = (button_size + margin) * 4 
  local total_size4 = (button_size + margin) * 4
  local total_size5 = (button_size + margin) * 4

  local cursor_x1 = 0
  local cursor_x2 = 0
  local cursor_x3 = 0
  local cursor_x4 = 0
  local cursor_x5 = 0

  for i, button in ipairs(abilityButtonTree) do
    button.last = button.now
    local bx, by
    if i==1 or i==2 or i==3 or i == 4 then
      bx = (ww - total_size1)/2 - button_size + cursor_x1 
      by = 2*button_size 
    elseif i==5 or i==6 or i==7 or i==8 then
      bx = (ww - total_size2)/2 - button_size + cursor_x2 
      by = 5*button_size 
    elseif i==9 or i==10 or i==11 or i==12 then
      bx = (ww - total_size3)/2 - button_size + cursor_x3 
      by = 8*button_size 
    elseif i==13 or i==14 or i==15 or i==16 then
      bx = (ww - total_size4)/2 - button_size + cursor_x4 
      by = 11*button_size 
    elseif i==17 or i==18 or i==19 or i==20 then
      bx = (ww - total_size5)/2 - button_size + cursor_x5 
      by = 14*button_size 
    end
    local hot = false
    if currentSide == DARK_SIDE then
      color = {139/255,0,0,1}
    else
      color = {30/255,144/255,1}
    end
    
    if (button.level ~= nil and button.level ~= getCurrentLevel()) or (button.level2 ~= nil and button.level2 ~= getCurrentLevel2()) or (button.level3 ~= nil and button.level3 ~= getCurrentLevel3()) or (button.level4 ~= nil and button.level4 ~= getCurrentLevel4()) or (button.level5 ~= nil and button.level5 ~= getCurrentLevel5()) then
        color = {0,0,0,1}
    end
    
    if getDistanceBetween(bx, by, mx, my) < button_size then-- distance(centreCercle ; souris) < rayonCercle
      hot = true
    else
      hot = false
    end

    if hot then
      color = {0.5,0.5,0.5,1}
    end

    button.now = love.mouse.isDown(1)
    if button.now and not button.last and hot then
      button.fn()
    end

    love.graphics.setColor(unpack(color))
    love.graphics.circle("fill", bx, by, button_size)

    love.graphics.setColor(1, 1, 0, 1)
    love.graphics.print(button.text, bx - button_size, by - button_size/3, 0, 1.8, 1.8)
    love.graphics.setColor(1, 1, 1, 1)

    if i==1 or i==2 or i==3 or i == 4 then
      cursor_x1 = cursor_x1 + (2*button_size + margin)
    elseif i==5 or i==6 or i==7 or i==8 then
      cursor_x2 = cursor_x2 + (2*button_size + margin)
    elseif i==9 or i==10 or i==11 or i==12 then
      cursor_x3 = cursor_x3 + (2*button_size + margin)
    elseif i==13 or i==14 or i==15 or i==16 then
      cursor_x4 = cursor_x4 + (2*button_size + margin)
    elseif i==17 or i==18 or i==19 or i==20 then
      cursor_x5 = cursor_x5 + (2*button_size + margin)
    end
  end --for
end

function DrawAbilityInfo()
  local ww = love.graphics.getWidth()
  local wh = love.graphics.getHeight()
  local margin = 30
  local button_width = ww * (1/5)
  local button_height = 50

  --JOUEUR
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", margin/2, margin, button_width, button_height)
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", margin/2, margin, button_width, button_height)
  love.graphics.setColor(1,1,0,1)
  love.graphics.print("playeur:"..currentPlayeur, margin, margin/2 + button_height/2, 0, 1.8,1.8)
  --CAMP
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", margin/2, 2*margin + button_height, button_width, button_height)
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", margin/2, 2*margin + button_height, button_width, button_height)
  love.graphics.setColor(1,1,0,1)
  love.graphics.print("camp:"..currentSide, margin, 3/2*margin + (button_height* 3/2), 0, 1.8,1.8)
  --ABILITY POINTS
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", margin/2, 3*margin + 2*button_height, button_width, button_height)
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", margin/2, 3*margin + 2*button_height, button_width, button_height)
  love.graphics.setColor(1,1,0,1)
  love.graphics.print("ability points:"..getCurrentAbilityPoint(), margin, 5/2*margin + (button_height* 5/2), 0, 1.8,1.8)
  --JAUGE D'XP
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", margin/2 + button_width/4, height/2 - margin/2, button_width/2, OverXp)
  love.graphics.setColor(1,1,0,1)
  love.graphics.rectangle("fill", margin/2 + button_width/4, height/2 - margin/2 + OverXp, button_width/2, -getCurrentXp())
  love.graphics.print("Next Point:"..getCurrentXp().."/"..OverXp, margin/2 + button_width/4, height - margin, 0, 1.5, 1.5 )
  --TIMER ROUND
  love.graphics.setColor(1,1,0,1)
  love.graphics.print("Next Round:"..math.ceil(timerRound), 15/2*margin, margin/2 + button_height/2, 0, 1.8,1.8)
end
function DrawAbilityPointInfo()
  local ww = love.graphics.getWidth()
  local wh = love.graphics.getHeight()
  local margin = 30
  local button_width = ww * (1/5)
  local button_height = 50

  --IMAGES ABILITY
  if currentAbility.img ~= nil then
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", width - (button_width + margin/2), margin, button_width, height/2 - 3/2*margin)
    if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
    love.graphics.rectangle("line", width - (button_width + margin/2), margin, button_width, height/2 - 3/2*margin)
    love.graphics.setColor(1,1,1,1)
    love.graphics.draw(currentAbility.img, ww - (button_width/2 + margin/2), margin + 0.5*(wh/2 - 3/2*margin), 0, 0.7, 0.7, currentAbility.img:getWidth()/2, currentAbility.img:getHeight()/2)
  end
  --INFOS ABILITY
  if currentAbility.img ~= nil then
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", width - (button_width + margin/2), margin + height/2 - margin/2 , button_width, height/2 - 3/2*margin)
    if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
    love.graphics.rectangle("line", width - (button_width + margin/2), margin + height/2 - margin/2 , button_width, height/2 - 3/2*margin)
    love.graphics.setColor(1, 1, 0, 100)
    if currentAbility.name ~= nil then
      love.graphics.print(currentAbility.name ,width - (button_width + margin/3),  margin + height/2 - margin/2 , 0, 2,2)
    end
    if currentAbility.level ~= nil then
      love.graphics.print("Level:"..""..currentAbility.level ,width - (button_width + margin/3),  6*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentAbility.level2 ~= nil then
      love.graphics.print("Level:"..""..currentAbility.level2 ,width - (button_width + margin/3),  6*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentAbility.level3 ~= nil then
      love.graphics.print("Level:"..""..currentAbility.level3 ,width - (button_width + margin/3),  6*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentAbility.level4 ~= nil then
      love.graphics.print("Level:"..""..currentAbility.level4 ,width - (button_width + margin/3),  6*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentAbility.level5 ~= nil then
      love.graphics.print("Level:"..""..currentAbility.level5 ,width - (button_width + margin/3),  6*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentAbility.effect ~= nil then
      love.graphics.print("Effect: ".." "..currentAbility.effect ,width - (button_width + margin/3),  8*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentAbility.price ~= nil then
      love.graphics.print("Price: ".." "..currentAbility.price ,width - (button_width + margin/3),  12*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
  end
end
  
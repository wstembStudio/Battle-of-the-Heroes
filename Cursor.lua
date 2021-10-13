markerTable = {}

hitMarkerImg = love.graphics.newImage("images/hitmarker.png")
healMarker_img = love.graphics.newImage("images/healmarker.png")
attMarker_img = love.graphics.newImage("images/attMarker.png")

local arrow = {}
arrow.x = 0
arrow.y = 0
arrow.img = love.graphics.newImage("images/fléche.png")
drawArrow = false

local target = {}
target.x = 0
target.y = 0
target.img = love.graphics.newImage("images/cible.jpg")
drawTarget = false

local dollar = {}
dollar.x = 0
dollar.y = 0
dollar.img = love.graphics.newImage("images/dollar.jpg")
drawDollar = false

local hand = {}
hand.x = 0
hand.y = 0
hand.img = love.graphics.newImage("images/hand.jpg")
drawHand = false

local deleteCross = {}
deleteCross.x = 0
deleteCross.y = 0
deleteCross.img = love.graphics.newImage("images/crois supr.png")
drawDeleteCross = false

redCross = {}
redCross.x = 0
redCross.y = 0
redCross.img = love.graphics.newImage("images/croix rouge.png")
drawRedCross = false 

greenCross = {}
greenCross.x = 0
greenCross.y = 0
greenCross.img = love.graphics.newImage("images/croix verte.png")
drawGreenCross = false 

local deadTarget = {}
deadTarget.x = 0
deadTarget.y = 0
deadTarget.img = love.graphics.newImage("images/deadTarget.jpg")
drawDeadTarget = false

flake = {}
flake.img = love.graphics.newImage("images/flocon.png")
drawFlake = false


function DrawAllCursor()
  if jediWin == false and sithWin == false then
    DrawMarker()
  end

  if drawGame == false then
    -- grid is not displayed
    love.mouse.setVisible(true)
    return
  end
  
  if g_cursorOnGrid == true then
    -- ability
    if g_abilityUnlimitedPower==true or g_abilityBigShot==true or g_abilityDoubleShot ==true then
      DrawTarget()
      love.mouse.setVisible(false)
      return
    end
    
    if g_abilitySquadron==true or g_abilityTheOrder==true or g_abilityBigFleet== true or g_abilityConvoy == true or g_abilityHunterAttack == true then
      DrawDollar()
      love.mouse.setVisible(false)
      return
    end
    
    if g_abilityBigBounty==true or g_abilityMyMonster==true then
      DrawHand()
      love.mouse.setVisible(false)
      return
    end
    
    -- force card
    if g_loseOneVehicle==true or g_loseOneMine==true or g_loseTwoMine==true then
      DrawDeleteCross()
      love.mouse.setVisible(false)
      return
    end
    
    if g_receiveOneVehicle==true or g_receiveOneMine==true or g_receiveTwoMine==true or g_receiveOneHero == true then
      DrawDollar()
      love.mouse.setVisible(false)
      return
    end
  
    if drawDeleteCross == true then
      DrawDeleteCross()
      love.mouse.setVisible(false)
      
    elseif drawRedCross == true then
      DrawRedCross()
      love.mouse.setVisible(false)
      
    elseif drawGreenCross == true then
      DrawGreenCross()
      love.mouse.setVisible(false)
      
    elseif drawFlake == true then
      DrawFlake()
      love.mouse.setVisible(false)
      
    elseif drawDollar == true then
      DrawDollar()
      love.mouse.setVisible(false)
      
    elseif drawDeadTarget == true then
      DrawDeadTarget()
      love.mouse.setVisible(false)
      
    elseif drawTarget == true then
      DrawTarget()
      love.mouse.setVisible(false)
      
    elseif drawHand == true then
      DrawHand()
      love.mouse.setVisible(false)
      
    elseif drawArrow == true  then
      DrawArrow()
      love.mouse.setVisible(false)
    else
      love.mouse.setVisible(true)
    end
  elseif g_cursorOnGrid == false then
    love.mouse.setVisible(true)
  end
end

function hideAllCursors()
  drawDollar = false
  drawArrow = false
  drawTarget = false
  drawHand = false
  drawDeleteCross = false
  drawRedCross = false
  drawGreenCross = false
  drawDeadTarget = false
  drawFlake = false
end
--ARROW
function DrawArrow()
    local mx , my = love.mouse.getPosition()
    love.graphics.setColor(1,1,1,1)
    love.graphics.draw(arrow.img, mx , my, 0, 0.075, 0.075 ,arrow.img:getWidth()/2, arrow.img:getHeight()/2)
    if selectedPiece ~= nil and selectedPiece.moves ~= nil then
      love.graphics.setColor(0,0,0,1)
      love.graphics.print(selectedPiece.moves , mx +7 , my +10)
    end
end
--TARGET
function DrawTarget()
  local mx , my = love.mouse.getPosition()
  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(target.img, mx , my, 0, 0.075, 0.075 ,target.img:getWidth()/2, target.img:getHeight()/2)
  if selectedPiece ~= nil and selectedPiece.shoot ~= nil then
    love.graphics.setColor(0,0,0,1)
    love.graphics.print(selectedPiece.shoot , mx +7 , my +10)
  end
end
--DOLLAR
function DrawDollar()
  local mx , my = love.mouse.getPosition()
  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(dollar.img, mx , my, 0, 0.075, 0.075 ,dollar.img:getWidth()/2, dollar.img:getHeight()/2)
end
--HAND
function DrawHand()
  local mx , my = love.mouse.getPosition()
  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(hand.img, mx , my, 0, 0.075, 0.075 ,hand.img:getWidth()/2, hand.img:getHeight()/2)
end
--Delete Cross
function DrawDeleteCross()
  local mx , my = love.mouse.getPosition()
  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(deleteCross.img, mx , my, 0, 0.075, 0.075 ,deleteCross.img:getWidth()/2, deleteCross.img:getHeight()/2)
end
--Red Cross
function DrawRedCross()
  local mx , my = love.mouse.getPosition()
  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(redCross.img, mx , my, 0, 0.075, 0.075 ,redCross.img:getWidth()/2, redCross.img:getHeight()/2)
end
--Green Cross
function DrawGreenCross()
  local mx , my = love.mouse.getPosition()
  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(greenCross.img, mx , my, 0, 0.075, 0.075 ,greenCross.img:getWidth()/2, greenCross.img:getHeight()/2)
end
--DEAD TArget
function DrawDeadTarget()
  local mx , my = love.mouse.getPosition()
  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(deadTarget.img, mx , my, 0, 0.075, 0.075 ,deadTarget.img:getWidth()/2, deadTarget.img:getHeight()/2)
  if selectedPiece ~= nil and selectedPiece.shoot ~= nil then
    love.graphics.setColor(1,1,1,1)
    love.graphics.print(selectedPiece.shoot , mx +7 , my +10)
  end
end
--draw flake
function DrawFlake()
  local mx , my = love.mouse.getPosition()
  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(flake.img, mx , my, 0, 0.075, 0.075 ,flake.img:getWidth()/2, flake.img:getHeight()/2)
end
--HIT MARKER
function DrawMarker()
  for i, marker in ipairs(markerTable) do
    local markertype = marker.markertype
    local x, y
    if  markertype == 'credit' then
      if drawBuildingB == false and drawHeroB == false and drawVehicleB == false and drawTroupB == false then
        x = ww * (1/7)
        y = 203
        x2 = ww - 200
        y2 = height - 64
      elseif drawBuildingB == true or drawHeroB == true or drawVehicleB == true or drawTroupB == true then 
        x = ww - 200
        y = height - 64
      end
    elseif markertype == "help" then
      x = ww/2
      y = wh/2
    elseif markertype == 'hit' or markertype == 'heal' or markertype == 'att' or markertype == 'cloud' then
      local l = marker.l
      local c = marker.c
      x, y = getXY(l, c)
    else
      x = 0
      y = 0
    end
    
    local nombre = marker.nombre
    local timer = marker.timer
    love.graphics.setColor(1,1,1,1)
    if markertype == 'hit' then
      love.graphics.draw(hitMarkerImg, x, y, 0, 0.08, 0.08)
    elseif markertype == 'heal' then
      love.graphics.draw(healMarker_img, x, y, 0, 0.08, 0.08)
    elseif markertype == 'att' then
      love.graphics.draw(attMarker_img, x, y, 0, 0.08, 0.08)
    elseif markertype == 'cloud' then
      love.graphics.draw(cloud_img, x, y, 0, 0.08, 0.08)
    elseif markertype == 'help' and drawHelpMessage == true then
      love.graphics.draw(helpMessage_img, x, y, 0, 1, 1,helpMessage_img:getWidth()/2, helpMessage_img:getHeight()/2)
    elseif markertype == 'credit' then
      --love.graphics.draw(cloud_img, x, y, 0, 0.09, 0.09)
    end
    
    if markertype == 'credit' then
      love.graphics.setColor(1,1,0,1)
    else
      love.graphics.setColor(0,0,0,1)
    end
    if nombre ~= nil then
      if markertype ~= 'help' then
        love.graphics.print(nombre, x+5, y, 0, 1.5, 1.5)
        if x2 ~= nil and y2 ~= nil and drawBuildingB == false and drawHeroB == false and drawVehicleB == false and drawTroupB == false then
          love.graphics.print(nombre, x2+5, y2-2, 0, 1.5, 1.5)
        end
      elseif markertype == 'help' and drawHelpMessage == true then
        love.graphics.print(nombre, ww/2 - helpMessage_img:getWidth()/2 + 20, wh/2 - helpMessage_img:getHeight()/3 + 20, 0, 2, 2)
      end
    end
  end
end


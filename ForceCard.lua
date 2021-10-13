
local forceCardButton, newForceCardButton = {}
drawForceCardText = false

function initForceCard()
  g_loseOneVehicle = false
  g_loseOneVehiclePiece = 0

  g_receiveOneVehicle = false
  g_receiveOneVehiclePiece = 0

  g_receiveOneMine = false
  g_receiveOneMinePiece = 0

  g_receiveTwoMine = false
  g_receiveTwoMinePiece = 0

  g_loseOneMine = false
  g_loseOneMinePiece = 0

  g_loseTwoMine = false
  g_loseTwoMinePiece = 0

  g_receiveOneHero = false
  g_receiveOneHeroPiece = 0
end

function checkForceCardOn()
  if g_loseOneVehicle==true or g_receiveOneVehicle==true or g_receiveOneMine==true or g_receiveTwoMine==true or g_loseOneMine==true or g_loseTwoMine==true or g_receiveOneHero==true then
    return true
  end
  return false
end
function checkForceCard()
  if g_loseOneMine == true then
    local found = false
    for i, piece in ipairs(pieceGridTable) do
      if (piece.name == "Light Mine" and piece.camp == currentSide) or (piece.name == "Dark Mine" and piece.camp == currentSide) then
        found = true
        break
      end
    end
    if found == false then
      g_loseOneMine = false
      g_loseOneMinePiece = 0
      drawDeleteCross = false
    end
  end
  if g_loseTwoMine == true then
    local found = false
    for i, piece in ipairs(pieceGridTable) do
      if (piece.name == "Light Mine" and piece.camp == currentSide) or (piece.name == "Dark Mine" and piece.camp == currentSide) then
        found = true
        break
      end
    end
    if found == false then
      g_loseTwoMine = false
      g_loseTwoMinePiece = 0
      drawDeleteCross = false
    end
  end
  if g_loseOneVehicle == true then
    local found = false
    for i, piece in ipairs(pieceGridTable) do
      if piece.category == CATEGORY_VEHICLE then
        found = true
        break
      end
    end
    if found == false then
      g_loseOneVehicle = false
      g_loseOneVehiclePiece = 0
      drawDeleteCross = false
    end
  end
end
  
function ButtonForceCard()

  local textCard, fonctionCard = ForceCards()
  local cardButton = newForceCardButton(textCard, fonctionCard)
  cardButton.enabled = true
  -- cardButton.text
  -- cardButton.fn

  if table.getn(forceCardButton) == 0 then
    table.insert(forceCardButton, cardButton)
  else
    cardButton = forceCardButton[1] 
  end
end

function afterTimerForceCard()
  drawForceCardText = false
  local button = forceCardButton[1]
  if button ~= nil then
    button.fn()
  end
  table.remove(forceCardButton,1)
end

function newForceCardButton(text, fn)
  return {
    text = text,
    fn = fn
  }
end

function ForceCards()
  card = 243--love.math.random(389)
  local textCard = nil
  local fonctionCard = nil
  if 0 >= card and card <= 1 then
    textCard = "You win 25000\r\ncredits in\r\nSabacc"
    fonctionCard = function()
      updateCurrentCredit(25000)
    end
  end
  if 2 <= card and card <= 17 then
    textCard = "You receive\r\n10000 credits\r\nin Fathier\r\nRace  "
    fonctionCard = function()
      updateCurrentCredit(10000)
    end
  end
  if 18 <= card and card <= 53 then
    textCard = "You receive\r\n1000 credits\r\nfrom the\r\nCrimson Dawn"
    fonctionCard = function()
      updateCurrentCredit(1000)
    end
  end
  if 54 <= card and card <= 93 then
    textCard = "You receive\r\n100 credits\r\nfrom the\r\nCIS"
    fonctionCard = function()
      updateCurrentCredit(100)
    end
  end
  if 94 <= card and card <= 101 then
    textCard = "You have to\r\npay 10000\r\ncredits to\r\nthe Senat"
    fonctionCard = function() 
      updateCurrentCredit(-10000)
    end
  end
  if 102 <= card and card <= 133 then
    textCard = "You have to\r\npay 1000\r\ncredits to\r\nthe Empire"
    fonctionCard = function()
      updateCurrentCredit(-1000)
    end
  end
  if 134 <= card and card <= 169 then
    textCard = "You have to\r\npay 100\r\ncredits to\r\nthe Hutt"
    fonctionCard = function()
      updateCurrentCredit(-100)
    end
  end
  if 170 <= card and card <= 197 then
    textCard = "You receive\r\n1 Mine"
    fonctionCard = function()
      if getCurrentNbBuildingBase(currentSide) == true then
        hideAllCursors()
        return
      end
      g_receiveOneMine = true
      g_receiveOneMinePiece = 1
      drawDollar = true
    end
  end
  if 198 <= card and card <= 217 then
    textCard = "You receive\r\n2 Mines"
    fonctionCard = function() 
      g_receiveTwoMine = true
      g_receiveTwoMinePiece = 2
      drawDollar = true
    end
  end
  if 218 <= card and card <= 241 then
    textCard = "You lose 1\r\nMine"
    fonctionCard = function()
      g_loseOneMine = true
      g_loseOneMinePiece = 1
      drawDeleteCross = true
    end
  end
  if 242 <= card and card <= 257 then
    textCard = "You lose 2\r\nMines"
    fonctionCard = function()
      g_loseTwoMine = true
      g_loseTwoMinePiece = 2
      drawDeleteCross = true
    end
  end
  if 258 <= card and card <= 281 then
    textCard = "You win 1\r\nAbility\r\nPoint"
    fonctionCard = function()
      updateCurrentAbilityPoint(1)
    end
  end
  if 282 <= card and card <= 289 then
    textCard = "You win 2\r\nAbility\r\nPoints"
    fonctionCard = function() 
      updateCurrentAbilityPoint(2)
    end
  end
  if 290 <= card and card <= 309 then
    textCard = "You lose 1\r\nAbility\r\nPoint"
    fonctionCard = function()
      drawForceCardText = true 
      updateCurrentAbilityPoint(-1)
    end
  end
  if 310 <= card and card <= 313 then
    textCard = "You lose 2\r\nAbility\r\nPoints"
    fonctionCard = function()
      updateCurrentAbilityPoint(-2)
    end
  end
  if 314 <= card and card <= 345 then
    textCard = 'You receive\r\n1 Vehicle';
    fonctionCard = function()
      if getCurrentNbPieceBase(currentSide) == true then
        hideAllCursors()
        return
      end
      g_receiveOneVehicle = true
      g_receiveOneVehiclePiece = 1
      drawDollar = true
    end
  end
  if 346 <= card and card <= 361 then
    textCard = "You receive\r\n1 Hero"
    fonctionCard = function()
      if getCurrentNbPieceBase(currentSide) == true then
        hideAllCursors()
        return
      end
      g_receiveOneHero = true
      g_receiveOneHeroPiece = 1
      drawDollar = true
    end
  end
  if 362 <= card and card <= 389 then
    textCard = "You lose\r\n1 Vehicle"
    fonctionCard = function()
      g_loseOneVehicle = true
      g_loseOneVehiclePiece = 1
      drawDeleteCross = true
    end
  end
  return textCard, fonctionCard
end
function DrawForceCardButton()

  local now = false
  local last = false

  local margin = 30
  local cursor_x = 0

  local button_width = (ww * (1/5))/2 - 3/4*margin 
  local button_height = wh - (12*margin + 8*50)

  for i, button in ipairs(forceCardButton) do -- que un element
    button.last = button.now
    local bx = margin + cursor_x 
    local by = 21/2*margin + 8*50 
    local color = {0.4, 0.4, 0.5  , 1}
    local mx , my = love.mouse.getPosition()
    local hot = mx > bx  and mx < bx + button_width and my > by and my < by + button_height

    if hot then
      color = {0.8,0.8,1,1}
    end

    button.now = love.mouse.isDown(1)
    if button.now and not button.last and hot and button.enabled == true and timerButton > timeOverButton then
      -- button.fn()
      drawForceCardText = true 
      button.enabled = false
      cardSound:stop()
      cardSound:play()
    end

    love.graphics.setColor(unpack(color))
    love.graphics.rectangle("fill", bx, by, button_width, button_height)

    love.graphics.setColor(1, 1, 0, 1)

    cursor_x = cursor_x + button_width + margin/2

    if button.text ~= nil and drawForceCardText == true then
      love.graphics.print(button.text, bx, by + button_height/3 , 0, 2, 2)
      love.graphics.setColor(1, 1, 1, 1)
    end
    if drawForceCardText == false then
      love.graphics.print("Click here to \r\nreceive a \r\nForce Card", bx, by + button_height/3, 0, 2, 2)
    end
  end
end
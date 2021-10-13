
--OBJECTS
local space = {}
space.img = love.graphics.newImage("images/space.png")

williamStudio_img = love.graphics.newImage("images/logoWilliamStudio.png")
logoSW_img = love.graphics.newImage("images/logosw.png")
battle_img = love.graphics.newImage("images/txtBattle.png")
heroes_img = love.graphics.newImage("images/txtHeroes.png")
backGroundMenu_img = love.graphics.newImage("images/menu3.jpg")

jediWin_img = love.graphics.newImage("images/jediWin.jpg")
txtJediWin_img = love.graphics.newImage("images/txtJediWin.png")
sithWin_img = love.graphics.newImage("images/sithWin.jpg")
txtSithWin_img = love.graphics.newImage("images/txtSithWin.png")
jediLose_img = love.graphics.newImage("images/jediLose.jpg")
txtJedi_img = love.graphics.newImage("images/txtJedi.png")
txtLose_img = love.graphics.newImage("images/txtLose.png")
sithLose_img = love.graphics.newImage("images/sithLose.jpg")
txtSith_img = love.graphics.newImage("images/txtSith.png")
txtLose_img = love.graphics.newImage("images/txtLose.png")

--bb8
local bb8 = {}
bb8.img = love.graphics.newImage("images/bb8.png")



ww = 1920
wh = 1080

--DRAW
drawMenu = false
drawGameB = false
drawCategoryB = false
drawBuildingB = false
drawHeroB = false
drawTroupB = false
drawVehicleB = false
drawAddAbility = false
drawPieceInfo = false
drawGame = false
drawPreMenu = true
drawSettings = false

--BUTTON
local menuButton, newMenuButton = {}
local gameButton, newGameButton = {}
local categoryButton, newCategoryButton = {}
local pieceButton, newPieceButton = {}
local pieceSpecialButton,newPieceSpecialButton = {}
local winButton, newWinButton = {}
  
--BUTTON
function newMenuButton(text, fn)
  return {
    text = text,
    fn = fn
  }
end
function newGameButton(text, fn)
  return {
    text = text,
    fn = fn
  }
end
function newCategoryButton(text, fn)
  return {
    text = text,
    fn = fn
  }
end
function newPieceButton(text, category, camp, price, fn)
  return {
    text = text,
    category = category,
    camp = camp,
    price = price,
    fn = fn
  }
end
function newPieceSpecialButton(text, fn)
  return {
    text = text,
    fn = fn
  }
end
function newWinButton(text, fn)
  return {
    text = text,
    fn = fn
  }
end

--MENU
function ButtonMenu()
  table.insert(menuButton, newMenuButton(
      "Start Game", 
      function()
        clickSound:stop()
        clickSound:play()
        gameMusic = love.audio.newSource("music/game.mp3", "stream")
        drawMenu = false
        swTimer = false
        drawIntro = false
        drawGameB = true
        drawPieceInfo = true
        drawGame = true
        drawGameInfo = true
        timerButton = 0
        startTimerRound = true
        gameTimer = true
        mineTimer = true
        switchMusicGame = true
        randomCard = false
      end))
  table.insert(menuButton, newMenuButton(
      "Settings", 
      function()
        clickSound:stop()
        clickSound:play()
        drawMenu = false
        swTimer = false
        drawIntro = false
        drawSettings = true
      end))
  table.insert(menuButton, newMenuButton(
      "Exit", 
      function()
        clickSound:stop()
        clickSound:play()
        love.event.quit(0)
      end))
end
function ButtonGame()
  table.insert(gameButton, newGameButton(
      "BUY PIECES", 
      function()
        clickSound:stop()
        clickSound:play()
        if currentStep == STEP_BUY then
          drawGameB = false
          drawCategoryB = true
          timerButton = 0
        else
          failSound:stop()
          failSound:play()
          table.insert(markerTable, {markertype='help', nombre="You must be in STEP SHOOT\r\nif you want to buy a piece.", timer=-4})
        end
      end))
  table.insert(gameButton, newGameButton(
      "BUY ABILITYS", 
      function()
        clickSound:stop()
        clickSound:play()
        drawGameB = false
        drawAddAbility = true
        drawPieceInfo = false
        drawGame = false
        drawGameInfo = false
        timerButton = 0
      end))
  table.insert(gameButton, newGameButton(
      "NEXT STEP", 
      function()
        clickSound:stop()
        clickSound:play()
        switchStep()
        timerButton = 0
      end))
end
function ButtonCategory()
  table.insert(categoryButton, newCategoryButton(
      CATEGORY_HERO, 
      function()
        clickSound:stop()
        clickSound:play()
        buy = true
        drawCategoryB = false
        drawHeroB = true
        drawGameInfo = false
        timerButton = 0
      end))
  table.insert(categoryButton, newCategoryButton(
      CATEGORY_VEHICLE, 
      function()
        clickSound:stop()
        clickSound:play()
        buy = true
        drawCategoryB = false
        drawVehicleB = true
        drawGameInfo = false
        timerButton = 0
      end))
  table.insert(categoryButton, newCategoryButton(
      CATEGORY_TROUP, 
      function()
        clickSound:stop()
        clickSound:play()
        buy = true
        drawCategoryB = false
        drawTroupB = true
        drawGameInfo = false
        timerButton = 0
      end))
  table.insert(categoryButton, newCategoryButton(
      CATEGORY_BUILDING, 
      function()
        clickSound:stop()
        clickSound:play()
        buy = true
        drawCategoryB = false
        drawBuildingB = true
        drawGameInfo = false
        timerButton = 0
      end))
  table.insert(categoryButton, newCategoryButton(
      "Exit", 
      function()
        clickSound:stop()
        clickSound:play()
        drawCategoryB = false
        drawGameB = true
        drawGameInfo = true
        timerButton = 0
      end))
end

function ButtonPiece()
  for i, piece in ipairs(pieceTable) do
    table.insert(pieceButton, newPieceButton(
        piece.name,
        piece.category,
        piece.camp,
        piece.price,
        function()
          clickSound:stop()
          clickSound:play()
          currentPiece = piece
          drawDollar = true
          timerButton = 0
        end))
  end
  table.insert(pieceButton, newPieceButton(
      "Exit", 
      "",
      "",
      "",
      function()
        clickSound:stop()
        clickSound:play()
        drawCategoryB = true
        buy = false
        drawHeroB = false
        drawVehicleB = false
        drawTroupB = false
        drawBuildingB = false
        drawGameInfo = true
        timerButton = 0
      end))
end
function ButtonPieceSpecial()
  table.insert(pieceSpecialButton, newPieceSpecialButton(
      "Special Attack", 
      function()
        clickSound:stop()
        clickSound:play()
        currentPiece.fn(currentPiece.param1, currentPiece.param2, currentPiece.param3, currentPiece.param4 ,currentPiece.param5, currentPiece.param6, currentPiece.param7)
        currentPiece.round = currentPiece.roundbase
      end))
end
function ButtonWin()
  table.insert(winButton, newWinButton(
      "Next Player", 
      function()
        clickSound:stop()
        clickSound:play()
        if currentPlayeur == 1 and currentSide == LIGHT_SIDE then
          currentPlayeur = 2
          currentSide = DARK_SIDE
        elseif currentPlayeur == 2 and currentSide == DARK_SIDE  then
          currentPlayeur = 1
          currentSide = LIGHT_SIDE
        end
        if jediWin == true and sithLose == false then
          sithLose = true
          jediWin = false
        elseif jediWin == false and sithLose == true then
          sithLose = false
          jediWin = true
        end
        if sithWin == true and jediLose == false then
          jediLose = true
          sithWin = false
        elseif sithWin == false and jediLose == true then
          jediLose = false
          sithWin = true
        end
      end))
  table.insert(winButton, newWinButton(
      "New Game", 
      function()
        clickSound:stop()
        clickSound:play()
        gameTime = 0
        jediLose = false
        jediWin = false
        sithLose = false
        sithWin = false
        drawMenu = true
      end))
  table.insert(winButton, newWinButton(
      "Exit", 
      function()
        clickSound:stop()
        clickSound:play()
        love.event.quit(0)
      end))

end
function DrawPreMenu()
  love.graphics.draw(williamStudio_img, ww/2, wh/2, 0, 1, 1, williamStudio_img:getWidth()/2,  williamStudio_img:getHeight()/2)
end

function DrawBackGround()
  love.graphics.draw(space.img)
end
function DrawMenu()
   --IMAGE
  local margin2 = 110.5
  love.graphics.draw(backGroundMenu_img)
  love.graphics.draw(battle_img, margin2, 0, 0, 0.9)
  love.graphics.draw(heroes_img, margin2 + battle_img:getWidth()*0.9, 0, 0, 0.9)
 
  --BUTTON
  local now = false
  local last = false

  local button_width = ww * (1/6)
  local button_height = 64

  local margin = 16 
  local total_height = (button_height + margin) * #menuButton
  local cursor_x = 0

  for i, button in ipairs(menuButton) do
    button.last = button.now
    local bx =  (ww/6 - button_width/2) + cursor_x
    local by =  (wh - total_height/2)  
    local color = {0.4, 0.4, 0.5  , 1}
    local mx , my = love.mouse.getPosition()
    local hot = mx > bx  and mx < bx + button_width and my > by and my < by + button_height

    if hot then
      color = {0.8,0.8,1,1}
    end

    button.now = love.mouse.isDown(1)
    if button.now and not button.last and hot then
      button.fn()
    end

    love.graphics.setColor(unpack(color))
    love.graphics.rectangle("fill", bx, by, button_width, button_height)

    love.graphics.setColor(1, 1, 0, 1)
    love.graphics.print(button.text, bx + margin/2, by + margin/2 , 0, 2, 2)
    love.graphics.setColor(1, 1, 1, 1)

    cursor_x = cursor_x + (1/3*ww)
  end
end

function DrawGameInfo()
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
  love.graphics.setColor(1,1,0)
  love.graphics.print("Playeur:"..currentPlayeur, margin, margin/2 + button_height/2, 0, 1.8,1.8)
  --CAMP
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", margin/2, 2*margin + button_height, button_width, button_height)
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", margin/2, 2*margin + button_height, button_width, button_height)
  love.graphics.setColor(1,1,0)
  love.graphics.print("Camp:"..currentSide, margin, 3/2*margin + (button_height* 3/2), 0, 1.8,1.8)
  --CREDIT
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", margin/2, 3*margin + 2*button_height, button_width, button_height)
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", margin/2, 3*margin + 2*button_height, button_width, button_height)
  love.graphics.setColor(1,1,0)
  love.graphics.print("Credits:"..getCurrentCredit(), margin, 5/2*margin + (button_height* 5/2), 0, 1.8,1.8)
  --STEP
  
  love.graphics.setColor(0,0,0)
  if currentStep == STEP_MOVE then
    if currentSide == LIGHT_SIDE then
      love.graphics.setColor(30/255,144/255,1)
    else
      love.graphics.setColor(139/255,0,0)
    end
  end
  love.graphics.rectangle("fill", margin/2, 8*margin + 7*button_height, button_width/3 - 1/3*margin, button_height)
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", margin/2, 8*margin + 7*button_height, button_width/3 - 1/3*margin, button_height)
  love.graphics.setColor(1,1,0)
  love.graphics.print("Move", margin/2, 15/2*margin + (button_height* 15/2), 0, 1.8,1.8)
  
  love.graphics.setColor(0,0,0)
  if currentStep == STEP_SHOOT then
    if currentSide == LIGHT_SIDE then
      love.graphics.setColor(30/255,144/255,1)
    else
      love.graphics.setColor(139/255,0,0)
    end
  end
  love.graphics.rectangle("fill", margin + button_width/3 - 1/3*margin, 8*margin + 7*button_height, button_width/3 - 1/3*margin, button_height)
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", margin + button_width/3 - 1/3*margin, 8*margin + 7*button_height, button_width/3 - 1/3*margin, button_height)
  love.graphics.setColor(1,1,0)
  love.graphics.print("Shoot", margin + button_width/3 - 1/3*margin, 15/2*margin + (button_height* 15/2), 0, 1.8,1.8)
  
  love.graphics.setColor(0,0,0)
  if currentStep == STEP_BUY then
    if currentSide == LIGHT_SIDE then
      love.graphics.setColor(30/255,144/255,1)
    else
      love.graphics.setColor(139/255,0,0)
    end
  end
  love.graphics.rectangle("fill", 3/2*margin + 2 *(button_width/3 - 1/3*margin), 8*margin + 7*button_height, button_width/3 - 1/3*margin, button_height)
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", 3/2*margin + 2 *(button_width/3 - 1/3*margin), 8*margin + 7*button_height, button_width/3 - 1/3*margin, button_height)
  love.graphics.setColor(1,1,0)
  love.graphics.print("Buy", 3/2*margin + 2 *(button_width/3 - 1/3*margin), 15/2*margin + (button_height* 15/2), 0, 1.8,1.8)
  
  
  --CARTE FORCE
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", margin/2, 9*margin + 8*button_height, button_width, wh - (10*margin + 8*button_height))
  if currentSide == LIGHT_SIDE then
    love.graphics.setColor(30/255,144/255,1)
  else
    love.graphics.setColor(139/255,0,0)
  end
  love.graphics.rectangle("line", margin/2, 9*margin + 8*button_height, button_width, wh - (10*margin + 8*button_height))
  love.graphics.setColor(1,1,0)
  love.graphics.print("Force Cards:", margin, 9.25*margin + 8*button_height, 0, 1.8,1.8)
  --CARTE ABILITY
  love.graphics.print("Ability Cards:", 9*margin - 50, 9.25*margin + 8*button_height, 0, 1.8,1.8)
  --TIMER ROUND
  love.graphics.print("Next Round:"..math.ceil(timerRound), 15/2*margin, margin/2 + button_height/2, 0, 1.8,1.8)
  
end

function DrawGameButton()
  local now = false
  local last = false

  local button_width = ww * (1/5)
  local button_height = 50

  local margin = 30 
  --local total_height = (button_height + margin) * #menuButton
  local cursor_y = 0

  for i, button in ipairs(gameButton) do
    button.last = button.now
    local bx = margin/2
    local by = 3.5*margin + 4*button_height + cursor_y
    local color = {0.4, 0.4, 0.5  , 1}
    local mx , my = love.mouse.getPosition()
    local hot = mx > bx  and mx < bx + button_width and my > by and my < by + button_height

    if hot then
      color = {0.8,0.8,1,1}
    end
    
    if checkAbilityOn() or checkForceCardOn() or checkHeroeFonctionOn() then
      return
    end

    button.now = love.mouse.isDown(1)
    if button.now and not button.last and hot and timerButton > timeOverButton then
      button.fn()
    end

    love.graphics.setColor(unpack(color))
    love.graphics.rectangle("fill", bx, by, button_width, button_height)

    love.graphics.setColor(1, 1, 0, 1)
    love.graphics.print(button.text, bx + margin/2, by + margin/3, 0, 2, 2)
    love.graphics.setColor(1, 1, 1, 1)

    cursor_y = cursor_y + (button_height + margin)
  end
end

function DrawCategoryButton()

  local now = false
  local last = false

  local button_width = ww * (1/5) + 3
  local button_height = 55

  local margin = 25.5 
  --local total_height = (button_height + margin) * #categoryButton
  local cursor_y = 0

  for i, button in ipairs(categoryButton) do
    button.last = button.now
    local bx = margin/2 
    local by = 4*margin + 3*button_height + cursor_y
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
    love.graphics.print(button.text, bx + margin/2, by + margin/2 , 0, 2, 2)
    love.graphics.setColor(1, 1, 1, 1)

    cursor_y = cursor_y + (button_height + margin)
  end
end

function DrawPieceButton(category)

  local now = false
  local last = false

  local margin = 0
  local cursor_y = 0

  local button_width = ww * (1/5)
  local button_height = wh /40

  for i, button in ipairs(pieceButton) do
    button.last = button.now
    local bx = 15
    local by = 0 + cursor_y
    local color = {0.4, 0.4, 0.5, 1}
    local mx , my = love.mouse.getPosition()
    local hot = mx > bx  and mx < bx + button_width and my > by and my < by + button_height

    if button.text == "Exit" or (button.category ~= nil and button.category == category and button.camp == currentSide) then
      if hot then
        color = {0.8,0.8,1,1}
      end
      
      if button.text ~= "Exit" and button.price > getCurrentCredit() then
        color = {0,0,0,1}
      end
      
      for j, piece in ipairs(pieceGridTable) do
        if piece.category == CATEGORY_HERO then
          if button.text == piece.name then
            color = {0,0,0,1}
          end
        end
      end
      
      for m, piece in ipairs(pieceGridTable) do
        if piece.name == 'Light Mine' or piece.name == 'Dark Mine' or piece.name == 'Light Outposte' or piece.name == 'Dark Outposte' then
          if piece.price > getCurrentCredit() then
            if button.text == piece.name then
              color = {0,0,0,1}
            end
          end
        end
      end
      
      if button.text == "Light Mine" then 
        if nbLightMine >= nbMineAllowed then
          color = {0,0,0,1}
        end
      elseif button.text == "Dark Mine" then 
        if nbDarkMine >= nbMineAllowed then 
          color = {0,0,0,1}
        end
      end
      
      for d, piece in ipairs(jawaTable) do
        local name = piece.name
        if piece.name == button.text then
          color = {0,0,0,1}
        end
      end
      
      button.now = love.mouse.isDown(1)
      if button.now and not button.last and hot and timerButton > timeOverButton then
        button.fn()
      end

      love.graphics.setColor(unpack(color))
      love.graphics.rectangle("fill", bx, by, button_width, button_height)
      
      love.graphics.setColor(1, 1, 0, 1)

      love.graphics.print(button.text, bx, by , 0, 2, 2)
      love.graphics.setColor(1, 1, 1, 1)

      cursor_y = cursor_y + (button_height + margin)
    end
  end
end
function DrawPieceSpecialButton() 
  local now = false
  local last = false
  
  local margin = 30
  local button_width = ww * (1/5.25)
  local button_height = 50
  local cursor_y = 0
  
  for i, button in ipairs(pieceSpecialButton) do
    button.last = button.now
    local bx =  width - (button_width + 4/5*margin)
    local by = 14 *margin + height/2 - margin/2
    local color = {0.4, 0.4, 0.5, 1}
    local mx , my = love.mouse.getPosition()
    local hot = mx > bx  and mx < bx + button_width and my > by and my < by + button_height

    if hot then
      color = {0.8,0.8,1,1}
    end
    
    button.now = love.mouse.isDown(1)
    if button.now and not button.last and hot and timerButton > timeOverButton then
      button.fn(param1, param2 , param3 , param4)
    end

    love.graphics.setColor(unpack(color))
    love.graphics.rectangle("fill", bx, by, button_width, button_height)
      
    love.graphics.setColor(1, 1, 0, 1)

    love.graphics.print(button.text, bx, by , 0, 2, 2)
    love.graphics.setColor(1, 1, 1, 1)

    cursor_y = cursor_y + (button_height + margin)
  end
end
function DrawSettings()
  local mx , my = love.mouse.getPosition() 
  local margin = 30
  local ligne = 200
  local rectangle_w = ww/5
  local rectangle_h = 60
  local hot = mx > (2*margin + rectangle_w)  and mx < (2*margin + rectangle_w) + rectangle_w and my > (2*ligne - margin/2) and my < (2*ligne - margin/2) + rectangle_h
  local hot2 = mx > (2*margin + rectangle_w)  and mx < (2*margin + rectangle_w) + rectangle_w and my > (ligne - margin/2) and my < (ligne - margin/2) + rectangle_h
  local hot3 = mx > (2*margin + rectangle_w)  and mx < (2*margin + rectangle_w) + rectangle_w/2 and my > (3*ligne - margin/2) and my < (3*ligne - margin/2) + rectangle_h
  local cursor_w = volumeMusic * rectangle_w
  local cursor_w2 = volumeEffects * rectangle_w
  
  if hot == true and love.mouse.isDown(1) then
    volumeMusic = (mx - (2*margin + rectangle_w))/rectangle_w
    if volumeMusic > 1 then
      volumeMusic = 1
    elseif volumeMusic < 0 then
      volumeMusic = 0
    end
  end
  
  if hot2 == true and love.mouse.isDown(1) then
    volumeEffects = (mx - (2*margin + rectangle_w))/rectangle_w
    if volumeEffects > 1 then
      volumeEffects = 1
    elseif volumeEffects < 0 then
      volumeEffects = 0
    end
  end
  
  if hot3 == true and love.mouse.isDown(1) and settingTimer == false then
    if drawHelpMessage == true and settingTimer == false then
      drawHelpMessage = false
      settingTimer = true
    elseif drawHelpMessage == false and settingTimer == false then
      drawHelpMessage = true
      settingTimer = true
    end 
  end
  
  --bb8
  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(bb8.img, ww - (bb8.img:getWidth() + margin), wh - (bb8.img:getHeight() + margin))
  
  --echap
  love.graphics.setColor(1,1,0,1)
  love.graphics.print("Press escape to exit.", margin, margin/2, 0, 1.5, 1.5)
  --effects
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", margin, ligne - margin/2, rectangle_w, rectangle_h)
  love.graphics.setColor(0,1,0,1)
  love.graphics.rectangle("line", margin, ligne - margin/2, rectangle_w, rectangle_h)
  love.graphics.setColor(1,1,0,1)
  love.graphics.print("Effects :", 2*margin, ligne, 0, 2, 2)
  --music
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", margin, 2*ligne - margin/2, rectangle_w, rectangle_h)
  love.graphics.setColor(0,1,0,1)
  love.graphics.rectangle("line", margin, 2*ligne - margin/2, rectangle_w, rectangle_h)
  love.graphics.setColor(1,1,0,1)
  love.graphics.print("Music :", 2*margin, 2*ligne, 0, 2, 2)
  --help
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", margin, 3*ligne - margin/2, rectangle_w, rectangle_h)
  love.graphics.setColor(0,1,0,1)
  love.graphics.rectangle("line", margin, 3*ligne - margin/2, rectangle_w, rectangle_h)
  love.graphics.setColor(1,1,0,1)
  love.graphics.print("Show help message :", 2*margin, 3*ligne, 0, 2, 2)
  
  --cursor effects
  love.graphics.setColor(1,1,0)
  love.graphics.rectangle("fill", 2*margin + rectangle_w, ligne - margin/2, cursor_w2, rectangle_h)
  love.graphics.setColor(0,1,0,1)
  love.graphics.rectangle("line", 2*margin + rectangle_w, ligne - margin/2, rectangle_w, rectangle_h)
  --cursor music
  love.graphics.setColor(1,1,0)
  love.graphics.rectangle("fill", 2*margin + rectangle_w, 2*ligne - margin/2, cursor_w, rectangle_h)
  love.graphics.setColor(0,1,0,1)
  love.graphics.rectangle("line", 2*margin + rectangle_w, 2*ligne - margin/2, rectangle_w, rectangle_h)
  
  --button help
  if drawHelpMessage == true then
    love.graphics.setColor(1,1,0)
  else
    love.graphics.setColor(0,0,0)
  end
  love.graphics.rectangle("fill", 2*margin + rectangle_w, 3*ligne - margin/2, rectangle_w/2, rectangle_h)
  love.graphics.setColor(0,1,0,1)
  love.graphics.rectangle("line", 2*margin + rectangle_w, 3*ligne - margin/2, rectangle_w/2, rectangle_h)
  
end
function DrawJediWin()
  love.graphics.setColor(1,1,1)
  love.graphics.draw(jediWin_img, ww - jediWin_img:getWidth())
  love.graphics.draw(txtJediWin_img)
end
function DrawSithWin()
  love.graphics.setColor(1,1,1)
  love.graphics.draw(sithWin_img)
  love.graphics.draw(txtSithWin_img, ww - txtSithWin_img:getWidth())
end
function DrawJediLose()
  love.graphics.setColor(1,1,1)
  love.graphics.draw(jediLose_img)
  love.graphics.draw(txtJedi_img)
  love.graphics.draw(txtLose_img, txtJedi_img:getWidth())
end
function DrawSithLose()
  love.graphics.setColor(1,1,1)
  love.graphics.draw(sithLose_img)
  love.graphics.draw(txtSith_img)
  love.graphics.draw(txtLose_img, txtSith_img:getWidth())
end
function DrawWinInfo()
  local margin = 30
  local line = 50
  
  love.graphics.setColor(1,1,0,1)
  love.graphics.print("Winner: Player "..winnerPlayeur, margin, 5*line, 0, 2, 2)
  love.graphics.print("Game Time: "..math.floor(gameTime/60).."min", margin, 6*line, 0, 2, 2)
  love.graphics.print("Credits: "..getCurrentCredit().."$", margin, 7*line, 0, 2, 2)
  love.graphics.print("Total Credits: "..getTotalCurrentCredit().."$", margin, 8*line, 0, 2, 2)
  love.graphics.print("Total Credits spent: ".. getTotalCurrentCredit() - getCurrentCredit().."$", margin, 9*line, 0, 2, 2)
  love.graphics.print("Total Pieces: "..getCurrentTotalPieces(), margin, 10*line, 0, 2, 2)
  love.graphics.print("Total damaged inflicted: "..getCurrentDamagedInflicted(), margin, 11*line, 0, 2, 2)
  love.graphics.print("Total damaged received: "..getCurrentDamagedReceive(), margin, 12*line, 0, 2, 2)
  love.graphics.print("Total pieces lost: "..getCurrentTotalPieceLost(), margin, 13*line, 0, 2, 2)
  love.graphics.print("Total pieces kill: "..getCurrentPieceKill(), margin, 14*line, 0, 2, 2)
  love.graphics.print("Total Monster kill: "..getCurrentMonsterKill(), margin, 15*line, 0, 2, 2)
end
function DrawWinButton()
  local now = false
  local last = false

  local button_width = ww * (1/6)
  local button_height = 64

  local margin = 16 
  local total_height = (button_height + margin) * #menuButton
  local cursor_x = 0

  for i, button in ipairs(winButton) do
    button.last = button.now
    local bx =  (ww/6 - button_width/2) + cursor_x
    local by =  (wh - total_height/2)  
    local color = {0.4, 0.4, 0.5  , 1}
    local mx , my = love.mouse.getPosition()
    local hot = mx > bx  and mx < bx + button_width and my > by and my < by + button_height

    if hot then
      color = {0.8,0.8,1,1}
    end

    button.now = love.mouse.isDown(1)
    if button.now and not button.last and hot then
      button.fn()
    end

    love.graphics.setColor(unpack(color))
    love.graphics.rectangle("fill", bx, by, button_width, button_height)

    love.graphics.setColor(1, 1, 0, 1)
    love.graphics.print(button.text, bx + margin/2, by + margin/2 , 0, 2, 2)
    love.graphics.setColor(1, 1, 1, 1)

    cursor_x = cursor_x + (1/3*ww)
  end
end

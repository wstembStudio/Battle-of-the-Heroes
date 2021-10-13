

--BUY PIECE
function buyPiece(l,c)
  -- verify jawaTable
  for d, piece in ipairs(jawaTable) do
    if piece.name == currentPiece.name then
      return
    end
  end
  --verify category
  if currentPiece.category == CATEGORY_BASE or currentPiece.category == CATEGORY_DEN or currentPiece.category == CATEGORY_MONSTER then
    return
  end
  -- verify price
  if currentPiece.price == nil then
    return
  end
  -- verify side
  if currentPiece.camp ~= currentSide then
    return
  end
  -- verify zone
  if (Map[l][c] == MAP_LIGHTPIECE and currentSide == LIGHT_SIDE) or (Map[l][c] == MAP_DARKPIECE and currentSide == DARK_SIDE )then
    if currentPiece.category == CATEGORY_BUILDING then
      table.insert(markerTable, {markertype='help', nombre="You can't place a Building here,\r\nbut you can place a Troup,\r\na Heroes or a Vehicule.", timer=-4})
      failSound:stop()
      failSound:play()
      return
    else
      --ok
    end
  elseif (Map[l][c] == MAP_LIGHTBUILDING and currentSide == LIGHT_SIDE) or (Map[l][c] == MAP_DARKBUILDING and currentSide == DARK_SIDE)then
    if currentPiece.category == CATEGORY_BUILDING and currentPiece.name ~= 'Light Outposte' and currentPiece.name ~= 'Dark Outposte'  then--empéche de poser des outpostes
      --ok
    else
      table.insert(markerTable, {markertype='help', nombre="You can't place an OutPoste,\r\na Troup, a Heroes or a Vehicule here\r\nbut you can place a building.", timer=-4})
      failSound:stop()
      failSound:play()
      return
    end
  elseif Map[l][c] == MAP_OUTPOST then
    if currentPiece.name == 'Light Outposte' or currentPiece.name == 'Dark Outposte'  then--place les outposte
      found = false
      for i, poste in ipairs(outPosteTable) do
        if poste.l ==l and poste.c == c and poste.side == currentSide then
          found = true
        end
      end
      if found == false then
        -- ko
        return
      end
      --ok
    end
  else
    table.insert(markerTable, {markertype='help', nombre="You can only place\r\nan OutPoste here", timer=-4})
    failSound:stop()
    failSound:play()
    return
  end
  --verify piece is not a modified piece
  if currentPiece.hpbase == nil and currentPiece.attbase == nil and currentPiece.range_movebase == nil and currentPiece.range_attbase == nil  and currentPiece.pricebase == nil then
    --ok
  elseif currentPiece.hp == currentPiece.hpbase and currentPiece.att == currentPiece.attbase and currentPiece.range_move == currentPiece.range_movebase and currentPiece.range_att == currentPiece.range_attbase  and currentPiece.price == currentPiece.pricebase and piece.category ~= CATEGORY_BUILDING and piece.category ~= CATEGORY_HUNTER and piece.category ~= CATEGORY_JAWA then
  else
    table.insert(markerTable, {markertype='help', nombre="You can't buy a modified piece.", timer=-4})
    failSound:stop()
    failSound:play()
    return
  end
  --verify nb mine
  if currentPiece.name == "Light Mine" then 
    if nbLightMine >= nbMineAllowed then
      table.insert(markerTable, {markertype='help', nombre="You can't buy an other mine\r\nfor the moment.", timer=-4})
      failSound:stop()
      failSound:play()
      return
    end
  elseif currentPiece.name == "Dark Mine" then 
    if nbDarkMine >= nbMineAllowed then
      table.insert(markerTable, {markertype='help', nombre="You can't buy an other mine\r\nfor the moment.", timer=-4})
      failSound:stop()
      failSound:play()
      return
    end
  end
  -- verify if hero already buy
  for i,piece in ipairs(pieceGridTable) do
    if piece.category == CATEGORY_HERO then
      if piece.name == currentPiece.name then
        table.insert(markerTable, {markertype='help', nombre="You can't buy the\r\nsame heroe twice.", timer=-4})
        failSound:stop()
        failSound:play()
        return
      end
    end
  end
  -- verify if there is already one piece
  for i, piece in ipairs(pieceGridTable) do
    if piece.c == c and piece.l == l then
      table.insert(markerTable, {markertype='help', nombre="There is already one piece\r\nin this cell.", timer=-4})
      failSound:stop()
      failSound:play()
      return
    end
  end
  -- verify price
  if g_abilitySquadron == false and g_abilityTheOrder == false and g_abilityBigFleet == false and g_receiveOneVehicle == false and g_receiveOneMine == false and g_receiveTwoMine == false and g_receiveOneHero == false  and g_abilityConvoy == false and g_abilityHunterAttack == false and g_abilityJawaLooting == false then
    if getCurrentCredit() >= currentPiece.price then
      buySound:stop()
      buySound:play()
      updateCurrentCredit(-currentPiece.price)
    else
      table.insert(markerTable, {markertype='help', nombre="You don't have enought credit\r\nto buy this piece.", timer=-4})
      failSound:stop()
      failSound:play()
      return
    end
    if currentPiece.name == "Light Mine" then -- compte le nb lightmine
      nbLightMine = nbLightMine + 1
      lightMine.price = 450+250 * (nbLightMine+1)
      lightMine.special='+'.. mineCredit ..'credits'
    elseif 
    currentPiece.name == "Dark Mine" then -- compte le nb darkmine
      nbDarkMine = nbDarkMine + 1
      darkMine.price = 450+250 * (nbDarkMine+1)
      darkMine.special='+'.. mineCredit ..'credits'
    elseif 
    currentPiece.name == "Light Outposte" then -- compte le nb light outposte
      nbLightOutPoste = nbLightOutPoste + 1
      lightOutPoste.price = 4760+1000 * (nbLightOutPoste+1)
      lightOutPoste.special='+'.. outPosteCredit ..'credits'
    elseif 
    currentPiece.name == "Dark Outposte" then -- compte le nb dark outposte
      nbDarkOutPoste = nbDarkOutPoste + 1
      darkOutPoste.price = 4760+1000 * (nbDarkOutPoste+1)
      darkOutPoste.special='+'.. outPosteCredit ..'credits'
    end
  end
  if currentPiece.camp == DARK_SIDE then
    darkTotalPieces = darkTotalPieces + 1
  elseif currentPiece.camp == LIGHT_SIDE then
    lightTotalPieces = lightTotalPieces + 1
  end
  -- create a new piece and put it in the table
  piece = {}
  piece.l = l
  piece.c = c
  piece.img = currentPiece.img
  piece.name = currentPiece.name
  piece.rank = currentPiece.rank
  piece.camp = currentPiece.camp
  piece.img = currentPiece.img
  piece.att = currentPiece.att
  piece.attbase = currentPiece.att
  piece.range_att = currentPiece.range_att
  piece.range_attbase = currentPiece.range_att
  piece.hp = currentPiece.hp
  piece.hpbase = currentPiece.hp
  piece.roundbase = currentPiece.round
  piece.range_move = currentPiece.range_move
  piece.range_movebase = currentPiece.range_move
  piece.moves = currentPiece.range_move
  piece.price = currentPiece.price
  piece.pricebase = currentPiece.price
  piece.round = currentPiece.round
  piece.special = currentPiece.special
  piece.category = currentPiece.category
  piece.fn = currentPiece.fn
  piece.immortal = 0
  piece.frozen = false
  piece.moreAtt = false
  piece.param1 = currentPiece.param1
  piece.param2 = currentPiece.param2
  piece.param3 = currentPiece.param3
  piece.param4 = currentPiece.param4
  piece.param5 = currentPiece.param5
  piece.param6 = currentPiece.param6
  piece.param7 = currentPiece.param7
  table.insert(pieceGridTable, piece)
  return piece
end
--MOVE PIECE
function movePiece(l,c)
  if stepMove == 0 then -- 1er click
    for i, piece in ipairs(pieceGridTable) do
      if piece.c == c and piece.l == l then
        selectedPiece = piece
        -- verify if range_moves = 0
        if selectedPiece.range_moves == 0 then
          return
        else
          if selectedPiece.moves == 0 then
            if selectedPiece.category ~= CATEGORY_BASE and selectedPiece.category ~= CATEGORY_DEN then
              table.insert(markerTable, {markertype='help', nombre="This piece can't move, or\r\nyou need to wait the next\r\nround to move it", timer=-4})
            end
            failSound:stop()
            failSound:play()
            return
          end
        end
        -- verify if good side 
        if (currentSide == LIGHT_SIDE and selectedPiece.camp == LIGHT_SIDE) or (currentSide == DARK_SIDE and selectedPiece.camp == DARK_SIDE) then
          if selectedPiece.frozen == true then
            table.insert(markerTable, {markertype='help', nombre="This piece is frozen\r\nyou can't move it.", timer=-4})
            failSound:stop()
            failSound:play()
            return
          end
          -- verify if it's not a building, base,
          if selectedPiece.category ~= CATEGORY_BUILDING and selectedPiece.category ~= CATEGORY_BASE then
            stepMove = 1
            drawArrow = true
          end
        end
      end
    end
  elseif stepMove == 1 then --2eme click
    if selectedPiece~= nil and selectedPiece.img ~= nil then
      if selectedPiece.c ~= c and selectedPiece.l ~= l then
        return
      end
      -- verify range_move
      nbrmoves = math.abs(selectedPiece.c - c) + math.abs(selectedPiece.l - l)
      if (nbrmoves) > selectedPiece.range_move then
        table.insert(markerTable, {markertype='help', nombre="You can't move so far.", timer=-4})
        failSound:stop()
        failSound:play()
        return
      end
      --verify there is nothing between start and end
      if selectedPiece.c < c then -- horizontal/right
        local i = selectedPiece.c + 1
        while i <= c do
          for j, piece in ipairs(pieceGridTable) do
            if piece.c == i  and piece.l == l then
              if piece.category == CATEGORY_WATER and selectedPiece.rank == RANK_SHIP or piece.category == CATEGORY_PLAGE then
                --possible
              else
                table.insert(markerTable, {markertype='help', nombre="You can't move over the others\r\npieces, the den, and you can't cross\r\nthe river without control\r\na Ship.", timer=-4})
                failSound:stop()
                failSound:play()
                return --impossible 
              end
            end
          end
          i = i + 1
        end 
      elseif selectedPiece.c > c then -- horizontal/left
        local i = selectedPiece.c - 1
        while i >= c do
          for j, piece in ipairs(pieceGridTable) do
            if piece.c == i  and piece.l == l then
              if piece.category == CATEGORY_WATER and selectedPiece.rank == RANK_SHIP or piece.category == CATEGORY_PLAGE then
                --possible
              else
                table.insert(markerTable, {markertype='help', nombre="You can't move over the others\r\npieces, the den, and you can't cross\r\nthe river without control\r\na Ship.", timer=-4})
                failSound:stop()
                failSound:play()
                return --impossible 
              end
            end
          end
          i = i - 1
        end
      elseif selectedPiece.l < l then -- -- vertical/down
        local i = selectedPiece.l + 1
        while i <= l do
          for j, piece in ipairs(pieceGridTable) do
            if piece.c == c  and piece.l == i then
              if piece.category == CATEGORY_WATER and selectedPiece.rank == RANK_SHIP or piece.category == CATEGORY_PLAGE then
                --possible
              else
                table.insert(markerTable, {markertype='help', nombre="You can't move over the others\r\npieces, the den, and you can't cross\r\nthe river without control\r\na Ship.", timer=-4})
                failSound:stop()
                failSound:play()
                return --impossible 
              end
            end
          end
          i = i + 1
        end 
      elseif selectedPiece.l > l then -- vertical/up
        local i = selectedPiece.l - 1
        while i >= l do
          for j, piece in ipairs(pieceGridTable) do
            if piece.c == c  and piece.l == i then
              if piece.category == CATEGORY_WATER and selectedPiece.rank == RANK_SHIP or piece.category == CATEGORY_PLAGE then
                --possible
              else
                table.insert(markerTable, {markertype='help', nombre="You can't move over the others\r\npieces, the den, and you can't cross\r\nthe river without control\r\na Ship.", timer=-4})
                failSound:stop()
                failSound:play()
                return --impossible 
              end
            end
          end
          i = i - 1
        end 
      end
      -- verify if nbrmoves
      if (selectedPiece.moves - nbrmoves) < 0 then
        return
      end
      selectedPiece.moves = selectedPiece.moves - nbrmoves

      -- ok
      selectedPiece.c = c
      selectedPiece.l = l
      stepMove = 0
      drawArrow = false

      if Map[l][c] == MAP_OUTPOST then

        found=false
        for i, poste in ipairs(outPosteTable) do
          if poste.l ==l and poste.c == c then
            poste.side = currentSide
            found=true
          end
        end
        if found == false then
          poste = {}
          poste.l = l
          poste.c = c
          poste.side = currentSide
          table.insert(outPosteTable, poste)
        end
      end
    end
  end
end
--SHOOT PIECE
function shootPiece(l,c)
  local mx , my = love.mouse.getPosition()
  if stepShoot == 0 then -- 1er click
    for i, piece in ipairs(pieceGridTable) do
      if piece.c == c and piece.l == l then
        selectedPiece = piece
        -- verify if good side 
        if (currentSide == LIGHT_SIDE and selectedPiece.camp == LIGHT_SIDE) or (currentSide == DARK_SIDE and selectedPiece.camp == DARK_SIDE) then
          -- verify if range_att ~= nil
          if selectedPiece.range_att ~= 0 then
            -- verift if shoot = 0
            if selectedPiece.category ~= CATEGORY_BASE then
              if selectedPiece.shoot ~= nil and selectedPiece.shoot > 0 then
                stepShoot = 1
                drawTarget = true
              end
            end
          end
        end
      end
    end
  elseif stepShoot == 1 then --2eme click
    if selectedPiece.img ~= nil then

      -- verify if den 
      if Map[l][c] == MAP_DEN then
        table.insert(markerTable, {markertype='help', nombre="You can't shoot the den.", timer=-4})
        failSound:stop()
        failSound:play()
        return
      end

      -- find target piece
      targetPiece = nil
      for i, piece in ipairs(pieceGridTable) do 
        if piece.l == l and piece.c == c then
          targetPiece = piece
        end
      end

      --verify if is nil
      if targetPiece == nil then
        love.mouse.setVisible( true )
        drawTarget = false
        selectedPiece = nil
        stepShoot = 0
        return
      end

      -- verify if ennemie or allie
      if selectedPiece.camp ==  targetPiece.camp then
        table.insert(markerTable, {markertype='help', nombre="You can't shoot your ally.", timer=-4})
        failSound:stop()
        failSound:play()
        return
      end

      -- verify range_att
      if (math.abs(selectedPiece.c - c) + math.abs(selectedPiece.l - l)) > selectedPiece.range_att then
        table.insert(markerTable, {markertype='help', nombre="This piece is so far from you,\r\nyou can't shoot it.", timer=-4})
        failSound:stop()
        failSound:play()
        return
      end

      -- verify heroImortal
      if targetPiece ~= nil and targetPiece.immortal ~= nil then
        if targetPiece.immortal > 0 then
          table.insert(markerTable, {markertype='help', nombre="You can't shoot immortal piece.", timer=-4})
          failSound:stop()
          failSound:play()
          return
        end
      end

      -- update hp
      if targetPiece.hp == nil then
        return
      else
        --sound
        if (selectedPiece.category == CATEGORY_VEHICLE and selectedPiece.rank ~= RANK_SHIP) or selectedPiece.rank ~= RANK_JAWA then
          vehicleShootSound:stop()
          vehicleShootSound:play()

        elseif selectedPiece.category == CATEGORY_TROUP then
          if selectedPiece.rank == RANK_JEDI or selectedPiece.rank == RANK_SITH then
            lightSaberSound:stop()
            lightSaberSound:play()
          elseif selectedPiece.rank == RANK_DROID or selectedPiece.rank == RANK_CLONE_TROOPER or selectedPiece.rank == RANK_PADME_GUARD then
            troupShootSound:stop()
            troupShootSound:play()
          elseif selectedPiece.rank == RANK_SENAT_GUARD or selectedPiece.rank == RANK_GRIEVOUS_GYARD or selectedPiece.rank == RANK_ROYAL_GUARD or selectedPiece.rank == RANK_REN_KNIGHT or selectedPiece.rank == RANK_PRETORIAN_GUARD or selectedPiece.rank == RANK_WOOKIE or selectedPiece.rank == RANK_EWOK or selectedPiece.rank == RANK_GUNGAN then
            swordSound:stop()
            swordSound:play()
          end

        elseif selectedPiece.category == CATEGORY_BUILDING or selectedPiece.rank == RANK_SHIP then
          building_shipShootSound:stop()
          building_shipShootSound:play()

        elseif selectedPiece.category == CATEGORY_HERO or selectedPiece.category == CATEGORY_HUNTER then
          if selectedPiece.rank == RANK_GRANDMASTER_JEDI or selectedPiece.rank == RANK_COUNCIL_JEDI or selectedPiece.rank == RANK_MASTER_JEDI or selectedPiece.rank == RANK_JEDI or selectedPiece.rank == RANK_DARK_SITH or selectedPiece.rank == RANK_EMPEROR_SITH or selectedPiece.rank == RANK_EMPEROR or selectedPiece.rank == RANK_SUPREMELEADER or selectedPiece.rank == RANK_CIS_COMMANDER or selectedPiece.rank == RANK_INQUISITORIOUS then
            lightSaberSound:stop()
            lightSaberSound:play()
          else
            heroShootSound:stop()
            heroShootSound:play()
          end
        end
        targetPiece.hp = targetPiece.hp - selectedPiece.att
        if targetPiece.category ~= nil then
          if targetPiece.category == CATEGORY_MONSTER then
            updateCurrentDamagedInflictedMonster(selectedPiece.att)
          else
            updateCurrentDamagedInflicted(selectedPiece.att)
          end
        end
        if selectedPiece.category == CATEGORY_HUNTER then
          if targetPiece.hp <= 0 and targetPiece.category ~= CATEGORY_BASE and targetPiece.category ~= CATEGORY_MONSTER then
            updateCurrentCredit(targetPiece.price)
            updateCurrentTotalCredit(targetPiece.price)
          end
        end
        if selectedPiece.category == CATEGORY_JAWA then
          if targetPiece.hp <= 0 and targetPiece.category ~= CATEGORY_BASE and targetPiece.category ~= CATEGORY_MONSTER then
            table.insert(jawaTable,{name =targetPiece.name})
          end
        end
      
        table.insert(markerTable, {markertype='hit', l=targetPiece.l, c=targetPiece.c, nombre=selectedPiece.att, timer=0})

        stepShoot=0
        drawTarget = false
        selectedPiece.shoot = selectedPiece.shoot - 1
        return
      end
    end
  end
end
--DRAW PIECE
function DrawPiece()
  for i, piece in ipairs(pieceGridTable) do
    if piece.category == CATEGORY_MONSTER and Map[piece.l][piece.c] == MAP_DEN then
      -- ne pas dessiner
    else
      local h = Grid.cellSize-1
      local w = h
      scaleX = w / piece.img:getWidth()
      scaleY = h / piece.img:getHeight()
      scale = math.min(scaleX,scaleY)
      love.graphics.setColor( 1,1,1,100)
      local x, y = getXY(piece.l, piece.c)
      if Map[piece.l][piece.c] ~= MAP_OUTPOST then
        if piece.category == CATEGORY_HERO or piece.category == CATEGORY_TROUP or  piece.category == CATEGORY_VEHICLE or piece.category == CATEGORY_MONSTER or piece.category == CATEGORY_BUILDING or piece.category == CATEGORY_BASE or piece.category == CATEGORY_HUNTER or piece.category == CATEGORY_JAWA then
          if piece == currentPiece then
            love.graphics.setColor(1,69/255,0,1)
            love.graphics.rectangle("fill", x, y, w-1, w-1)
          elseif piece.camp == DARK_SIDE then
            love.graphics.setColor(139/255,0,0,1)
            love.graphics.rectangle("fill", x, y, w-1, w-1)
          elseif piece.camp == LIGHT_SIDE then
            love.graphics.setColor(30/255,144/255,1)
            love.graphics.rectangle("fill", x, y, w-1, w-1)
          end
        end
      end
      love.graphics.setColor(1,1,1,1)
      love.graphics.draw(piece.img, x + w/2, y + h/2, 0, scale, scale,  piece.img:getWidth()/2, piece.img:getHeight()/2)
      love.graphics.setColor(0,0,0)
      if piece.hp ~= nil and piece.hpbase ~= nil then
        local life = piece.hp / piece.hpbase * h
        local lifeHeight = 4
        local lifeWidth = h
        local color
        if 0.775 * h < life and life <= h then
          color = {0,128/255,0,1}--vert foncé
        elseif 0.55 * h < life and life <= 0.775 * h then
          color = {0,1,0,1}--vert clair
        elseif 0.325 * h < life and life <= 0.55 * h then
          color = {1,1,0,1}--jaune
        elseif 0.10 * h < life and life <= 0.325 * h then
          color = {1,69/255,0,1}--orange
        elseif 0 <= life and life <= 0.10 * h then
          color = {1,0,0,1}--rouge
        end
        if life > h then
          color = {0,128/255,0,1}--vert foncé
          life = h
        end
        if life >= 0 then
          love.graphics.setColor(unpack(color))
          love.graphics.rectangle("fill", x - 0.5, y + lifeWidth - lifeHeight, life, lifeHeight)
          love.graphics.setColor(0,0,0)
          love.graphics.rectangle("line", x - 0.5, y + lifeWidth - lifeHeight, life, lifeHeight)
        end
        if piece == currentPiece and life >= 0 then
          local coef = (ww*1/5) / h
          local x1 = ww - (ww*(1/5) + 15) 
          local y1 = 10 + wh/2 - lifeHeight*coef
          love.graphics.setColor(unpack(color))
          love.graphics.rectangle("fill",x1 ,y1 ,life*coef, lifeHeight*coef)
          if currentSide == LIGHT_SIDE then
            love.graphics.setColor(30/255,144/255,1)
          else
            love.graphics.setColor(139/255,0,0)
          end
          love.graphics.rectangle("line",x1 ,y1 , ww*(1/5), lifeHeight*coef)
        end
      end
      love.graphics.setColor(1,1,1,1)
      local imgCount = -1
      local shift = greenCross.img:getWidth()*0.025
      local shift2 = greenCross.img:getWidth()*0.1
      local x2 = ww - shift2
      local y2 = 0
      if piece ~= nil and piece.hp ~= nil and piece.hpbase ~= nil then
        if piece.hp > piece.hpbase then
          imgCount = imgCount + 1
          love.graphics.draw(greenCross.img, x, y+ imgCount*shift, 0, 0.025, 0.025)
          if piece == currentPiece then
            love.graphics.draw(greenCross.img, x2 - imgCount*shift2 , y2, 0, 0.1, 0.1)
          end
        end
      end
      if piece ~= nil and piece.att ~= nil and piece.attbase ~= nil then
        if piece.att > piece.attbase then
          imgCount = imgCount + 1
          love.graphics.draw(redCross.img, x, y+ imgCount*shift, 0, 0.025, 0.025)
          if piece == currentPiece then
            love.graphics.draw(redCross.img, x2 - imgCount*shift2 , y2, 0, 0.1, 0.1)
          end
        end
      end
      if piece ~= nil and piece.immortal ~= nil then 
        if piece.immortal > 0 then
          imgCount = imgCount + 1
          love.graphics.draw(shield_img, x, y+ imgCount*shift, 0, 0.025, 0.025)
          if piece == currentPiece then
            love.graphics.draw(shield_img, x2 - imgCount*shift2 , y2, 0, 0.1, 0.1)
          end
        end
      end
      if piece ~= nil and piece.frozen ~= nil then 
        if piece.frozen == true then
          imgCount = imgCount + 1
          love.graphics.draw(flake.img, x, y+ imgCount*shift, 0, 0.025, 0.025) 
          if piece == currentPiece then
            love.graphics.draw(flake.img, x2 - imgCount*shift2 , y2, 0, 0.1, 0.1)
          end
        end
      end
      if piece ~= nil and piece.shoot ~= nil and piece.shoot > 0 and piece.att ~= nil and piece.att > 0 then
        if piece.camp == currentSide and currentStep == STEP_SHOOT then
          imgCount = imgCount + 1
          love.graphics.draw(sword_img, x, y+ imgCount*shift, 0, 0.025, 0.025)
          if piece == currentPiece then
            love.graphics.draw(sword_img, x2 - imgCount*shift2 , y2, 0, 0.1, 0.1)
          end
        end 
      end
      if piece ~= nil and piece.moves ~= nil and piece.moves > 0 and piece.range_move ~= nil and piece.range_move > 0 then
        if piece.camp == currentSide and currentStep == STEP_MOVE then
          imgCount = imgCount + 1
          love.graphics.draw(arrowPiece_img, x, y+ imgCount*shift, 0, 0.025, 0.025)
          if piece == currentPiece then
            love.graphics.draw(arrowPiece_img, x2 - imgCount*shift2 , y2, 0, 0.1, 0.1)
          end
        end 
      end
      if piece ~= nil and piece.round ~= nil and piece.round == 0 then
        if piece.camp == currentSide then
          imgCount = imgCount + 1
          love.graphics.draw(fire_img, x, y+ imgCount*shift, 0, 0.025, 0.025)
          if piece == currentPiece then
            love.graphics.draw(fire_img, x2 - imgCount*shift2 , y2, 0, 0.1, 0.1)
          end
        end 
      end
    end
  end -- end for
end
function DrawPieceInfo()
  local ww = love.graphics.getWidth()
  local wh = love.graphics.getHeight()
  local margin = 30
  local button_width = ww * (1/5)
  local button_height = 50

  --IMAGES PERSONNAGES
  if currentPiece.img ~= nil and currentPiece.category ~= CATEGORY_WATER and currentPiece.category ~= CATEGORY_PLAGE then
    love.graphics.setColor(1,1,1,1)
    love.graphics.draw(currentPiece.img, ww - (button_width/2 + margin/2), margin + 0.5*(wh/2 - 3/2*margin), 0, 0.7, 0.7, currentPiece.img:getWidth()/2, currentPiece.img:getHeight()/2)
  end
  --INFOS PERSONNAGES
  if currentPiece.img ~= nil and currentPiece.range_move ~= nil then
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", width - (button_width + margin/2), margin + height/2 - margin/2 , button_width, height/2 - 3/2*margin)
    if currentSide == LIGHT_SIDE then
      love.graphics.setColor(30/255,144/255,1)
    else
      love.graphics.setColor(139/255,0,0)
    end
    love.graphics.rectangle("line", width - (button_width + margin/2), margin + height/2 - margin/2 , button_width, height/2 - 3/2*margin)
    love.graphics.setColor(1, 1, 0, 100)

    if currentPiece.name ~= nil then
      love.graphics.print(currentPiece.name ,width - (button_width + margin/3),  margin + height/2, 0, 2,2)
    end
    if currentPiece.camp ~= nil then
      love.graphics.print(currentPiece.camp ,width - (button_width + margin/3),  3*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentPiece.rank ~= nil then
      love.graphics.print(currentPiece.rank ,width - (button_width + margin/3),  4*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentPiece.hp ~= nil then
      love.graphics.print("Hp:".." "..currentPiece.hp ,width - (button_width + margin/3),  5*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentPiece.att ~= nil then
      love.graphics.print("Att:".." "..currentPiece.att ,width - (button_width + margin/3),  6*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentPiece.range_att ~= nil then
      love.graphics.print("RangeAtt:".." "..currentPiece.range_att,width - (button_width + margin/3),  7*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentPiece.range_move ~= nil then
      love.graphics.print("RangeMove:".." "..currentPiece.range_move ,width - (button_width + margin/3),  8*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentPiece.round ~= nil then
      love.graphics.print("Rounds:".." "..currentPiece.round,width - (button_width + margin/3),  9*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentPiece.special ~= nil then
      love.graphics.print("Special:".." "..currentPiece.special,width - (button_width + margin/3),  10*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    if currentPiece.price ~= nil and currentPiece.price ~= 0 then
      love.graphics.print("Price:".." "..currentPiece.price,width - (button_width + margin/3),  12*margin + height/2 - margin/2 , 0, 1.5,1.5)
    end
    --CREDIT
    love.graphics.print("Credits:"..getCurrentCredit(), ww - (button_width + margin/2),  height - button_height - margin/2, 0, 1.5,1.5)
  end

  --TIMER ROUND
  if timerRound < 10 then
    love.graphics.setColor(1,0,0,1)
  else
    love.graphics.setColor(1,1,1,1)
  end
  --Special Button
  if drawAddAbility == false then
    if currentPiece.camp == currentSide then
      if currentPiece.round == 0 then
        if currentPiece.fn ~= nil then
          DrawPieceSpecialButton()
        end
      end
    end
  end
end
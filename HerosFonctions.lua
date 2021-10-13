function initHeroeFonction()
  g_heroHp = false
  g_heroHpShots = 0

  g_heroGiveAtt = false
  g_heroGiveAttShots = 0

  g_heroSuicideShoot = false
  g_heroSuicideShootShots = 0

  g_heroShoot2 = false
  g_heroShoot2AttShoots = 0
  g_heroShoot2HpShoots = 0

  g_heroFreeze = false
  g_heroFreezeShots = 0

  g_heroMax = false
  g_heroMaxAttShoots = 0
  g_heroMaxHpShoots = 0
  g_heroMaxFreezeShoots = 0
end
function checkHeroeFonctionOn()
  if g_heroHp==true or g_heroGiveAtt==true or g_heroSuicideShoot==true or g_heroShoot2==true or g_heroFreeze==true or g_heroMax==true then
    return true
  end
  return false
end
function heroShoot(param1, param2 , param3)
  g_heroHp = true
  g_heroHpShots = param1
  g_heroHpAtt = param2
  g_heroHpName = param3
  if param2 < 0 then
    drawTarget = true
  else
    drawGreenCross = true
  end
end
function heroBigPrice(param1, param2 , param3)
  if currentSide == LIGHT_SIDE then
    homeOne.price = homeOne.price - param1
    if homeOne.price < param2 then
      homeOne.price = param2
    end
  elseif currentSide == DARK_SIDE then
    executorSuperStarDestroyer.price = executorSuperStarDestroyer.price - param1
    if executorSuperStarDestroyer.price < param2 then
      executorSuperStarDestroyer.price = param2
    end
  end
end
function heroLittlePrice(param1, param2 , param3)
  if currentSide == LIGHT_SIDE then
    ghost.price = ghost.price - param1
    if ghost.price < param2 then
      ghost.price = param2
    end
  elseif currentSide == DARK_SIDE then
    slave1.price = slave1.price - param1
    if slave1.price < param2 then
      slave1.price = param2
    end
  end
end
function heroSucideMoney(param1, param2 , param3, param4)
  currentPiece.hp = 0
  updateCurrentCredit(param1)
  --getCurrentTotalCredit() = getCurrentTotalCredit() + param1
end
function heroImmortal(param1, param2 , param3, param4)
  currentPiece.immortal = param1
end
function heroRangeMove(param1, param2 , param3, param4)
  currentPiece.rangeMove = param1
  currentPiece.moves = currentPiece.moves + 5
  currentPiece.range_move = currentPiece.range_move + 5
end
function heroRangeAtt(param1, param2 , param3, param4)
  currentPiece.rangeAtt = param1
  currentPiece.range_att = currentPiece.range_att + 5
end
function heroAtt(param1, param2 , param3, param4)
  currentPiece.att = currentPiece.att * param1
  if currentPiece.att > param2 then
    currentPiece.att = param2
  end
end

function heroHp(param1, param2 , param3, param4)
  currentPiece.hp = currentPiece.hp * param1
  if currentPiece.hp > param2 then
    currentPiece.hp = param2
  end
end
function heroSuicideShoot(param1, param2 , param3 , param4)
  drawTarget = true
  g_heroSuicideShoot = true
  g_heroSuicideShootShots = param1
  g_heroSuicideShootAtt = param2
  g_heroSuicideShootName = param3
end
function heroShoot2(param1, param2 , param3, param4)
  drawGreenCross = true
  drawTarget = true
  g_heroShoot2 = true
  g_heroShoot2AttShoots = param1
  g_heroShoot2HpShoots = param2
  g_heroShoot2Att = param3
  g_heroShoot2Name = param4
end
function pieceSplitAtt(param1, param2 , param3, param4)
  if currentPiece.shoot == 1 then
    currentPiece.splitAtt = param1
    g_nbSplit = param2
    currentPiece.shoot = currentPiece.shoot + param2 - 1
    currentPiece.att = currentPiece.att/param2
  end
end
function heroFreeze(param1, param2 , param3, param4)
  drawFlake = true
  g_heroFreeze = true
  g_heroFreezeShots = param1
  g_heroFreezeRound = 1
  g_heroFreezeName = param3
end
function heroGiveAtt(param1, param2 , param3 , param4)
  drawRedCross = true
  g_heroGiveAtt = true
  g_heroGiveAttShots = param1
  g_heroGiveAttAtt = param2
  g_heroGiveAttRound = 1
  g_heroGiveAttName = param4
end
function heroMax(param1, param2 , param3, param4 , param5 , param6 , param7)
  drawTarget = true
  drawGreenCross = true
  g_heroMax = true
  currentPiece.immortal = param1
  g_heroMaxAttShoots = param2
  g_heroMaxHpShoots = param3
  g_heroMaxAtt = param4
  g_heroMaxFreezeShoots = param5
  g_heroMaxFreezeRound = param6
  g_heroMaxName = param7
end
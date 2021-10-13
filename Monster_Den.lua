timerMonster = 0
timeOverMonster = 5

timerOut = 0
timeOverOut = 0
MIN_OUT = 30
MAX_OUT = 60

--MONSTER OUT
function MonsterOut()
  local numDen = 0
  local randomDen = love.math.random( 1, 4 )
  for i, piece in ipairs(pieceGridTable) do
    l = piece.l
    c = piece.c
    if piece.category == CATEGORY_MONSTER then
      numDen = numDen + 1
      if numDen == randomDen then
        if Map[l][c] == MAP_DEN then
          local monster = piece
          monster.path = love.math.random(6)
          monster.position = 1 --permet de déclencher le move pour une grotte
          return 1
        end
      end
    end
  end
  return 0
  
end
--MONSTER MOVE
function MonsterMove()
  for i, piece in ipairs(pieceGridTable) do
    if piece.category == CATEGORY_MONSTER and piece.camp == MONSTER_SIDE then
      local monster = piece
      local den = monster.den
      local path = nil
      if monster.path == 1 then
        path = getMonsterPath1(den)
      elseif monster.path == 2 then
        path = getMonsterPath2(den)
      elseif monster.path == 3 then
        path = getMonsterPath3(den)
      elseif monster.path == 4 then
        path = getMonsterPath4(den)
      elseif monster.path == 5 then
        path = getMonsterPath5(den)
      elseif monster.path == 6 then
        path = getMonsterPath6(den)
      end
      if path ~= nil and monster.position <= table.getn(path) then
        local newcell = path[monster.position]
        if newcell ~= nil then
          blocked=false
          for j, p in ipairs(pieceGridTable) do
            if p.c == newcell.c and p.l == newcell.l and (p.category == CATEGORY_TROUP or p.category == CATEGORY_HERO or p.category == CATEGORY_VEHICLE or p.category == CATEGORY_BUILDING or p.category == CATEGORY_HUNTER) then
              -- monster is blocked by p
              blocked=true
            end
          end
          if blocked == false then
            monster.c = newcell.c
            monster.l = newcell.l
            monster.position = monster.position + 1
          end
        end
      end
    end
  end
end
--MONSTER ATTACK
function MonsterAttack()
  for i, piece in ipairs(pieceGridTable) do
    if piece.category == CATEGORY_MONSTER and piece.camp == MONSTER_SIDE then
      local monster = piece
      if Map[monster.l][monster.c] ~= MAP_DEN then
        for j, piece1 in ipairs(pieceGridTable) do
          if piece1.category == CATEGORY_TROUP or piece1.category == CATEGORY_HERO or piece1.category == CATEGORY_HUNTER or piece1.category == CATEGORY_VEHICLE or piece1.category == CATEGORY_BUILDING or ( piece1.category == CATEGORY_MONSTER and piece1.camp ~= MONSTER_SIDE) then
            if (math.abs(monster.c - piece1.c) + math.abs(monster.l - piece1.l)) <= monster.range_att then
              if monster.c ~= piece1.c or  monster.l ~= piece1.l then -- le monstre ne peut pas s'auto attaquer
                monsterShootSound:stop()
                monsterShootSound:play()
                piece1.hp = piece1.hp - monster.att
                if piece1.side == DARK_SIDE then
                  darkMonsterDamage = darkMonsterDamage + monster.att
                else
                  lightMonsterDamage = lightMonsterDamage + monster.att
                end
                monsterSelectedPiece = monster
                table.insert(markerTable, {markertype='hit', l=piece1.l, c=piece1.c, nombre=monster.att, timer=0})
                break --attaque une seule piece
              end
            end
          end
        end
      end
    end
  end
end
--MONSTER PATHS
function getMonsterPath1(den)
  local pathTable = {}
  local cell1 = {}
  cell1.l = den.l + 1
  cell1.c = den.c
  pathTable[1] = cell1
  local cell2 = {}
  cell2.l = den.l + 1
  cell2.c = den.c - 1
  pathTable[2] = cell2
  local cell3 = {}
  cell3.l = den.l 
  cell3.c = den.c - 1
  pathTable[3] = cell3
  local cell4 = {}
  cell4.l = den.l - 1
  cell4.c = den.c - 1
  pathTable[4] = cell4
  local cell5 = {}
  cell5.l = den.l - 1
  cell5.c = den.c
  pathTable[5] = cell5
  local cell6 = {}
  cell6.l = den.l -1
  cell6.c = den.c + 1
  pathTable[6] = cell6
  local cell7 = {}
  cell7.l = den.l 
  cell7.c = den.c + 1
  pathTable[7] = cell7
  local cell8 = {}
  cell8.l = den.l + 1
  cell8.c = den.c + 1
  pathTable[8] = cell8
  local cell9 = {}
  cell9.l = den.l + 1
  cell9.c = den.c
  pathTable[9] = cell9
  local cell10 = {}
  cell10.l = den.l 
  cell10.c = den.c 
  pathTable[10] = cell10
  return pathTable
end
function getMonsterPath2(den)
  local pathTable = {}
  local cell1 = {}
  cell1.l = den.l + 1
  cell1.c = den.c
  pathTable[1] = cell1
  local cell2 = {}
  cell2.l = den.l + 2
  cell2.c = den.c 
  pathTable[2] = cell2
  local cell3 = {}
  cell3.l = den.l + 3
  cell3.c = den.c 
  pathTable[3] = cell3
  local cell4 = {}
  cell4.l = den.l + 2
  cell4.c = den.c 
  pathTable[4] = cell4
  local cell5 = {}
  cell5.l = den.l + 1
  cell5.c = den.c 
  pathTable[5] = cell5
  local cell6 = {}
  cell6.l = den.l 
  cell6.c = den.c 
  pathTable[6] = cell6
  return pathTable
end
function getMonsterPath3(den)
  local pathTable = {}
  local cell1 = {}
  cell1.l = den.l - 1
  cell1.c = den.c
  pathTable[1] = cell1
  local cell2 = {}
  cell2.l = den.l - 2
  cell2.c = den.c 
  pathTable[2] = cell2
  local cell3 = {}
  cell3.l = den.l - 3
  cell3.c = den.c 
  pathTable[3] = cell3
  local cell4 = {}
  cell4.l = den.l -2
  cell4.c = den.c 
  pathTable[4] = cell4
  local cell5 = {}
  cell5.l = den.l -1
  cell5.c = den.c 
  pathTable[5] = cell5
  local cell6 = {}
  cell6.l = den.l 
  cell6.c = den.c 
  pathTable[6] = cell6
  return pathTable
end
function getMonsterPath4(den)
  local pathTable = {}
  local cell1 = {}
  cell1.l = den.l
  cell1.c = den.c + 1
  pathTable[1] = cell1
  local cell2 = {}
  cell2.l = den.l
  cell2.c = den.c +2
  pathTable[2] = cell2
  local cell3 = {}
  cell3.l = den.l 
  cell3.c = den.c +1
  pathTable[3] = cell3
  local cell4 = {}
  cell4.l = den.l 
  cell4.c = den.c 
  pathTable[4] = cell4
  return pathTable
end
function getMonsterPath5(den)
  local pathTable = {}
  local cell1 = {}
  cell1.l = den.l
  cell1.c = den.c - 1
  pathTable[1] = cell1
  local cell2 = {}
  cell2.l = den.l
  cell2.c = den.c -2
  pathTable[2] = cell2
  local cell3 = {}
  cell3.l = den.l 
  cell3.c = den.c -1
  pathTable[3] = cell3
  local cell4 = {}
  cell4.l = den.l 
  cell4.c = den.c 
  pathTable[4] = cell4
  return pathTable
end
function getMonsterPath6(den)
  local pathTable = {}
  local cell1 = {}
  cell1.l = den.l - 1
  cell1.c = den.c
  pathTable[1] = cell1
  local cell2 = {}
  cell2.l = den.l - 2
  cell2.c = den.c 
  pathTable[2] = cell2
  local cell3 = {}
  cell3.l = den.l -2
  cell3.c = den.c - 1
  pathTable[3] = cell3
  local cell4 = {}
  cell4.l = den.l - 2
  cell4.c = den.c - 2
  pathTable[4] = cell4
  local cell5 = {}
  cell5.l = den.l - 1
  cell5.c = den.c -2
  pathTable[5] = cell5
  local cell6 = {}
  cell6.l = den.l 
  cell6.c = den.c -2
  pathTable[6] = cell6
  local cell7 = {}
  cell7.l = den.l +1
  cell7.c = den.c -2
  pathTable[7] = cell7
  local cell8 = {}
  cell8.l = den.l +2
  cell8.c = den.c -2
  pathTable[8] = cell8
  local cell9 = {}
  cell9.l = den.l + 2
  cell9.c = den.c -1
  pathTable[9] = cell9
  local cell10 = {}
  cell10.l = den.l +2
  cell10.c = den.c 
  pathTable[10] = cell10
  local cell11 = {}
  cell11.l = den.l +2
  cell11.c = den.c +1
  pathTable[11] = cell11
  local cell12 = {}
  cell12.l = den.l +2
  cell12.c = den.c +2
  pathTable[12] = cell12
  local cell13 = {}
  cell13.l = den.l +1
  cell13.c = den.c +2
  pathTable[13] = cell13
  local cell14 = {}
  cell14.l = den.l 
  cell14.c = den.c +2
  pathTable[14] = cell14
  local cell15 = {}
  cell15.l = den.l -1
  cell15.c = den.c +2
  pathTable[15] = cell15
  local cell16 = {}
  cell16.l = den.l -2
  cell16.c = den.c +2
  pathTable[16] = cell16
  local cell17 = {}
  cell17.l = den.l -2
  cell17.c = den.c +1
  pathTable[17] = cell17
  local cell18 = {}
  cell18.l = den.l -2
  cell18.c = den.c 
  pathTable[18] = cell18
  local cell19 = {}
  cell19.l = den.l -1
  cell19.c = den.c 
  pathTable[19] = cell19
  local cell20 = {}
  cell20.l = den.l 
  cell20.c = den.c 
  pathTable[20] = cell20
  return pathTable
end
--CREATE MONSTER
function createMonster(den)
  local monster = {}
  --en face de la grotte ==> A CHANGER
  monster.den = den
  monster.c = den.c
  monster.l = den.l
  monster.position = 999 -- pour ne pas bouger au démarrage
  -- TODO monstre.den monster position
  local m = monsterTable[den.monster_rank]
  monster.name = m.name
  monster.img = m.img
  monster.att = m.att
  monster.rank = m.rank
  monster.camp = m.camp
  monster.range_att = m.range_att
  monster.hp = m.hp
  monster.hpbase = m.hpbase
  monster.range_move = m.range_move
  monster.price = m.price
  monster.round = m.round
  monster.special = m.special
  monster.category = m.category
  monster.moves = m.range_move
  return monster
end
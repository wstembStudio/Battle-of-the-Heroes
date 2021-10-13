
--MAP_NUMBER
MAP_GROUND = 0
MAP_LIGHTPIECE = 1
MAP_DARKPIECE = 2
MAP_LIGHTBUILDING = 3
MAP_DARKBUILDING = 4
MAP_LIGHTBASE = 5
MAP_DARKBASE = 6
MAP_DEN = 8
MAP_OUTPOST = 9
PLAGE_RIGHT = 10
PLAGE_LEFT = 11
PLAGE_MIDDLE = 12
PLAGE_PLANT = 13
PLAGE_ROCK = 14
PLAGE_SKULL = 15

Map = { 
  { 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4},  
  { 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}, 
  { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  { 0,13, 0, 0, 0, 0, 0, 0,15, 0, 0, 0, 0,13, 0, 0, 0, 0, 0,14, 0}, 
  { 0,13,14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  { 0, 0, 0, 0,13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  { 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0,14, 0, 0, 0}, 
  { 0, 0, 0, 0, 0, 0, 0, 0,13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  { 0, 0, 0, 0, 0, 0, 0, 0, 0,14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  { 0, 0, 0, 0, 0,13,13, 0, 0, 0, 0, 0, 0,13, 0, 0, 0, 0, 0, 0,13}, 
  {10,13, 9, 0,11,12,12,10, 0, 0, 9, 0,13,11,12,12,10, 0, 9,13,11}, 
  {13, 0, 0, 0, 0, 0,13,13, 0, 0, 0, 0, 0, 0,13,13,13, 0, 0, 0, 0}, 
  { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  { 0, 0, 0, 0, 0, 0, 0, 0,14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  { 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0,14, 0, 0}, 
  { 0,13, 0, 0, 0, 0, 0, 0, 0, 0, 0,13, 0, 0, 0, 0, 0,13, 0, 0, 0}, 
  { 0,14,13, 0, 0,15, 0, 0, 0, 0, 0,13,14, 0, 0, 0, 0, 0, 0, 0, 0}, 
  { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,14}, 
  { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  { 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}, 
} 

Grid = {}
Grid.width = 21
Grid.height = 21
Grid.cellSize = 0
Grid.cells = {}

local plageMiddle = {}
plageMiddle.x = 0
plageMiddle.y = 0
plageMiddle.category = CATEGORY_WATER
plageMiddle.hp = nil
plageMiddle.img = love.graphics.newImage("images/plage.png")

local plageRight = {}
plageRight.x = 0
plageRight.y = 0
plageRight.category = CATEGORY_WATER
plageRight.hp = nil
plageRight.img = love.graphics.newImage("images/plage3.png")

local plageLeft = {}
plageLeft.x = 0
plageLeft.y = 0
plageLeft.category = CATEGORY_WATER
plageLeft.hp = nil
plageLeft.img = love.graphics.newImage("images/plage2.png")

local plagePlant = {}
plagePlant.x = 0
plagePlant.y = 0
plagePlant.category = CATEGORY_PLAGE
plagePlant.hp = nil
plagePlant.img = love.graphics.newImage("images/plage4.png")

local plageRock = {}
plageRock.x = 0
plageRock.y = 0
plageRock.category = CATEGORY_PLAGE
plageRock.hp = nil
plageRock.img = love.graphics.newImage("images/plage5.JPG")

local plageSkull = {}
plageSkull.x = 0
plageSkull.y = 0
plageSkull.category = CATEGORY_PLAGE
plageSkull.hp = nil
plageSkull.img = love.graphics.newImage("images/plage6.JPG")

function InitGrid()
  local h = height / Grid.height
  Grid.cellSize = h
  Grid.offsetX = (width / 2) - (h*Grid.width) / 2
  Grid.offsetY = 0

  Grid.cells = {}
  for l=1, Grid.height do
    Grid.cells[l] = {}
    for c=1, Grid.width do 
      Grid.cells[l][c] = 0
    end
  end
end

function LoadGridPieces()
  local h = Grid.cellSize
  local w = h
  local x,y
  for l=1,Grid.height do
    Grid.cells[l] = {}
    for c=1,Grid.width do
      x = (c-1)*w
      y = (l-1)*h
      x = x + Grid.offsetX 
      y = y + Grid.offsetY 
      piece = {}
      piece.l = l
      piece.c = c
      if Map[l][c] == PLAGE_MIDDLE then
        piece.name = plageMiddle.name
        piece.img = plageMiddle.img
        piece.rank = plageMiddle.rank
        piece.camp = plageMiddle.camp
        piece.att = plageMiddle.att
        piece.range_att = plageMiddle.range_att
        piece.hp = plageMiddle.hp
        piece.range_move = plageMiddle.range_move
        piece.price = plageMiddle.price
        piece.round = plageMiddle.round
        piece.special = plageMiddle.special
        piece.category = plageMiddle.category
        table.insert(pieceGridTable, piece)
      elseif Map[l][c] == PLAGE_RIGHT then
        piece.name = plageRight.name
        piece.img = plageRight.img
        piece.rank = plageRight.rank
        piece.camp = plageRight.camp
        piece.att = plageRight.att
        piece.range_att = plageRight.range_att
        piece.hp = plageRight.hp
        piece.range_move = plageRight.range_move
        piece.price = plageRight.price
        piece.round = plageRight.round
        piece.special = plageRight.special
        piece.category = plageRight.category
        table.insert(pieceGridTable, piece)
      elseif Map[l][c] == PLAGE_LEFT then
        piece.name = plageLeft.name
        piece.img = plageLeft.img
        piece.rank = plageLeft.rank
        piece.camp = plageLeft.camp
        piece.att = plageLeft.att
        piece.range_att = plageLeft.range_att
        piece.hp = plageLeft.hp
        piece.range_move = plageLeft.range_move
        piece.price = plageLeft.price
        piece.round = plageLeft.round
        piece.special = plageLeft.special
        piece.category = plageLeft.category
        table.insert(pieceGridTable, piece)
      elseif Map[l][c] == PLAGE_PLANT then
        piece.name = plagePlant.name
        piece.img = plagePlant.img
        piece.rank = plagePlant.rank
        piece.camp = plagePlant.camp
        piece.att = plagePlant.att
        piece.range_att = plagePlant.range_att
        piece.hp = plagePlant.hp
        piece.range_move = plagePlant.range_move
        piece.price = plagePlant.price
        piece.round = plagePlant.round
        piece.special = plagePlant.special
        piece.category = plagePlant.category
        table.insert(pieceGridTable, piece)
      elseif Map[l][c] == PLAGE_ROCK then
        piece.name = plageRock.name
        piece.img = plageRock.img
        piece.rank = plageRock.rank
        piece.camp = plageRock.camp
        piece.att = plageRock.att
        piece.range_att = plageRock.range_att
        piece.hp = plageRock.hp
        piece.range_move = plageRock.range_move
        piece.price = plageRock.price
        piece.round = plageRock.round
        piece.special = plageRock.special
        piece.category = plageRock.category
        table.insert(pieceGridTable, piece)
      elseif Map[l][c] == PLAGE_SKULL then
        piece.name = plageSkull.name
        piece.img = plageSkull.img
        piece.rank = plageSkull.rank
        piece.camp = plageSkull.camp
        piece.att = plageSkull.att
        piece.range_att = plageSkull.range_att
        piece.hp = plageSkull.hp
        piece.range_move = plageSkull.range_move
        piece.price = plageSkull.price
        piece.round = plageSkull.round
        piece.special = plageSkull.special
        piece.category = plageSkull.category
        table.insert(pieceGridTable, piece)
      elseif Map[l][c] == MAP_DEN then
        piece.name = den1.name
        piece.img = den1.img
        piece.rank = den1.rank
        piece.camp = den1.camp
        piece.att = den1.att
        piece.range_att = den1.range_att
        piece.hp = den1.hp
        piece.range_move = den1.range_move
        piece.price = den1.price
        piece.round = den1.round
        piece.special = den1.special
        piece.category = den1.category
        piece.monster_rank = 1
        piece.fn = den1.fn
        table.insert(pieceGridTable, piece)
        -- CREATE MONSTER
        local den = piece
        local monster = createMonster(den)
        table.insert(pieceGridTable, monster)
      elseif Map[l][c] == MAP_LIGHTBASE then
        piece.name = lightBase.name
        piece.img = lightBase.img
        piece.rank = lightBase.rank
        piece.camp = lightBase.camp
        piece.att = lightBase.att
        piece.range_att = lightBase.range_att
        piece.hp = lightBase.hp
        piece.hpbase = lightBase.hpbase
        piece.range_move = lightBase.range_move
        piece.price = lightBase.price
        piece.round = lightBase.round
        piece.special = lightBase.special
        piece.category = lightBase.category
        piece.fn = lightBase.fn
        table.insert(pieceGridTable, piece)
      elseif Map[l][c] == MAP_DARKBASE then
        piece.name = darkBase.name
        piece.img = darkBase.img
        piece.rank = darkBase.rank
        piece.camp = darkBase.camp
        piece.att = darkBase.att
        piece.range_att = darkBase.range_att
        piece.hp = darkBase.hp
        piece.hpbase = darkBase.hpbase
        piece.range_move = darkBase.range_move
        piece.price = darkBase.price
        piece.round = darkBase.round
        piece.special = darkBase.special
        piece.category = darkBase.category
        piece.fn = darkBase.fn
        table.insert(pieceGridTable, piece)
      end
    end
  end
end

function DrawGrid()
  local h = Grid.cellSize
  local w = h
  local x,y
  love.graphics.setColor( 0,0,0)
  love.graphics.rectangle("fill", (ww - wh)/2, 0, wh, wh)
  for l=1,Grid.height do
    Grid.cells[l] = {}
    for c=1,Grid.width do
      x = (c-1)*w
      y = (l-1)*h
      x = x + Grid.offsetX 
      y = y + Grid.offsetY
      if Map[l][c] == MAP_GROUND then
        love.graphics.setColor(234/255,189/255,104/255, 1)
        love.graphics.rectangle("fill", x, y, w-1, w-1)
      elseif Map[l][c] == MAP_LIGHTPIECE then
        love.graphics.setColor(251/255,194/255,88/255, 1)
        love.graphics.rectangle("fill", x, y, w-1, w-1)
      elseif Map[l][c] == MAP_DARKPIECE then
        love.graphics.setColor(251/255,194/255,88/255, 1)
        love.graphics.rectangle("fill", x, y, w-1, w-1)
      elseif Map[l][c] == MAP_LIGHTBUILDING then
        love.graphics.setColor(245/255,222/255,179/255, 1)
        love.graphics.rectangle("fill", x, y, w-1, w-1)
      elseif Map[l][c] == MAP_DARKBUILDING then
        love.graphics.setColor(245/255,222/255,179/255, 1)
        love.graphics.rectangle("fill", x, y, w-1, w-1)
      elseif Map[l][c] == MAP_DARKBASE then
        love.graphics.setColor(0,0,0, 1)
        love.graphics.rectangle("fill", x, y, w-1, w-1)
      elseif Map[l][c] == MAP_DEN then
        love.graphics.setColor(234/255,189/255,104/255, 1)
        love.graphics.rectangle("fill", x, y, w-1, w-1)
      elseif Map[l][c] == MAP_OUTPOST then
        love.graphics.setColor(234/255,189/255,104/255, 1)
        love.graphics.rectangle("fill", x, y, w-1, w-1)
        love.graphics.setColor( 139/255,69/255,19/255, 1)
        for i, poste in ipairs(outPosteTable) do
          if poste.l ==l and poste.c == c and poste.side == LIGHT_SIDE then
            love.graphics.setColor( 30/255,144/255,1)
          elseif poste.l ==l and poste.c == c and poste.side == DARK_SIDE then
            love.graphics.setColor(139/255,0,0,1)
          end
        end
        love.graphics.circle("fill", x + w/2, y + w/2, (w-1)/2, (w-1)/2)
      end
      end
    end
end
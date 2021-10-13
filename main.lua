io.stdout:setvbuf('no')

if arg[#arg] == "-debug" then require("mobdebug").start() end

--VARIABLES

--??
pieceDead = false
buy = false
gamePause =  false
randomCard = false
drawHelpMessage = true


logoSW_size = 20

--IMAGE
shield_img = love.graphics.newImage("images/shield.jpg")
cloud_img = love.graphics.newImage("images/smoke cloud.png")
sword_img = love.graphics.newImage("images/sword.png")
fire_img = love.graphics.newImage("images/fire.jpg")
arrowPiece_img = love.graphics.newImage("images/arrow.PNG")
helpMessage_img = love.graphics.newImage("images/helpMessage.png")

--STEP    
STEP_MOVE = 1
STEP_SHOOT = 2
STEP_BUY = 3
stepMove = 0
stepShoot = 0
currentStep = STEP_MOVE

--CATEGORY
CATEGORY_HERO = "Hero"
CATEGORY_VEHICLE = "Vehicle"
CATEGORY_TROUP = "Troup"
CATEGORY_BUILDING = "Building"
CATEGORY_MONSTER = "Monster"
CATEGORY_BASE = "Base"
CATEGORY_WATER = "Water"
CATEGORY_PLAGE = "Plage"
CATEGORY_DEN = "Den"
CATEGORY_HUNTER = "Hunter"
CATEGORY_JAWA = "Jawa"


-- music
menuMusic = love.audio.newSource("music/menu.mp3", "stream") -- the "stream" tells LÖVE to stream the file from disk, good for longer music tracks
jediMusic = love.audio.newSource("music/jedi.mp3", "stream")
sithMusic = love.audio.newSource("music/sith.mp3", "stream")

switchMusicGame = false
switchMusicJedi = false
switchMusicSith = false

volumeMusic = 0.1

--effects
clickSound = love.audio.newSource("effects/Clic souris.mp3", "static")
vehicleShootSound = love.audio.newSource("effects/blaster.mp3", "static")
troupShootSound = love.audio.newSource("effects/petit blaster.mp3", "static")
building_shipShootSound = love.audio.newSource("effects/vehicle blaster.mp3", "static")
lightSaberSound = love.audio.newSource("effects/Sabre Laser.mp3", "static")
heroShootSound = love.audio.newSource("effects/canon laser.mp3", "static")
monsterShootSound = love.audio.newSource("effects/coup monstre.mp3", "static")
buySound = love.audio.newSource("effects/buy.mp3", "static")
explosionSound = love.audio.newSource("effects/explosion.mp3", "static")
eclairSound = love.audio.newSource("effects/eclair.mp3", "static")
cardSound = love.audio.newSource("effects/card.mp3", "static")
swordSound = love.audio.newSource("effects/sabre.mp3", "static")
flakeSound = love.audio.newSource("effects/gèle.mp3", "static")
healSound = love.audio.newSource("effects/mini.mp3", "static")
giveAttSound = love.audio.newSource("effects/giveAtt.mp3", "static")
monsterSound = love.audio.newSource("effects/cri monstre.mp3", "static")
failSound = love.audio.newSource("effects/interdit.mp3", "static")


volumeEffects = 0.1
--WIN
gameTime = 0
jediWin = false
jediLose = false
sithWin = false
sithLose = false

--RANK
RANK_SHIP = "War Ship"
RANK_GRANDMASTER_JEDI = 'Grand Master of the Jedi Order'
RANK_COUNCIL_JEDI = 'Member of the High Council'
RANK_MASTER_JEDI = 'Jedi Master'
RANK_JEDI = 'Jedi'
RANK_BOUNTYHUNTER = 'Bounty Hunter'
RANK_WHILLS = 'Guardian of the Whills'
RANK_CLOUDRIDER = 'Leader of the Cloud-Riders'
RANK_SMUGGLER = 'Rebel General /Smuggler'
RANK_REBEL = 'Rebel'
RANK_GAMBLER = 'Rebel General / Smuggler/ Gambler'
RANK_RESISTANCE_GENERAL = 'Resistance General'
RANK_RESISITANCE_COMMANDER = 'Supreme commander of the Resistance'
RANK_PHENIX_SQUADRON = 'Rebel / Leader of the Phenix Squadron'
RANK_ALLIANCE_FLEET = 'Supreme Commander of the Alliance Fleet'
RANK_CLONE = 'Clone trooper in the 501st legion'
RANK_GUNGAN_GENERAL = 'General in the Gungan Grand Army'
RANK_DARK_SITH = 'Darth Lord of the Sith'
RANK_SITH = 'Sith'
RANK_EMPEROR_SITH = 'Sith Emperor'
RANK_EMPEROR = 'Emperor of the Galactic Empire'
RANK_SUPREMELEADER = 'Supreme Leader of the First Order'
RANK_CIS_COMMANDER = 'Supreme Commander of the CIS'
RANK_INQUISITORIOUS = 'Leader of the Inquisitorious'
RANK_BLACKSUN = 'Leader of the Black Sun'
RANK_STORMTROOPER_COMMANDER = 'Stormtrooper commander'
RANK_DEATH_STAR_COMMANDER = 'Commander of the Death Star'
RANK_ARCHDUKE = 'Archduke of Geonosis'
RANK_JUNKSTORE_PROPRIETOR = 'Junk store proprietor'
RANK_CRIMELORD = 'Crime lord'
RANK_NIGHTSISTER = 'Leader of the Nightsisters'
RANK_IMPERIALE_FLEET = 'Supreme Commander of the Imperial Fleet'
RANK_DROID = 'Droid'
RANK_CLONE_TROOPER = 'Clone Trooper'
RANK_PADME_GUARD = "Padmé Amidala's Guard"
RANK_WOOKIE = "Kashyyyk's specie"
RANK_EWOK = 'Endors specie'
RANK_GUNGAN = "Naboo's specie"
RANK_SENAT_GUARD = "Chancelor's Guard"
RANK_GRIEVOUS_GYARD = "Grievous's Guard"
RANK_ROYAL_GUARD = "Sidious and Vador's Guard"
RANK_REN_KNIGHT = "Kylo Ren's Knight"
RANK_PRETORIAN_GUARD = "Snoke's Guard"
RANK_JAWA = "Jawa's Vehicule"

--TIMER
timerOverDead = 1

timerButton = 0
timeOverButton = 0.5

timerOverImpact = 1

timerForceCard = 0
timerOverForceCard = 4

TIMER_ROUND_DURATION = 80
startTimerRound = false
timerRound = TIMER_ROUND_DURATION
timerOverRound = 0

gameTimer = false

settingTimer = false
timerSetting = 0
timerOverSetting = 0.5

swTimer = false
timeOverSW = 1
timerSW = 0

preMenuTimer = true
timerPreMenu = 0
timeOverPreMenu = 3

mineTimer = false
timerMine = 0
timeOverMine = 180

--Mine
nbLightMine = 0
nbDarkMine = 0
mineCredit = 250
nbMineAllowed = 2

--OutPoste
nbLightOutPoste = 0
nbDarkOutPoste = 0
outPosteCredit = 1000
darkOutPosteXp = 0
lightOutPosteXp = 0

--CREDIT
addCredits = true
lighCredit = 0
darkCredit = 200
lightTotalCredit = 0
darkTotalCredit = 0
roundCredit = 200

--XP
lightXp = 0
darkXp = 0
OverXp = 500

--ABILITY
--point
lightAbilityPoint = 0
darkAbilityPoint = 0
--level
lightLevelAbility = 1
darkLevelAbility = 1

lightLevelAbility2 = 1
darkLevelAbility2 = 1

lightLevelAbility3 = 1
darkLevelAbility3 = 1

lightLevelAbility4 = 1
darkLevelAbility4 = 1

lightLevelAbility5 = 1
darkLevelAbility5 = 1

--CURRENT
currentPlayeur = 1

--Piece
darkTotalPieces = 1
lightTotalPieces = 1

darkTotalDamageInflicted= 0
lightTotalDamageInflicted = 0

darkTotalDamageReceive  = 0
lightTotalDamageReceive = 0

darkTotalDamageReceive2 = 0
lightTotalDamageReceive2 = 0

darkTotalDamageReceive3 = 0
lightTotalDamageReceive3 = 0

darkPieceLost = 0
lightPieceLost = 0

darkPieceKill = 0
lightPieceKill = 0

lightTotalDamagedInflictedMonster = 0
darkTotalDamagedInflictedMonster = 0

pieceLost = false

--Monster
lightMonsterDamage = 0
darkMonsterDamage = 0

lightMonsterKill = 0
darkMonsterKill = 0

lightNbPiece = 0
darkNbPiece = 0

--SIDE
MONSTER_SIDE = "Monster Side"
DARK_SIDE = "Dark Side"
LIGHT_SIDE = "Light Side"
currentSide = LIGHT_SIDE

--TABLE
abilityTable = {}
pieceTable = {} -- les images des pieces
monsterTable = {}
currentPiece = {}
pieceGridTable = {} -- les pieces dans la grille
selectedPiece = {}
targetPiece = nil
outPosteTable = {}
currentAbility = {}
monsterSelectedPiece = nil
monsterTargetPiece = nil
cloudTable = {}
jawaTable = {}

dofile("Grid.lua")
dofile("GridPieces.lua")
dofile("Cursor.lua")
dofile("Menus.lua")
dofile("ForceCard.lua")
dofile("Ability.lua")
dofile("Monster_Den.lua")
dofile("Piece.lua")
dofile("HerosFonctions.lua")

--LOAD
function love.load()
  --love.window.setFullscreen(true)
  love.window.setMode(1920, 1080)

  menuMusic:setLooping(true)
  menuMusic:play()

  width = love.graphics.getWidth()
  height = love.graphics.getHeight()

  Heros()
  Troup()
  Vehicle()
  Building()
  Den_Monster()
  Ability_Pieces()
  Ability()
  InitGrid()
  ButtonMenu()
  ButtonGame()
  ButtonCategory()
  ButtonPiece()
  ButtonAbility()
  ButtonForceCard()
  ButtonPieceSpecial()
  ButtonWin()

  LoadGridPieces()
  hideAllCursors()
  initAbility()
  initForceCard()
  initHeroeFonction()
end

g_cursorOnGrid = false

--MOUSEMOVED
function love.mousemoved(mx, my)
  local l, c = findClickedCell(mx, my)
  if l  == nil or c == nil then
    g_cursorOnGrid = false
  else
    g_cursorOnGrid = true
  end

  drawDeadTarget = false
  for j,piece in ipairs(pieceGridTable) do
    if currentStep == STEP_SHOOT then
      if selectedPiece ~= nil and selectedPiece.shoot ~= nil then
        if selectedPiece.shoot > 0 then
          if selectedPiece.camp == currentSide then
            if piece.c == c and piece.l == l and piece ~= selectedPiece then
              if piece.camp ~= nil and piece.camp ~= selectedPiece.camp then
                if piece.hp ~= nil and piece.hp <= selectedPiece.att then
                  drawDeadTarget = true
                end
              end
            end
          end
        end
      end
    end
  end
end
--MOUSEPRESSED
function love.mousepressed(mx, my, button)
  l, c = findClickedCell(mx, my)
  for i, piece in ipairs(pieceGridTable) do
    if piece.c == c and piece.l == l then
      currentPiece = piece
    end
  end

  if l == nil or c == nil then
    return
  end
  width = love.graphics.getWidth()
  local hot = mx > Grid.offsetX  and mx < (width - Grid.offsetX)
  if button ~= 1 then
    return
  end
  if hot == false then
    return
  end
  --Hunter Attack
  if g_abilityHunterAttack == true and g_abilityHunterAttackPieces > 0 then
    local targetHunterAttack
    if getCurrentNbPieceBase(currentSide) == true then
      g_abilityHunterAttackPieces = 0
      g_abilityHunterAttack = false
      hideAllCursors()
      return
    end
    if currentSide == LIGHT_SIDE then
      if g_abilityHunterAttackPieces == 2 then
        currentPiece = hunter1
      elseif g_abilityHunterAttackPieces == 1 then
        currentPiece = hunter2
      end
    elseif currentSide == DARK_SIDE then
      if g_abilityHunterAttackPieces == 2 then
        currentPiece = hunter3
      elseif g_abilityHunterAttackPieces == 1 then
        currentPiece = hunter4
      end
    end
    local piece1 = buyPiece(l,c)
    if piece1 ~= nil then
      buySound:stop()
      buySound:play()
      g_abilityHunterAttackPieces = g_abilityHunterAttackPieces - 1
      updateCurrentTotalPiece(1)
      if g_abilityHunterAttackPieces == 0 then
        drawDollar = false
        g_abilityHunterAttack = false
        return
      end
    end
  end
  --Unlimited power
  if g_abilityUnlimitedPower == true and g_abilityUnlimitedPowerShots > 0 then
    local targetUnlimitedPower
    g_abilityUnlimitedPowerAtt = 1500
    for i, piece in ipairs(pieceGridTable) do
      if piece.c == c and piece.l == l then
        if Map[l][c] ~= MAP_DEN then
          if piece.category ~= CATEGORY_BASE and piece.category ~= CATEGORY_PLAGE and piece.category ~= CATEGORY_WATER and piece.immortal ~= nil and piece.immortal == 0 then
            eclairSound:stop()
            eclairSound:play()
            targetUnlimitedPower = piece
            if targetUnlimitedPower.hp ~= nil and targetUnlimitedPower.hp > 0 then
              table.insert(markerTable, {markertype='hit', l=targetUnlimitedPower.l, c=targetUnlimitedPower.c, nombre=g_abilityUnlimitedPowerAtt, timer=0})
              targetUnlimitedPower.hp = targetUnlimitedPower.hp - g_abilityUnlimitedPowerAtt
              updateCurrentDamagedInflicted(g_abilityUnlimitedPowerAtt)
              if targetUnlimitedPower.category == CATEGORY_MONSTER then
                updateCurrentDamagedReceive2(-g_abilityUnlimitedPowerAtt)
              end
              g_abilityUnlimitedPowerShots = g_abilityUnlimitedPowerShots - 1
              if g_abilityUnlimitedPowerShots == 0 then
                g_abilityUnlimitedPower = false
                g_abilityUnlimitedPowerAtt = nil
              end
              return
            end
          end
        end
      end
    end
  end
  --Double Shot
  if g_abilityDoubleShot == true and g_abilityDoubleShotShots > 0 then
    local targetDoubleShot
    g_abilityDoubleShotAtt = 7500
    for i, piece in ipairs(pieceGridTable) do
      if piece.c == c and piece.l == l then
        if Map[l][c] ~= MAP_DEN then
          if piece.category ~= CATEGORY_BASE and piece.category ~= CATEGORY_PLAGE and piece.category ~= CATEGORY_WATER and piece.immortal ~= nil and piece.immortal == 0 then
            eclairSound:stop()
            eclairSound:play()
            targetDoubleShot = piece
            if targetDoubleShot.hp ~= nil and targetDoubleShot.hp > 0 then
              table.insert(markerTable, {markertype='hit', l=targetDoubleShot.l, c=targetDoubleShot.c, nombre=g_abilityDoubleShotAtt, timer=0})
              targetDoubleShot.hp = targetDoubleShot.hp - g_abilityDoubleShotAtt
              updateCurrentDamagedInflicted(g_abilityDoubleShotAtt)
              if targetDoubleShot.category == CATEGORY_MONSTER then
                updateCurrentDamagedReceive2(-g_abilityDoubleShotAtt)
              end
              g_abilityDoubleShotShots = g_abilityDoubleShotShots - 1
              if g_abilityDoubleShotShots == 0 then
                g_abilityDoubleShot = false
                g_abilityDoubleShotAtt = nil
              end
              return
            end
          end
        end
      end
    end
  end
  
  --Big shot
  if g_abilityBigShot == true and g_abilityBigShotShots > 0 then
    local targetBigShot
    g_abilityBigShotAtt = 37500
    for i, piece in ipairs(pieceGridTable) do
      if piece.c == c and piece.l == l then
        if Map[l][c] ~= MAP_DEN then
          if piece.category ~= CATEGORY_BASE and piece.category ~= CATEGORY_PLAGE and piece.category ~= CATEGORY_WATER and piece.immortal ~= nil and piece.immortal == 0 then
            explosionSound:stop()
            explosionSound:play()
            targetBigShot = piece
            if targetBigShot.hp ~= nil then
              targetBigShot.hp = targetBigShot.hp - g_abilityBigShotAtt
              table.insert(markerTable, {markertype='hit', l=targetBigShot.l, c=targetBigShot.c, nombre=g_abilityBigShotAtt, timer=0})
              g_abilityBigShotShots = g_abilityBigShotShots - 1
              updateCurrentDamagedInflicted(g_abilityBigShotAtt)
              if targetBigShot.category == CATEGORY_MONSTER then
                updateCurrentDamagedReceive2(-g_abilityBigShotAtt)
              end
              if g_abilityBigShotShots == 0 then
                g_abilityBigShot = false
                g_abilityBigShotAtt = nil
              end
              return
            end
          end
        end
      end
    end
  end
  --Squadron
  if g_abilitySquadron == true and g_abilitySquadronPieces > 0 then
    if getCurrentNbPieceBase(currentSide) == true then
      g_abilitySquadronPieces = 0
      g_abilitySquadron = false
      hideAllCursors()
      return
    end
    if currentSide == LIGHT_SIDE then
      currentPiece = xwings
    else
      currentPiece = tieFighter
    end
    local piece1 = buyPiece(l,c)
    if piece1 ~= nil then
      buySound:stop()
      buySound:play()
      g_abilitySquadronPieces = g_abilitySquadronPieces - 1
      updateCurrentTotalPiece(1)
      if g_abilitySquadronPieces == 0 then
        drawDollar = false
        g_abilitySquadron = false
        return
      end
    end
  end
  --Jawa Looting
  if g_abilityJawaLooting == true and g_abilityJawaLootingPieces > 0 then
    if currentSide == LIGHT_SIDE then
      currentPiece = lightSandCrawler
    else
      currentPiece = darkSandCrawler
    end
    local piece1 = buyPiece(l,c)
    if piece1 ~= nil then
      buySound:stop()
      buySound:play()
      g_abilityJawaLootingPieces = g_abilityJawaLootingPieces - 1
      updateCurrentTotalPiece(1)
      if g_abilityJawaLootingPieces == 0 then
        drawDollar = false
        g_abilityJawaLooting = false
        return
      end
    end
  end
  --Big bounty
  if g_abilityBigBounty == true and g_abilityBigBountyPieces > 0 then
    for i, piece in ipairs(pieceGridTable) do 
      if piece.category == CATEGORY_MONSTER then
        if piece.c == c and piece.l == l then
          piece.special = piece.special * 4
          piece.price='A bounty of '.. piece.special ..' credits'
          g_abilityBigBountyPieces = g_abilityBigBountyPieces - 1
          monsterSound:stop()
          monsterSound:play()
          if g_abilityBigBountyPieces == 0 then
            drawHand = false
            g_abilityBigBounty = false
            return
          end
          return
        end
      end
    end
  end
  --My monster
  if g_abilityMyMonster == true and g_abilityMyMonsterPieces > 0 then
    for i, piece in ipairs(pieceGridTable) do 
      if piece.category == CATEGORY_MONSTER then
        if piece.c == c and piece.l == l then
          piece.camp = currentSide
          updateCurrentTotalPiece(1)
          g_abilityMyMonsterPieces = g_abilityMyMonsterPieces - 1
          monsterSound:stop()
          monsterSound:play()
          if g_abilityMyMonsterPieces == 0 then
            drawHand = false
            g_abilityMyMonster = false
            return
          end
          return
        end
      end
    end
  end
--The Order
  if g_abilityTheOrder == true and g_abilityTheOrderPieces > 0 then
    if getCurrentNbPieceBase(currentSide) == true then
      g_abilityTheOrderPieces = 0
      g_abilityTheOrder = false
      hideAllCursors()
      return
    end
    if currentSide == LIGHT_SIDE then
      currentPiece = jedi
    else
      currentPiece = sith
    end
    local piece1 = buyPiece(l,c)
    if piece1 ~= nil then
      buySound:stop()
      buySound:play()
      updateCurrentTotalPiece(1)
      g_abilityTheOrderPieces = g_abilityTheOrderPieces - 1
      if g_abilityTheOrderPieces == 0 then
        drawDollar = false
        g_abilityTheOrder = false
        return
      end
    end
  end
  --Big Fleet
  if g_abilityBigFleet == true and g_abilityBigFleetPieces > 0 then
    if getCurrentNbPieceBase(currentSide) == true then
      g_abilityBigFleetPieces = 0
      g_abilityBigFleet = false
      hideAllCursors()
      return
    end
    if g_abilityBigFleetPieces ~= 3 then
      if currentSide == LIGHT_SIDE then
        currentPiece = hammerheadCorvette
      else
        currentPiece = starDestroyer
      end
    elseif g_abilityBigFleetPieces == 3 then
      if currentSide == LIGHT_SIDE then
        currentPiece = homeOne
      else
        currentPiece = executorSuperStarDestroyer
      end
    end
    local piece1 = buyPiece(l,c)
    if piece1 ~= nil then
      buySound:stop()
      buySound:play()
      updateCurrentTotalPiece(1)
      g_abilityBigFleetPieces = g_abilityBigFleetPieces - 1
      if g_abilityBigFleetPieces == 0 then
        drawDollar = false
        g_abilityBigFleet = false
        return
      end
    end
  end
  --Convoy
  if g_abilityConvoy == true and g_abilityConvoyPieces > 0 then
    if getCurrentNbPieceBase(currentSide) == true then
      g_abilityConvoyPieces = 0
      g_abilityConvoy = false
      hideAllCursors()
      return
    end
    if g_abilityConvoyPieces ~= 3 then
      if currentSide == LIGHT_SIDE then
        currentPiece = atte
      else
        currentPiece = atst
      end
    elseif g_abilityConvoyPieces == 3 then
      if currentSide == LIGHT_SIDE then
        currentPiece = saber
      else
        currentPiece = aat
      end
    end
    local piece1 = buyPiece(l,c)
    if piece1 ~= nil then
      buySound:stop()
      buySound:play()
      updateCurrentTotalPiece(1)
      g_abilityConvoyPieces = g_abilityConvoyPieces - 1
      if g_abilityConvoyPieces == 0 then
        drawDollar = false
        g_abilityConvoy = false
        return
      end
    end
  end
  --lose 1 vehicle
  if g_loseOneVehicle == true and g_loseOneVehiclePiece > 0 then
    for i,piece in ipairs(pieceGridTable) do
      if piece.camp == currentSide and piece.category == CATEGORY_VEHICLE then
        if piece.c == c and piece.l == l then
          explosionSound:stop()
          explosionSound:play()
          piece.hp = 0
          g_loseOneVehiclePiece = g_loseOneVehiclePiece - 1
        end
      end
      if g_loseOneVehiclePiece == 0 then
        drawDeleteCross = false
        g_loseOneVehicle = false
        return
      end
    end
  end
  --receive 1 vehicles
  if g_receiveOneVehicle == true and g_receiveOneVehiclePiece > 0 then
    if currentSide == LIGHT_SIDE then
      currentPiece = juggernautHavw
    else
      currentPiece = atat
    end
    local piece1 = buyPiece(l,c)
    if piece1 ~= nil then
      buySound:stop()
      buySound:play()
      g_receiveOneVehiclePiece = g_receiveOneVehiclePiece - 1
      if g_receiveOneVehiclePiece == 0 then
        updateCurrentTotalPiece(1)
        drawDollar = false
        g_receiveOneVehicle = false
        return
      end
    end
  end
  --receive 1 mine
  if g_receiveOneMine == true and g_receiveOneMinePiece > 0 then
    if currentSide == LIGHT_SIDE then
      currentPiece = lightMine
    else
      currentPiece = darkMine
    end
    local piece1 = buyPiece(l,c)
    if piece1 ~= nil then
      buySound:stop()
      buySound:play()
      g_receiveOneMinePiece = g_receiveOneMinePiece - 1
      if g_receiveOneMinePiece == 0 then
        updateCurrentTotalPiece(1)
        if currentSide == LIGHT_SIDE then
          nbLightMine = nbLightMine + 1
        else
          nbDarkMine = nbDarkMine + 1
        end
        drawDollar = false
        g_receiveOneMine = false
        return
      end
    end
  end
  --receive 2 mines
  if g_receiveTwoMine == true and g_receiveTwoMinePiece > 0 then
    if getCurrentNbBuildingBase(currentSide) == true then
      g_receiveTwoMinePiece = 0
      g_receiveTwoMine = false
      hideAllCursors()
      return
    end
    if currentSide == LIGHT_SIDE then
      currentPiece = lightMine
    else
      currentPiece = darkMine
    end
    local piece1 = buyPiece(l,c)
    if piece1 ~= nil then
      buySound:stop()
      buySound:play()
      g_receiveTwoMinePiece = g_receiveTwoMinePiece - 1
      if g_receiveTwoMinePiece == 0 then
        updateCurrentTotalPiece(2)
        if currentSide == LIGHT_SIDE then
          nbLightMine = nbLightMine + 2
        else
          nbDarkMine = nbDarkMine + 2
        end
        drawDollar = false
        g_receiveTwoMine = false
        return
      end
    end
  end
  --lose 1 mine
  if g_loseOneMine == true and g_loseOneMinePiece > 0 then
    for i,piece in ipairs(pieceGridTable) do
      if (piece.name == "Light Mine" and piece.camp == currentSide) or (piece.name == "Dark Mine" and piece.camp == currentSide) then
        if piece.c == c and piece.l == l then
          explosionSound:stop()
          explosionSound:play()
          piece.hp = 0
          g_loseOneMinePiece = g_loseOneMinePiece - 1
        end
      end
      if g_loseOneMinePiece == 0 then
        drawDeleteCross = false
        g_loseOneMine = false
        return
      end
    end
  end

  --lose 2 mine
  if g_loseTwoMine == true and g_loseTwoMinePiece > 0 then
    for i,piece in ipairs(pieceGridTable) do
      if (piece.name == "Light Mine" and piece.camp == currentSide) or (piece.name == "Dark Mine" and piece.camp == currentSide) then
        if piece.c == c and piece.l == l then
          explosionSound:stop()
          explosionSound:play()
          piece.hp = 0
          g_loseTwoMinePiece = g_loseTwoMinePiece - 1
        end
      end
      if g_loseTwoMinePiece == 0 then
        drawDeleteCross = false
        g_loseTwoMine = false
        return
      end
    end
  end

  --receive 1 hero
  for s, piece in ipairs(pieceGridTable) do 
    if g_receiveOneHero== true and g_receiveOneHeroPiece > 0 then
      if currentSide == LIGHT_SIDE then
        if piece.name == hanSolo.name then
          g_receiveOneHeroPiece = 0
          g_receiveOneHero = false
          hideAllCursors()
        else
          currentPiece = hanSolo
        end
      else
        if piece.name == bobaFett.name then
          g_receiveOneHeroPiece = 0
          g_receiveOneHero = false
          hideAllCursors()
        else
          currentPiece = bobaFett
        end
      end
      local piece1 = buyPiece(l,c)
      if piece1 ~= nil then
        buySound:stop()
        buySound:play()
        g_receiveOneHeroPiece = g_receiveOneHeroPiece - 1
        if g_receiveOneHeroPiece == 0 then
          updateCurrentTotalPiece(1)
          drawDollar = false
          g_receiveOneHero = false
          return
        end
      end
    end
  end

  --heroShoot
  if g_heroHp == true and g_heroHpShots > 0 then
    for i, piece in ipairs(pieceGridTable) do
      if piece.c == c and piece.l == l then
        g_heroHpTarget = piece
      end
    end
    for j, piece in ipairs(pieceGridTable) do 
      if piece.name == g_heroHpName then
        g_heroHpKiller = piece
        if g_heroHpKiller ~= nil and g_heroHpTarget ~= nil and g_heroHpTarget.hp ~= nil and g_heroHpTarget.hp > 0 then
          if (math.abs(g_heroHpKiller.c - g_heroHpTarget.c) + math.abs(g_heroHpKiller.l - g_heroHpTarget.l)) <= g_heroHpKiller.range_att then
            if g_heroHpAtt > 0 then
              if g_heroHpTarget.hp > g_heroHpTarget.hpbase then
                return
              else
                table.insert(markerTable, {markertype='heal', l=g_heroHpTarget.l, c=g_heroHpTarget.c, nombre=g_heroHpAtt, timer=0})
                healSound:stop()
                healSound:play()
              end
            elseif g_heroHpAtt < 0 then
              if (g_heroHpTarget.immortal ~= nil and g_heroHpTarget.immortal > 0) or (g_heroHpTarget.name == g_heroHpName) then
                return
              else
                table.insert(markerTable, {markertype='hit', l=g_heroHpTarget.l, c=g_heroHpTarget.c, nombre=g_heroHpAtt, timer=0})
                updateCurrentDamagedInflicted(-g_heroHpAtt)
                if g_heroHpTarget.category == CATEGORY_MONSTER then
                  updateCurrentDamagedReceive2(g_heroHpAtt)
                end
                heroShootSound:stop()
                heroShootSound:play()
              end
            end
            g_heroHpTarget.hp = g_heroHpTarget.hp + g_heroHpAtt
            g_heroHpShots = g_heroHpShots - 1
            if g_heroHpShots == 0 then
              drawTarget = false
              drawGreenCross = false
              g_heroHp = false
            end
            return
          end
        end
      end
    end
  end


  --heroGiveAtt
  if g_heroGiveAtt == true and g_heroGiveAttShots > 0 then
    for j, piece in ipairs(pieceGridTable) do
      if piece.name == g_heroGiveAttName then
        g_heroGiveAttKiller = piece
        if g_heroGiveAttKiller ~= nil and currentPiece ~= nil and currentPiece.att <= currentPiece.attbase and currentPiece.hp ~= nil then
          if (math.abs(g_heroGiveAttKiller.c - currentPiece.c) + math.abs(g_heroGiveAttKiller.l - currentPiece.l)) <= g_heroGiveAttKiller.range_att then
            currentPiece.att = currentPiece.att - g_heroGiveAttAtt
            table.insert(markerTable, {markertype='att', l=currentPiece.l, c=currentPiece.c, nombre=-g_heroGiveAttAtt, timer=0})
            g_heroGiveAttShots = g_heroGiveAttShots - 1
            giveAttSound:stop()
            giveAttSound:play()
            currentPiece.moreAtt = true
          end
        elseif currentPiece ~= nil and currentPiece.name == g_heroGiveAttName and currentPiece.att > currentPiece.attbase then
          g_heroGiveAttShots = g_heroGiveAttShots - 1
        end
         if g_heroGiveAttShots == 0 then
            drawRedCross = false
            g_heroGiveAtt = false
          end
        return
      end
    end
  end

  --heroFreeze
  if g_heroFreeze == true and g_heroFreezeShots > 0 then
    --currentPiece is the piece we want to freeze
    for j, piece in ipairs(pieceGridTable) do
      if piece.name == g_heroFreezeName then
        g_heroFreezeKiller = piece
        if g_heroFreezeKiller ~= nil and currentPiece ~= nil and currentPiece.hp ~= nil then
          if (math.abs(g_heroFreezeKiller.c - currentPiece.c) + math.abs(g_heroFreezeKiller.l - currentPiece.l)) <= g_heroFreezeKiller.range_att then
            g_heroFreezeShots = g_heroFreezeShots - 1
            flakeSound:stop()
            flakeSound:play()
            currentPiece.frozen=true
            if g_heroFreezeShots == 0 then
              drawFlake = false
              g_heroFreeze = false
            end
            return
          end
        end
      end
    end
  end

  --heroSuicideShoot
  if g_heroSuicideShoot == true and g_heroSuicideShootShots > 0 then
    for i, piece in ipairs(pieceGridTable) do 
      if piece.c == c and piece.l == l then
        g_heroSuicideShootTarget = piece
      end
    end
    for j, piece in ipairs(pieceGridTable) do
      if piece.name == g_heroSuicideShootName then
        g_heroSuicideShootKiller = piece
        if g_heroSuicideShootKiller ~= nil and g_heroSuicideShootTarget ~= nil and g_heroSuicideShootTarget.name ~= g_heroSuicideShootName and g_heroSuicideShootTarget.hp ~= nil and g_heroSuicideShootTarget.hp > 0 and g_heroSuicideShootTarget.immortal ~= nil and g_heroSuicideShootTarget.immortal == 0 then
          if (math.abs(g_heroSuicideShootKiller.c - g_heroSuicideShootTarget.c) + math.abs(g_heroSuicideShootKiller.l - g_heroSuicideShootTarget.l)) <= g_heroSuicideShootKiller.range_att then
            table.insert(markerTable, {markertype='hit', l=g_heroSuicideShootTarget.l, c=g_heroSuicideShootTarget.c, nombre=g_heroSuicideShootAtt, timer=0})
            g_heroSuicideShootTarget.hp = g_heroSuicideShootTarget.hp - g_heroSuicideShootAtt
            updateCurrentDamagedInflicted(g_heroSuicideShootAtt)
            if g_heroSuicideShootTarget.category == CATEGORY_MONSTER then
              updateCurrentDamagedReceive2(-g_heroSuicideShootAtt)
            end
            g_heroSuicideShootShots = g_heroSuicideShootShots - 1
            heroShootSound:stop()
            heroShootSound:play()
          end
        elseif g_heroSuicideShootTarget.name == g_heroSuicideShootName then
          g_heroSuicideShootShots = g_heroSuicideShootShots - 1
        end
        if g_heroSuicideShootShots == 0 then
          g_heroSuicideShootKiller.hp = 0
          drawTarget = false
          g_heroSuicideShoot = false
        end
        return
      end
    end
  end

  -- Heroshoot 2.0
  if g_heroShoot2 == true and g_heroShoot2AttShoots > 0 and g_heroShoot2HpShoots > 0 then 
    for i, piece in ipairs(pieceGridTable) do 
      if piece.c == c and piece.l == l then
        g_heroShoot2Target = piece
      end
    end
    for j, piece in ipairs(pieceGridTable) do
      if piece.name == g_heroShoot2Name then
        g_heroShoot2Killer = piece
        if g_heroShoot2Killer ~= nil and g_heroShoot2Target ~= nil and g_heroShoot2Target.hp ~= nil and g_heroShoot2Target.hp > 0 and g_heroShoot2Target.hp <= g_heroShoot2Target.hpbase then
          if (math.abs(g_heroShoot2Killer.c - g_heroShoot2Target.c) + math.abs(g_heroShoot2Killer.l - g_heroShoot2Target.l)) <= g_heroShoot2Killer.range_att then
            table.insert(markerTable, {markertype='heal', l=g_heroShoot2Target.l, c=g_heroShoot2Target.c, nombre=g_heroShoot2Att, timer=0})
            g_heroShoot2Target.hp = g_heroShoot2Target.hp + g_heroShoot2Att
            g_heroShoot2HpShoots = g_heroShoot2HpShoots - 1
            healSound:stop()
            healSound:play()
          end
        elseif g_heroShoot2Target ~= nil and g_heroShoot2Target.name == g_heroShoot2Name and g_heroShoot2Target.hp > g_heroShoot2Target.hpbase then
          g_heroShoot2HpShoots = g_heroShoot2HpShoots - 1
        end
        if g_heroShoot2HpShoots == 0 then
          drawGreenCross = false
        end
        return
      end
    end
  end
  if g_heroShoot2 == true and g_heroShoot2AttShoots > 0 and g_heroShoot2HpShoots == 0 then
    for k, piece in ipairs(pieceGridTable) do 
      if piece.c == c and piece.l == l then
        g_heroShoot2Target = piece
      end
    end
    for l, piece in ipairs(pieceGridTable) do
      if piece.name == g_heroShoot2Name then
        g_heroShoot2Killer = piece
        if g_heroShoot2Killer ~= nil and g_heroShoot2Target ~= nil and g_heroShoot2Target.name ~= g_heroShoot2Name and g_heroShoot2Target.hp ~= nil and g_heroShoot2Target.hp > 0 and g_heroShoot2Target.immortal ~= nil and g_heroShoot2Target.immortal == 0 then
          if (math.abs(g_heroShoot2Killer.c - g_heroShoot2Target.c) + math.abs(g_heroShoot2Killer.l - g_heroShoot2Target.l)) <= g_heroShoot2Killer.range_att then
            g_heroShoot2Target.hp = g_heroShoot2Target.hp - g_heroShoot2Att
            updateCurrentDamagedInflicted(g_heroShoot2Att)
            if g_heroShoot2Target.category == CATEGORY_MONSTER then
              updateCurrentDamagedReceive2(-g_heroShoot2Att)
            end
            table.insert(markerTable, {markertype='hit', l=g_heroShoot2Target.l, c=g_heroShoot2Target.c, nombre=g_heroShoot2Att, timer=0})
            g_heroShoot2AttShoots = g_heroShoot2AttShoots - 1
            heroShootSound:stop()
            heroShootSound:play()
          end
        elseif g_heroShoot2Target.name == g_heroShoot2Name then
          g_heroShoot2AttShoots = g_heroShoot2AttShoots - 1
        end
        if g_heroShoot2AttShoots == 0 and g_heroShoot2HpShoots == 0 then
          drawTarget = false
          g_heroShoot2 = false
        end
        return
      end
    end
  end

--hero max

  if g_heroMax == true and g_heroMaxAttShoots > 0 and g_heroMaxHpShoots > 0 and g_heroMaxFreezeShoots > 0 then 
    for i, piece in ipairs(pieceGridTable) do 
      if piece.c == c and piece.l == l then
        g_heroMaxTarget = piece
      end
    end
    for j, piece in ipairs(pieceGridTable) do
      if piece.name == g_heroMaxName then
        g_heroMaxKiller = piece
        if g_heroMaxKiller ~= nil and g_heroMaxTarget ~= nil and g_heroMaxTarget.hp <= g_heroMaxTarget.hpbase and g_heroMaxTarget.hp ~= nil and g_heroMaxTarget.hp > 0 then
          if (math.abs(g_heroMaxKiller.c - g_heroMaxTarget.c) + math.abs(g_heroMaxKiller.l - g_heroMaxTarget.l)) <= g_heroMaxKiller.range_att then
            g_heroMaxTarget.hp = g_heroMaxTarget.hp + g_heroMaxAtt
            table.insert(markerTable, {markertype='heal', l=g_heroMaxTarget.l, c=g_heroMaxTarget.c, nombre=g_heroMaxAtt, timer=0})
            g_heroMaxHpShoots = g_heroMaxHpShoots - 1
            healSound:stop()
            healSound:play()
          end
        elseif g_heroMaxTarget ~= nil and g_heroMaxTarget.name == g_heroMaxName and g_heroMaxTarget.hp > g_heroMaxTarget.hpbase then
          g_heroMaxHpShoots = g_heroMaxHpShoots - 1
        end
        if g_heroMaxHpShoots == 0 then
          drawGreenCross = false
        end
        return
      end
    end
  end
  if g_heroMax == true and g_heroMaxAttShoots > 0 and g_heroMaxHpShoots == 0 and g_heroMaxFreezeShoots > 0 then
    for k, piece in ipairs(pieceGridTable) do 
      if piece.c == c and piece.l == l then
        g_heroMaxTarget = piece
      end
    end
    for l, piece in ipairs(pieceGridTable) do
      if piece.name == g_heroMaxName then
        g_heroMaxKiller = piece
        if g_heroMaxKiller ~= nil and g_heroMaxTarget ~= nil and g_heroMaxTarget.name ~= g_heroMaxName and g_heroMaxTarget.hp ~= nil and g_heroMaxTarget.hp > 0 and g_heroMaxTarget.immortal ~= nil and g_heroMaxTarget.immortal == 0 then
          if (math.abs(g_heroMaxKiller.c - g_heroMaxTarget.c) + math.abs(g_heroMaxKiller.l - g_heroMaxTarget.l)) <= g_heroMaxKiller.range_att then
            table.insert(markerTable, {markertype='hit', l=g_heroMaxTarget.l, c=g_heroMaxTarget.c, nombre=g_heroMaxAtt, timer=0})
            g_heroMaxTarget.hp = g_heroMaxTarget.hp - g_heroMaxAtt
            updateCurrentDamagedInflicted(g_heroMaxAtt)
            if g_heroMaxTarget.category == CATEGORY_MONSTER then
              updateCurrentDamagedReceive2(-g_heroMaxAtt)
            end
            g_heroMaxAttShoots = g_heroMaxAttShoots - 1
            lightSaberSound:stop()
            lightSaberSound:play()
          end
        elseif g_heroMaxTarget.name == g_heroMaxName then
          g_heroMaxAttShoots = g_heroMaxAttShoots - 1
        end
        if g_heroMaxAttShoots == 0 and g_heroMaxHpShoots == 0 then
          drawTarget = false
          drawFlake = true
        end
        return
      end
    end
  end
  if g_heroMax == true and g_heroMaxAttShoots == 0 and g_heroMaxHpShoots == 0 and g_heroMaxFreezeShoots > 0 then
    --currentPiece is the piece we want to freeze
    for j, piece in ipairs(pieceGridTable) do
      if piece.name == g_heroMaxName then
        g_heroMaxKiller = piece
        if g_heroMaxKiller ~= nil and currentPiece ~= nil and currentPiece.name ~= g_heroMaxName and currentPiece.hp ~= nil then
          if (math.abs(g_heroMaxKiller.c - currentPiece.c) + math.abs(g_heroMaxKiller.l - currentPiece.l)) <= g_heroMaxKiller.range_att then
            g_heroMaxFreezeShoots = g_heroMaxFreezeShoots - 1
            flakeSound:stop()
            flakeSound:play()
            currentPiece.frozen=true
          end
        elseif currentPiece.name == g_heroMaxName then
          g_heroMaxFreezeShoots = g_heroMaxFreezeShoots - 1
        end
        if g_heroMaxFreezeShoots == 0 and g_heroMaxAttShoots == 0 and g_heroMaxHpShoots == 0 then
          drawFlake = false
          g_heroMax = false
        end
        return
      end
    end
  end

  --STEP BUY
  if currentStep == STEP_BUY then --and buy == true then
    buyPiece(l,c)
    --STEP MOVE
  elseif currentStep == STEP_MOVE then
    movePiece(l,c)
    --STEP SHOOT
  elseif currentStep == STEP_SHOOT then
    shootPiece(l,c)
  end
end
--UPDATE
function love.update(dt)
  --music
  menuMusic:setVolume(volumeMusic)
  jediMusic:setVolume(volumeMusic)
  sithMusic:setVolume(volumeMusic)
  if gameMusic ~= nil then
    gameMusic:setVolume(volumeMusic)
  end

  --effects
  clickSound:setVolume(volumeEffects)
  vehicleShootSound:setVolume(volumeEffects)
  troupShootSound:setVolume(volumeEffects)
  building_shipShootSound:setVolume(volumeEffects)
  lightSaberSound:setVolume(volumeEffects)
  heroShootSound:setVolume(volumeEffects)
  monsterShootSound:setVolume(volumeEffects)
  buySound:setVolume(volumeEffects)
  explosionSound:setVolume(volumeEffects)
  eclairSound:setVolume(volumeEffects)
  cardSound:setVolume(volumeEffects)
  swordSound:setVolume(volumeEffects)
  flakeSound:setVolume(volumeEffects)
  healSound:setVolume(volumeEffects)
  giveAttSound:setVolume(volumeEffects)
  monsterSound:setVolume(volumeEffects)
  if drawHelpMessage == true then
    failSound:setVolume(volumeEffects/2)
  else
     failSound:setVolume(0.0)
  end

  if switchMusicGame == true then
    menuMusic:stop()
    gameMusic:setLooping(true)
    gameMusic:play()
  end
  if switchMusicJedi == true then
    switchMusicGame = false
    gameMusic:stop()
    jediMusic:setLooping(true)
    jediMusic:play()
  end
  if switchMusicSith == true then
    switchMusicGame = false
    gameMusic:stop()
    sithMusic:setLooping(true)
    sithMusic:play()
  end
  if switchMusicRestartGame == true then
    switchMusicJedi = false
    switchMusicSith = false
    sithMusic:stop()
    jediMusic:stop()
    menuMusic:setLooping(true)
    menuMusic:play()
  end

  logoSW_size = logoSW_size - 0.05
  if logoSW_size < 1.5 then 
    logoSW_size = 1.5
    if drawIntro == true then
      swTimer = true
    end
  end

  if love.keyboard.isDown("escape") then
    if drawSettings == true and drawGame == false and gamePause == false then
      drawSettings = false
      drawMenu = true
    elseif drawSettings == true and drawGame == false and gamePause == true then
      drawSettings = false
      drawGame = true
      drawGameB = true
      drawPieceInfo = true
      drawGameInfo = true
      gamePause = false
    end
  end

  if love.keyboard.isDown("p") and drawGame == true and drawSettings == false then
    drawSettings = true
    drawGame = false
    drawGameB = false
    drawPieceInfo = false
    drawGameInfo = false
    gamePause = true
  end
  
  if checkHeroeFonctionOn() == true then
    if love.mouse.isDown(2) then
      initHeroeFonction()
      hideAllCursors()
    end
  end
  
  if checkAbilityOn() == true then
    if love.mouse.isDown(2) then
      initAbility()
      hideAllCursors()
    end
  end
  
--RANDOM FORCE CARD
  if drawMenu == true then
    ForceCards()
  end

  checkForceCard()

--SWITCH ROUND
  if startTimerRound == true then
    timerRound = timerRound - dt
    if timerRound < timerOverRound then
      switchRound()
      timerRound = TIMER_ROUND_DURATION
      drawGameB = true
      drawPieceInfo = true
      drawGame = true
      drawGameInfo = true
      drawVehicleB = false
      drawCategoryB = false
      drawTroupB = false
      drawBuildingB = false
      drawHeroB = false
      drawAddAbility = false
      g_abilityUnlimitedPower = false
      g_abilityBigShot = false
      --updateRound()
    end
  end

  AddCredits()
  if currentStep >= 4 and drawCategoryB == false then 
    switchRound()
  end

--MORT
  for i, piece in ipairs(pieceGridTable) do 
    if piece.hp ~= nil and piece.hp <= 0 then
      table.insert(cloudTable, {l=piece.l, c=piece.c, timer=0, side = piece.side})
      --monsterkill
      if piece.category == CATEGORY_MONSTER then
        if currentSide == LIGHT_SIDE then
          lightMonsterKill = lightMonsterKill + 1
        elseif currentSide == DARK_SIDE then
          darkMonsterKill = darkMonsterKill + 1
        end
      end
      -- minekill
      if piece.name == "Light Mine" then
        nbLightMine = nbLightMine - 1
      elseif piece.name == "Dark Mine" then
        nbDarkMine = nbDarkMine - 1
      end
      --piecekill
      if currentSide == LIGHT_SIDE then
        if piece.category ~= CATEGORY_MONSTER then
          lightPieceKill = lightPieceKill + 1
        end
      elseif currentSide == DARK_SIDE then
        if piece.category ~= CATEGORY_MONSTER then
          darkPieceKill = darkPieceKill + 1
        end
      end
      --piecelost
      if piece.camp == DARK_SIDE then
        darkPieceLost = darkPieceLost + 1
      elseif piece.camp == LIGHT_SIDE then
        lightPieceLost = lightPieceLost + 1
      end
      --WIN
      if piece.category == CATEGORY_BASE then
        win()
      end
      if piece.category ~= CATEGORY_MONSTER then
        if piece.camp == LIGHT_SIDE then
          darkXp = darkXp + piece.price/10
        elseif piece.camp == DARK_SIDE then
          lightXp = lightXp + piece.price/10
        end
      end
      if piece.category == CATEGORY_MONSTER then
        local oldmonster = piece
        updateCurrentCredit(oldmonster.special)
        oldmonster.den.monster_rank = oldmonster.den.monster_rank + 1
        if oldmonster.den.monster_rank >= 29 then
          oldmonster.den.monster_rank = 29
        end
        local newmonster = createMonster(oldmonster.den)
        table.insert(pieceGridTable, newmonster)
      end
      table.remove(pieceGridTable, i)
    end
  end

--GET ABILITY POINT
  if getCurrentXp() / OverXp >= 1 then
    updateCurrentXp(- OverXp) --getCurrentXp = 0
    updateCurrentAbilityPoint(1)
  end
-- Timer force card
  if drawForceCardText == true then
    timerForceCard = timerForceCard + dt
    if timerForceCard > timerOverForceCard then
      afterTimerForceCard()
      timerForceCard = 0
    end
  end
-- MARKER
  for i, piece in ipairs(markerTable) do
    piece.timer = piece.timer + dt
    if piece.timer > timerOverImpact then
      table.remove(markerTable,i)
    end
  end
--GAME TIMER
  if gameTimer == true then
    gameTime = gameTime + dt
  end

  if mineTimer == true then
    timerMine = timerMine + dt
    if timerMine >= timeOverMine then
      nbMineAllowed = nbMineAllowed + 1
      timerMine = 0
    end
  end
  
--timer preMenu
  if preMenuTimer == true then
    timerPreMenu = timerPreMenu + dt
    if timerPreMenu > timeOverPreMenu then
      timerPreMenu = 0
      drawPreMenu = false
      drawIntro = true
      preMenuTimer = false
    end
  end
  
  --timer settings
  if settingTimer == true then
    timerSetting = timerSetting + dt
    if timerSetting > timerOverSetting then
      timerSetting = 0
      settingTimer = false
    end
  end

-- timer SW
  if swTimer == true then
    timerSW = timerSW + dt
    if timerSW > timeOverSW then
      swTimer = false
      timerSW = 0
      drawIntro = false
      drawMenu = true
    end
  end
  if drawMenu == true or drawGame == true then
    swTimer = false
  end

--MONSTER
  timerMonster = timerMonster + dt
  if timerMonster >= timeOverMonster then
    MonsterMove()
    MonsterAttack()
    timerMonster = 0
  end

  timerOut = timerOut + dt
  if timerOut >= timeOverOut then
    local tmp = 0 
    local ii = 0 --empeche le code de boucler si tout les monstre sont sortient
    while tmp == 0 and ii<10 do
      tmp = MonsterOut()
      ii = ii + 1
    end
    timerOut = 0
    timeOverOut = love.math.random(MIN_OUT,MAX_OUT)
  end
end
--UPDATE ROUND 
  function updateRound()
    for i, piece in ipairs(pieceGridTable) do
      if piece.category == CATEGORY_HERO or piece.category == CATEGORY_TROUP or piece.category == CATEGORY_VEHICLE or piece.category == CATEGORY_BUILDING or piece.category == CATEGORY_HUNTER then
        if piece ~= nil and piece.round ~= nil then
          if piece.camp == currentSide then
            piece.round = piece.round - 1
            if piece.round < 0 then
              piece.round = 0
            end
          end
        end
        --immortal
        if piece ~= nil and piece.immortal ~= nil then
          if piece.camp == currentSide then
            piece.immortal = piece.immortal - 1
            if piece.immortal <= 0 then
              piece.immortal = 0
            end
          end
        end
        --freeze
        if piece ~= nil and piece.frozen ~= nil then
          if piece.camp ~= currentSide then
            if piece.frozen == true then
              piece.frozen = false
            end
          end
        end
        --rangemove
        if piece ~= nil and piece.rangeMove ~= nil then
          piece.rangeMove = piece.rangeMove - 1
          if piece.rangeMove <= 0 then
            piece.rangeMove = 0
            piece.range_move = piece.range_movebase
            piece.moves = piece.range_movebase
          end
        end
        --rangeatt
        if piece ~= nil and piece.rangeAtt ~= nil then
          piece.rangeAtt = piece.rangeAtt - 1
          if piece.rangeAtt <= 0 then
            piece.rangeAtt = 0
            piece.range_att = piece.range_attbase
          end
        end
        -- moreAtt
        if g_heroGiveAttRound ~= nil and piece.moreAtt ~= nil then
          if piece.camp == currentSide then
            if piece.moreAtt == true then
              piece.att = piece.attbase
              piece.moreAtt = false
            end
          end
        end
        --splitAtt
        if piece ~= nil and piece.splitAtt ~= nil then
          piece.splitAtt = piece.splitAtt - 1
          if piece.splitAtt <= 0 then
            piece.splitAtt = 0
            piece.shoot = 1
            piece.att = piece.att * g_nbSplit
            piece.splitAtt = nil
          end
        end
        --heroMax
        if piece ~= nil and piece.frozen ~= nil then
          if piece.camp ~= currentSide then
            if piece.frozen == true then
              piece.frozen = false
            end
          end
        end
      end
    end
  end
--SWITCH STEP
  function switchStep()
    currentStep = currentStep + 1
    hideAllCursors()
    stepMove = 0
    stepShoot = 0
  end
--SWITCH ROUND
  function switchRound()
    --AbilityCard
    if table.getn(abilityCardButton) == 1 then
      table.remove(abilityCardButton,1)
      updateCurrentAbilityPoint(priceCardAbility)
      if cardButton.level ~= nil then
        updateCurrentLevel(-1)
      elseif cardButton.level2 ~= nil then
        updateCurrentLevel2(-1)
      elseif cardButton.level3 ~= nil then
        updateCurrentLevel3(-1)
      elseif cardButton.level4 ~= nil then
        updateCurrentLevel4(-1)
      elseif cardButton.level5 ~= nil then
        updateCurrentLevel5(-1)
      end
    end

    timerRound = TIMER_ROUND_DURATION
    addCredits = true
    currentStep = STEP_MOVE
    hideAllCursors()
    initAbility()
    initForceCard()
    initHeroeFonction()
    moreCredits()
    Xp()

    --ForceCards()
    ButtonForceCard()
    if currentPlayeur == 1 then
      currentPlayeur = 2
      currentSide = DARK_SIDE
      --ForceCards()
    elseif
    currentPlayeur == 2 then
      currentPlayeur = 1
      currentSide = LIGHT_SIDE
      --ForceCards()
    end
    for i, piece in ipairs(pieceGridTable) do
      piece.moves = piece.range_move -- réinisialise le move
      piece.shoot = 1
    end

    updateRound()
    stepMove = 0
    stepShoot = 0

  end
--PAY ROUND
  function AddCredits()
    if currentPlayeur == 1 and addCredits == true then
      lighCredit = lighCredit + roundCredit+ nbLightMine*mineCredit + nbLightOutPoste*outPosteCredit
      lightTotalCredit = lightTotalCredit + roundCredit+ nbLightMine*mineCredit + nbLightOutPoste*outPosteCredit
      addCredits = false
    elseif currentPlayeur == 2  and addCredits == true then
      darkCredit = darkCredit + roundCredit + nbDarkMine*mineCredit + nbDarkOutPoste*outPosteCredit
      darkTotalCredit = darkTotalCredit + roundCredit+ nbDarkMine*mineCredit + nbDarkOutPoste*outPosteCredit
      addCredits = false
    end
  end
  function moreCredits()
    roundCredit = roundCredit + 20
    mineCredit = mineCredit + 20
    outPosteCredit = outPosteCredit + 80
  end
  function Xp()
    if currentSide == DARK_SIDE then
      updateCurrentXp(darkOutPosteXp*nbDarkOutPoste)
    elseif currentSide == LIGHT_SIDE then
      updateCurrentXp(lightOutPosteXp*nbLightOutPoste)
    end
  end
  function timer()
    timerButton = timerButton + 0.2
    if timerButton > timeOverButton then
    end
  end
  function win()
    drawGameB = false
    drawPieceInfo = false
    drawGame = false
    drawGameInfo = false
    startTimerRound = false
    gameTimer = false
    pieceGridTable = {}
    abilityCardButton = {}
    forceCardButton = {}

    if currentSide == LIGHT_SIDE then
      switchMusicJedi = true
      winnerPlayeur = 1
      jediWin = true
    elseif currentSide == DARK_SIDE then
      switchMusicSith = true
      winnerPlayeur = 2
      sithWin = true
    end
  end
--DRAW
  function love.draw()
    local mx , my = love.mouse.getPosition()
    love.graphics.setColor(1,1,1,1)
    if drawPreMenu == true then
      DrawBackGround()
      DrawPreMenu()
    end
    if drawIntro == true then
      DrawBackGround()
    end
    if drawSettings == true then
      DrawBackGround()
      DrawSettings()
    end
    if drawGame == true then
      timer()
      DrawBackGround()
      DrawGrid()
      DrawPiece()
    end
    if drawPieceInfo == true then
      timer()
      DrawPieceInfo()
    end
    if drawGameInfo == true then
      timer()
      DrawGameInfo()
      DrawForceCardButton()
      DrawAbilityCardButton()
    end
    if drawMenu == true then
      timer()
      DrawMenu()
    end
    if drawGameB == true and drawForceCardText == false then
      timer()
      DrawGameButton()
    end
    if drawAddAbility == true then
      timer()
      DrawBackGround()
      DrawAbilityTree()
      DrawAbilityInfo()
      DrawAbilityButton()
      DrawAbilityPointInfo()
    end
    if drawCategoryB == true then
      timer()
      DrawCategoryButton()
    end
    if drawBuildingB == true then
      timer()
      DrawPieceButton('Building')
    end
    if drawHeroB == true  then
      timer()
      DrawPieceButton('Hero')
    end
    if drawVehicleB == true  then
      timer()
      DrawPieceButton('Vehicle')
    end
    if drawTroupB == true  then
      timer()
      DrawPieceButton('Troup')
    end
    love.graphics.setColor(0,0,0,1)
    if g_abilityUnlimitedPowerShots ~= nil and g_abilityUnlimitedPowerShots > 0 then
      love.graphics.print(g_abilityUnlimitedPowerShots, mx +7 , my +10)
    end
    if g_abilityDoubleShotShots ~= nil and g_abilityDoubleShotShots > 0 then
      love.graphics.print(g_abilityDoubleShotShots, mx +7 , my +10)
    end
    if g_abilitySquadronPieces ~= nil and g_abilitySquadronPieces > 0 then
      love.graphics.print(g_abilitySquadronPieces, mx +7 , my +10)
    end
    if g_abilityBigShotShots ~= nil and g_abilityBigShotShots > 0 then
      love.graphics.print(g_abilityBigShotShots, mx +7 , my +10)
    end
    if g_abilityBigFleetPieces ~= nil and g_abilityBigFleetPieces > 0 then
      love.graphics.print(g_abilityBigFleetPieces, mx +7 , my +10)
    end
    if g_abilityHunterAttackPieces ~= nil and g_abilityHunterAttackPieces > 0 then
      love.graphics.print(g_abilityHunterAttackPieces, mx +7 , my +10)
    end
    if g_abilityJawaLootingPieces ~= nil and g_abilityJawaLootingPieces > 0 then
      love.graphics.print(g_abilityJawaLootingPieces, mx +7 , my +10)
    end
    if g_abilityConvoyPieces ~= nil and g_abilityConvoyPieces > 0 then
      love.graphics.print(g_abilityConvoyPieces, mx +7 , my +10)
    end
    if g_abilityTheOrderPieces ~= nil and g_abilityTheOrderPieces > 0 then
      love.graphics.print(g_abilityTheOrderPieces, mx +7 , my +10)
    end
    if g_abilityBigBountyPieces ~= nil and g_abilityBigBountyPieces > 0 then
      love.graphics.print(g_abilityBigBountyPieces, mx +7 , my +10)
    end
    if g_abilityMyMonsterPieces ~= nil and g_abilityMyMonsterPieces > 0 then
      love.graphics.print(g_abilityMyMonsterPieces, mx +7 , my +10)
    end
    if g_loseOneVehiclePiece ~= nil and g_loseOneVehiclePiece > 0 then
      love.graphics.print(g_loseOneVehiclePiece, mx +7 , my +10)
    end
    if g_receiveOneVehiclePiece ~= nil and g_receiveOneVehiclePiece > 0 then
      love.graphics.print(g_receiveOneVehiclePiece, mx +7 , my +10)
    end
    if g_receiveOneMinePiece ~= nil and g_receiveOneMinePiece > 0 then
      love.graphics.print(g_receiveOneMinePiece, mx +7 , my +10)
    end
    if g_receiveTwoMinePiece ~= nil and g_receiveTwoMinePiece > 0 then
      love.graphics.print(g_receiveTwoMinePiece, mx +7 , my +10)
    end
    if g_loseOneMinePiece ~= nil and g_loseOneMinePiece > 0 then
      love.graphics.print(g_loseOneMinePiece, mx +7 , my +10)
    end
    if g_loseTwoMinePiece ~= nil and g_loseTwoMinePiece > 0 then
      love.graphics.print(g_loseTwoMinePiece, mx +7 , my +10)
    end
    if g_receiveOneHeroPiece ~= nil and g_receiveOneHeroPiece > 0 then
      love.graphics.print(g_receiveOneHeroPiece, mx +7 , my +10)
    end
    if g_heroHpShots ~= nil and g_heroHpShots > 0 then
      love.graphics.print(g_heroHpShots, mx +7 , my +10)
    end
    if g_heroGiveAttShots ~= nil and g_heroGiveAttShots > 0 then
      love.graphics.print(g_heroGiveAttShots, mx +7 , my +10)
    end
    if g_heroFreezeShots ~= nil and g_heroFreezeShots > 0 then
      love.graphics.print(g_heroFreezeShots, mx +7 , my +10)
    end
    if g_heroSuicideShootShots ~= nil and g_heroSuicideShootShots > 0 then
      love.graphics.print(g_heroSuicideShootShots, mx +7 , my +10)
    end
    if g_heroShoot2AttShoots ~= nil and g_heroShoot2HpShoots ~= nil and g_heroShoot2AttShoots > 0 and g_heroShoot2HpShoots > 0 then
      love.graphics.print(g_heroShoot2HpShoots, mx +7 , my +10)
    end
    if g_heroShoot2AttShoots ~= nil and g_heroShoot2HpShoots ~= nil and g_heroShoot2AttShoots > 0 and g_heroShoot2HpShoots <= 0 then
      love.graphics.print(g_heroShoot2AttShoots, mx +7 , my +10)
    end
    if g_heroMaxAttShoots ~= nil and g_heroMaxHpShoots ~= nil and g_heroMaxFreezeShoots ~= nil and g_heroMaxAttShoots > 0 and g_heroMaxHpShoots > 0 and g_heroMaxFreezeShoots > 0 then
      love.graphics.print(g_heroMaxHpShoots, mx +7 , my +10)
    end
    if g_heroMaxAttShoots ~= nil and g_heroMaxHpShoots ~= nil and g_heroMaxFreezeShoots ~= nil and g_heroMaxAttShoots > 0 and g_heroMaxHpShoots <= 0 and g_heroMaxFreezeShoots > 0 then
      love.graphics.print(g_heroMaxAttShoots, mx +7 , my +10)
    end
    if g_heroMaxAttShoots ~= nil and g_heroMaxHpShoots ~= nil and g_heroMaxFreezeShoots ~= nil and g_heroMaxAttShoots <= 0 and g_heroMaxHpShoots <= 0 and g_heroMaxFreezeShoots > 0 then
      love.graphics.print(g_heroMaxFreezeShoots, mx +7 , my +10)
    end

    if jediWin == true then
      DrawJediWin()
      DrawWinInfo()
      DrawWinButton()
    end
    if sithLose == true then
      DrawSithLose()
      DrawWinInfo()
      DrawWinButton()
    end
    if sithWin == true then
      DrawSithWin()
      DrawWinInfo()
      DrawWinButton()
    end
    if jediLose == true then
      DrawJediLose()
      DrawWinInfo()
      DrawWinButton()
    end
    DrawAllCursor()

    love.graphics.setColor(1,1,1,1)
    if drawIntro == true then
      local margin2 = 16.5
      love.graphics.draw(battle_img, margin2)
      love.graphics.draw(heroes_img, margin2 + battle_img:getWidth())
      love.graphics.draw(logoSW_img, width/2, height/2, 0, logoSW_size , logoSW_size , logoSW_img:getWidth()/2, logoSW_img:getHeight()/2)
    end

    
    
    --FPS
    love.graphics.print(" FPS: "..tostring(love.timer.getFPS( )))
    
    -- mine info
    if drawGame == true then
      love.graphics.print("Nb mine allowed: "..nbMineAllowed, width - (width * (1/5) + 30))
      if timerMine ~= nil then
        love.graphics.print("Next mine in: "..math.ceil(timeOverMine - timerMine).."s", width - 150)
      end
    end
  end

-- UTILS
  function getXY(l,c)
    if c ~= nil and l ~= nil then
      local h = Grid.cellSize
      local w = h
      local x,y
      x = (c-1)*w
      y = (l-1)*h
      x = x + Grid.offsetX
      y = y + Grid.offsetY
      return x, y
    end
  end

  function findClickedCell(mx, my)
    local h = Grid.cellSize
    local w = h
    for l=1,Grid.height do
      for c=1,Grid.width do
        x = (c-1)*w
        y = (l-1)*h
        x = x + Grid.offsetX
        y = y + Grid.offsetY
        if mx>x and mx<x+w and my>y and my<y+h then
          -- ATTENTION l or c can be nil
          return l, c
        end
      end
    end
  end
  function getCurrentNbPieceBase(side)
    local count = 0
    for i, piece in ipairs(pieceGridTable) do
      if side == DARK_SIDE and piece.l == 2 then
        count = count + 1
      elseif side == LIGHT_SIDE and piece.l == 20 then
        count = count + 1
      end
    end
    if count == 21 then 
      return true
    else
      return false
    end
  end
  function getCurrentNbBuildingBase(side)
    local count = 0
    for i, piece in ipairs(pieceGridTable) do
      if side == DARK_SIDE and piece.l == 1 then
        count = count + 1
      elseif side == LIGHT_SIDE and piece.l == 21 then
        count = count + 1
      end
    end
    if count == 21 then 
      return true
    else
      return false
    end
  end
  function getDistanceBetween( bx, by, mx, my)-- formule pour calculer distance(centreCercle ; souris)
    return math.sqrt((my - by)^2 + (mx - bx)^2)
  end
  function getCurrentAbilityPoint()
    if currentSide == DARK_SIDE then
      return darkAbilityPoint
    else
      return lightAbilityPoint
    end
  end
  function getCurrentCredit()
    if currentSide == DARK_SIDE then
      return darkCredit
    else
      return lighCredit
    end
  end
  function getTotalCurrentCredit()
    if currentSide == DARK_SIDE then
      return darkTotalCredit
    else
      return lightTotalCredit
    end
  end
  function getCurrentXp()
    if currentSide == LIGHT_SIDE then
      return lightXp
    else
      return darkXp
    end
  end
  function getCurrentLevel()
    if currentSide == LIGHT_SIDE then
      return lightLevelAbility
    else
      return darkLevelAbility
    end
  end
  function getCurrentLevel2()
    if currentSide == LIGHT_SIDE then
      return lightLevelAbility2
    else
      return darkLevelAbility2
    end
  end
  function getCurrentLevel3()
    if currentSide == LIGHT_SIDE then
      return lightLevelAbility3
    else
      return darkLevelAbility3
    end
  end
  function getCurrentLevel4()
    if currentSide == LIGHT_SIDE then
      return lightLevelAbility4
    else
      return darkLevelAbility4
    end
  end
  function getCurrentLevel5()
    if currentSide == LIGHT_SIDE then
      return lightLevelAbility5
    else
      return darkLevelAbility5
    end
  end
  function getCurrentTotalPieces()
    if currentSide == DARK_SIDE then
      return darkTotalPieces
    elseif currentSide == LIGHT_SIDE then
      return lightTotalPieces
    end
  end
  function getCurrentDamagedInflicted()
    if currentSide == DARK_SIDE then
      darkTotalDamageInflicted2 = darkTotalDamagedInflictedMonster + darkTotalDamageInflicted
      return darkTotalDamageInflicted2
    elseif currentSide == LIGHT_SIDE then
      lightTotalDamagedInflicted2 = lightTotalDamagedInflictedMonster + lightTotalDamageInflicted
      return lightTotalDamagedInflicted2
    end
  end
  function getCurrentDamagedReceive()
    if currentSide == DARK_SIDE then
      darkTotalDamageReceive3 = lightTotalDamageReceive2 + lightTotalDamageInflicted + darkMonsterDamage
      return darkTotalDamageReceive3
    elseif currentSide == LIGHT_SIDE then
      lightTotalDamageReceive3 = darkTotalDamageReceive2 + darkTotalDamageInflicted + lightMonsterDamage
      return lightTotalDamageReceive3
    end
  end
  function getCurrentTotalPieceLost()
    if currentSide == DARK_SIDE then
      return darkPieceLost
    else
      return lightPieceLost
    end
  end
  function getCurrentMonsterDamage()
    if currentSide == DARK_SIDE then
      return darkMonsterDamage
    else
      return lightMonsterDamage
    end
  end
  function getCurrentPieceKill()
    if currentSide == DARK_SIDE then
      return darkPieceKill
    else
      return lightPieceKill
    end
  end
  function getCurrentMonsterKill()
    if currentSide == DARK_SIDE then
      return darkMonsterKill
    else
      return lightMonsterKill
    end
  end
  function updateCurrentCredit(amount)
    if currentSide == DARK_SIDE then
      darkCredit = darkCredit + amount
      if darkCredit < 0 then
        darkCredit = 0
      end
    else
      lighCredit = lighCredit + amount
      if lighCredit < 0 then
        lighCredit = 0
      end
    end
    table.insert(markerTable, {markertype='credit', nombre = amount, timer=0})
  end
  function updateCurrentTotalCredit(amount)
    if currentSide == DARK_SIDE then
      darkTotalCredit = darkTotalCredit + amount
    else
      lightTotalCredit = lightTotalCredit + amount
    end
  end
  function updateCurrentXp(amount)
    if currentSide == DARK_SIDE then
      darkXp = darkXp + amount
    else
      lightXp = lightXp + amount
    end
  end
  function updateCurrentAbilityPoint(amount)
    if currentSide == DARK_SIDE then
      darkAbilityPoint = darkAbilityPoint + amount
      if darkAbilityPoint < 0 then
        darkAbilityPoint = 0
      end
    else
      lightAbilityPoint = lightAbilityPoint + amount
      if lightAbilityPoint < 0 then
        lightAbilityPoint = 0
      end
    end
  end
  function updateCurrentLevel(amount)
    if currentSide == DARK_SIDE then
      darkLevelAbility = darkLevelAbility + amount
    else
      lightLevelAbility = lightLevelAbility + amount
    end
  end
  function updateCurrentLevel2(amount)
    if currentSide == DARK_SIDE then
      darkLevelAbility2 = darkLevelAbility2 + amount
    else
      lightLevelAbility2 = lightLevelAbility2 + amount
    end
  end
  function updateCurrentLevel3(amount)
    if currentSide == DARK_SIDE then
      darkLevelAbility3 = darkLevelAbility3 + amount
    else
      lightLevelAbility3 = lightLevelAbility3 + amount
    end
  end
  function updateCurrentLevel4(amount)
    if currentSide == DARK_SIDE then
      darkLevelAbility4 = darkLevelAbility4 + amount
    else
      lightLevelAbility4 = lightLevelAbility4 + amount
    end
  end
  function updateCurrentLevel5(amount)
    if currentSide == DARK_SIDE then
      darkLevelAbility5 = darkLevelAbility5 + amount
    else
      lightLevelAbility5 = lightLevelAbility5 + amount
    end
  end
  function updateCurrentTotalPiece(amount)
    if currentSide == DARK_SIDE then
      darkTotalPieces = darkTotalPieces + amount
    else
      lightTotalPieces = lightTotalPieces + amount
    end
  end
  function updateCurrentDamagedInflicted(amount)
    if currentSide == DARK_SIDE then
      darkTotalDamageInflicted = darkTotalDamageInflicted + amount
    else
      lightTotalDamageInflicted = lightTotalDamageInflicted + amount
    end
  end
  function updateCurrentDamagedInflictedMonster(amount)
    if currentSide == DARK_SIDE then
      darkTotalDamagedInflictedMonster = darkTotalDamagedInflictedMonster + amount
    else
      lightTotalDamagedInflictedMonster = lightTotalDamagedInflictedMonster + amount
    end
  end
  function updateCurrentDamagedReceive(amount)
    if currentSide == LIGHT_SIDE then
      darkTotalDamageReceive = darkTotalDamageReceive + amount
    else 
      lightTotalDamageReceive= lightTotalDamageReceive + amount
    end
  end
  function updateCurrentDamagedReceive2(amount)
    if currentSide == DARK_SIDE then
      darkTotalDamageReceive2 = darkTotalDamageReceive2 + amount
    else 
      lightTotalDamageReceive2= lightTotalDamageReceive2 + amount
    end
  end
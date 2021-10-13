function Heros()

  --LIGHT HERO

yoda={}
yoda.name ='Yoda'
yoda.camp= LIGHT_SIDE
yoda.rank='Grand Master of the Jedi Order'
yoda.att=52000
yoda.range_att=2
yoda.hp=72800
yoda.range_move=3
yoda.price=306000
yoda.img=love.graphics.newImage('images/yoda.png')
yoda.round=4
yoda.special='immortal 1r + fige 1r \r\n+ 20000att + 20000hp'
yoda.category=CATEGORY_HERO
yoda.fn =heroMax
yoda.param1 =1
yoda.param2 =1
yoda.param3 =1
yoda.param4 =20000
yoda.param5 =1
yoda.param6 =1
yoda.param7 ='Yoda'
table.insert(pieceTable,yoda)

sateleShan={}
sateleShan.name ='Satele Shan'
sateleShan.camp= LIGHT_SIDE
sateleShan.rank='Grand Master of the Jedi Order'
sateleShan.att=48000
sateleShan.range_att=2
sateleShan.hp=67200
sateleShan.range_move=3
sateleShan.price=263067
sateleShan.img=love.graphics.newImage('images/satele.png')
sateleShan.round=3
sateleShan.special='12000att 2 times + 12000hp \r\n2 times'
sateleShan.category=CATEGORY_HERO
sateleShan.fn =heroShoot2
sateleShan.param1 =2
sateleShan.param2 =2
sateleShan.param3 =12000
sateleShan.param4 ='Satele Shan'
table.insert(pieceTable,sateleShan)

maceWindu={}
maceWindu.name ='Mace Windu'
maceWindu.camp = LIGHT_SIDE
maceWindu.rank='Member of the High Council'
maceWindu.att=44000
maceWindu.range_att=2
maceWindu.hp=61600
maceWindu.range_move=3
maceWindu.price=233200
maceWindu.img=love.graphics.newImage('images/mace.png')
maceWindu.round=4
maceWindu.special='dies + 22000att 4 times'
maceWindu.category=CATEGORY_HERO
maceWindu.fn =heroSuicideShoot
maceWindu.param1 =4
maceWindu.param2 =22000
maceWindu.param3 ='Mace Windu'
maceWindu.param4 =nil
table.insert(pieceTable,maceWindu)

lukeSkywalker={}
lukeSkywalker.name ='Luke Skywalker'
lukeSkywalker.camp = LIGHT_SIDE
lukeSkywalker.rank='Member of the High Council'
lukeSkywalker.att=40000
lukeSkywalker.range_att=2
lukeSkywalker.hp=56000
lukeSkywalker.range_move=3
lukeSkywalker.price=210667
lukeSkywalker.img=love.graphics.newImage('images/luke.png')
lukeSkywalker.round=3
lukeSkywalker.special='hp * 1.1 (max 74600hp) '
lukeSkywalker.category=CATEGORY_HERO
lukeSkywalker.fn =heroHp
lukeSkywalker.param1 =1.1
lukeSkywalker.param2 =74600
lukeSkywalker.param3 =nil
lukeSkywalker.param4 =nil
table.insert(pieceTable,lukeSkywalker)

reySkywalker={}
reySkywalker.name ='Rey Skywalker'
reySkywalker.camp = LIGHT_SIDE
reySkywalker.rank='Jedi'
reySkywalker.att=38000
reySkywalker.range_att=2
reySkywalker.hp=53200
reySkywalker.range_move=3
reySkywalker.price=201067
reySkywalker.img=love.graphics.newImage('images/rey.png')
reySkywalker.round=4
reySkywalker.special='dies + 77500 credits'
reySkywalker.category=CATEGORY_HERO
reySkywalker.fn =heroSucideMoney
reySkywalker.param1 =77500
reySkywalker.param2 =nil
reySkywalker.param3 =nil
reySkywalker.param4 =nil
table.insert(pieceTable,reySkywalker)

obiWanKenobi={}
obiWanKenobi.name ='Obi-Wan Kenobi'
obiWanKenobi.camp = LIGHT_SIDE
obiWanKenobi.rank='Member of the High Council'
obiWanKenobi.att=35000
obiWanKenobi.range_att=2
obiWanKenobi.hp=49000
obiWanKenobi.range_move=3
obiWanKenobi.price=199000
obiWanKenobi.img=love.graphics.newImage('images/obiwan.png')
obiWanKenobi.round=3
obiWanKenobi.special='att * 1.1 (max50600att) '
obiWanKenobi.category=CATEGORY_HERO
obiWanKenobi.fn =heroAtt
obiWanKenobi.param1 =1.1
obiWanKenobi.param2 =50600
obiWanKenobi.param3 =nil
obiWanKenobi.param4 =nil
table.insert(pieceTable,obiWanKenobi)

anakinSkywalker={}
anakinSkywalker.name ='Anakin Skywalker'
anakinSkywalker.camp = LIGHT_SIDE
anakinSkywalker.rank='Jedi Master'
anakinSkywalker.att=34000
anakinSkywalker.range_att=2
anakinSkywalker.hp=47600
anakinSkywalker.range_move=3
anakinSkywalker.price=180867
anakinSkywalker.img=love.graphics.newImage('images/anakin.jpg')
anakinSkywalker.round=3
anakinSkywalker.special='8500hp 4 times'
anakinSkywalker.category=CATEGORY_HERO
anakinSkywalker.fn =heroShoot
anakinSkywalker.param1 =4
anakinSkywalker.param2 =8500
anakinSkywalker.param3 ='Anakin Skywalker'
anakinSkywalker.param4 =nil
table.insert(pieceTable,anakinSkywalker)

ploKoon={}
ploKoon.name ='Plo Koon'
ploKoon.camp = LIGHT_SIDE
ploKoon.rank='Member of the High Council'
ploKoon.att=32000
ploKoon.range_att=2
ploKoon.hp=44800
ploKoon.range_move=3
ploKoon.price=164267
ploKoon.img=love.graphics.newImage('images/plo koon.jpg')
ploKoon.round=3
ploKoon.special='8000att 4 times'
ploKoon.category=CATEGORY_HERO
ploKoon.fn =heroShoot
ploKoon.param1 =4
ploKoon.param2 =-8000
ploKoon.param3 ='Plo Koon'
ploKoon.param4 =nil
table.insert(pieceTable,ploKoon)

maraJade={}
maraJade.name ='Mara Jade'
maraJade.camp = LIGHT_SIDE
maraJade.rank='Jedi Master'
maraJade.att=30000
maraJade.range_att=2
maraJade.hp=42000
maraJade.range_move=3
maraJade.price=164000
maraJade.img=love.graphics.newImage('images/mara.jpg')
maraJade.round=3
maraJade.special='7500att 2 times + 7500hp \r\n2 times'
maraJade.category=CATEGORY_HERO
maraJade.fn =heroShoot2
maraJade.param1 =2
maraJade.param2 =2
maraJade.param3 =7500
maraJade.param4 ='Mara Jade'
table.insert(pieceTable,maraJade)

cadeSkywalker={}
cadeSkywalker.name ='Cade Skywalker'
cadeSkywalker.camp = LIGHT_SIDE
cadeSkywalker.rank='Jedi Master'
cadeSkywalker.att=28000
cadeSkywalker.range_att=2
cadeSkywalker.hp=39200
cadeSkywalker.range_move=3
cadeSkywalker.price=148400
cadeSkywalker.img=love.graphics.newImage('images/cade_skywalker.png')
cadeSkywalker.round=4
cadeSkywalker.special='dies + 14000att 4 times'
cadeSkywalker.category=CATEGORY_HERO
cadeSkywalker.fn =heroSuicideShoot
cadeSkywalker.param1 =4
cadeSkywalker.param2 =14000
cadeSkywalker.param3 ='Cade Skywalker'
cadeSkywalker.param4 =nil
table.insert(pieceTable,cadeSkywalker)

ahsokaTano={}
ahsokaTano.name ='Ahsoka Tano'
ahsokaTano.camp = LIGHT_SIDE
ahsokaTano.rank='Jedi Master'
ahsokaTano.att=26000
ahsokaTano.range_att=2
ahsokaTano.hp=36400
ahsokaTano.range_move=3
ahsokaTano.price=136550
ahsokaTano.img=love.graphics.newImage('images/ashoka.png')
ahsokaTano.round=4
ahsokaTano.special='range move + 5 1r'
ahsokaTano.category=CATEGORY_HERO
ahsokaTano.fn =heroRangeMove
ahsokaTano.param1 =1
ahsokaTano.param2 =nil
ahsokaTano.param3 =nil
ahsokaTano.param4 =nil
table.insert(pieceTable,ahsokaTano)

jacenSolo={}
jacenSolo.name ='Jacen Solo'
jacenSolo.camp = LIGHT_SIDE
jacenSolo.rank='Jedi Master'
jacenSolo.att=24000
jacenSolo.range_att=2
jacenSolo.hp=33600
jacenSolo.range_move=3
jacenSolo.price=123950
jacenSolo.img=love.graphics.newImage('images/jacen.jpg')
jacenSolo.round=4
jacenSolo.special='range att + 5 1r'
jacenSolo.category=CATEGORY_HERO
jacenSolo.fn =heroRangeAtt
jacenSolo.param1 =1
jacenSolo.param2 =nil
jacenSolo.param3 =nil
jacenSolo.param4 =nil
table.insert(pieceTable,jacenSolo)

jainaSolo={}
jainaSolo.name ='Jaina Solo'
jainaSolo.camp = LIGHT_SIDE
jainaSolo.rank='Jedi Master'
jainaSolo.att=22000
jainaSolo.range_att=2
jainaSolo.hp=30800
jainaSolo.range_move=3
jainaSolo.price=120267
jainaSolo.img=love.graphics.newImage('images/jaina solo.jpg')
jainaSolo.round=3
jainaSolo.special='give 7400att 3 times 1r'
jainaSolo.category=CATEGORY_HERO
jainaSolo.fn =heroGiveAtt
jainaSolo.param1 =3
jainaSolo.param2 =-7400
jainaSolo.param3 =1
jainaSolo.param4='Jaina Solo'
table.insert(pieceTable,jainaSolo)

quiGonJinn={}
quiGonJinn.name ='Qui-Gon Jinn'
quiGonJinn.camp = LIGHT_SIDE
quiGonJinn.rank='Jedi Master'
quiGonJinn.att=20000
quiGonJinn.range_att=2
quiGonJinn.hp=28000
quiGonJinn.range_move=3
quiGonJinn.price=105333
quiGonJinn.img=love.graphics.newImage('images/quigonjin.jpg')
quiGonJinn.round=3
quiGonJinn.special='hp * 1.1 (max 37300hp ) '
quiGonJinn.category=CATEGORY_HERO
quiGonJinn.fn =heroHp
quiGonJinn.param1 =1.1
quiGonJinn.param2 =37300
quiGonJinn.param3 =nil
quiGonJinn.param4 =nil
table.insert(pieceTable,quiGonJinn)

nGataDelGormo={}
nGataDelGormo.name ="N'Gata del Gormo"
nGataDelGormo.camp = LIGHT_SIDE
nGataDelGormo.rank='Jedi Master'
nGataDelGormo.att=18000
nGataDelGormo.range_att=2
nGataDelGormo.hp=25200
nGataDelGormo.range_move=3
nGataDelGormo.price=92400
nGataDelGormo.img=love.graphics.newImage('images/N_gata_del_gormo.png')
nGataDelGormo.round=3
nGataDelGormo.special='att * 1.1 (max 24000att) '
nGataDelGormo.category=CATEGORY_HERO
nGataDelGormo.fn =heroAtt
nGataDelGormo.param1 =1.1
nGataDelGormo.param2 =24000
nGataDelGormo.param3 =nil
nGataDelGormo.param4 =nil
table.insert(pieceTable,nGataDelGormo)

nomiSunrider={}
nomiSunrider.name ='Nomi Sunrider'
nomiSunrider.camp = LIGHT_SIDE
nomiSunrider.rank='Jedi Master'
nomiSunrider.att=16000
nomiSunrider.range_att=2
nomiSunrider.hp=22400
nomiSunrider.range_move=3
nomiSunrider.price=84267
nomiSunrider.img=love.graphics.newImage('images/nomi sunrider.jpg')
nomiSunrider.round=3
nomiSunrider.special='freezes 1 ennemie 1r'
nomiSunrider.category=CATEGORY_HERO
nomiSunrider.fn =heroFreeze
nomiSunrider.param1 =1
nomiSunrider.param2 =1
nomiSunrider.param3 ='Nomi Sunrider'
nomiSunrider.param4 =nil
table.insert(pieceTable,nomiSunrider)

kiAdiMundi={}
kiAdiMundi.name ='Ki-Adi-Mundi'
kiAdiMundi.camp = LIGHT_SIDE
kiAdiMundi.rank='Member of the High Council'
kiAdiMundi.att=14000
kiAdiMundi.range_att=2
kiAdiMundi.hp=19600
kiAdiMundi.range_move=3
kiAdiMundi.price=73733
kiAdiMundi.img=love.graphics.newImage('images/kiadimundi.jpg')
kiAdiMundi.round=3
kiAdiMundi.special='immortal 1r'
kiAdiMundi.category=CATEGORY_HERO
kiAdiMundi.fn =heroImmortal
kiAdiMundi.param1 =1
kiAdiMundi.param2 =nil
kiAdiMundi.param3 =nil
kiAdiMundi.param4 =nil
table.insert(pieceTable,kiAdiMundi)

kitFisto={}
kitFisto.name ='Kit Fisto'
kitFisto.camp = LIGHT_SIDE
kitFisto.rank='Member of the High Council'
kitFisto.att=12000
kitFisto.range_att=2
kitFisto.hp=16800
kitFisto.range_move=3
kitFisto.price=67600
kitFisto.img=love.graphics.newImage('images/kitfisto.jpg')
kitFisto.round=4
kitFisto.special='dies + 25000 credits'
kitFisto.category=CATEGORY_HERO
kitFisto.fn =heroSucideMoney
kitFisto.param1 =25000
kitFisto.param2 =nil
kitFisto.param3 =nil
kitFisto.param4 =nil
table.insert(pieceTable,kitFisto)

kananJarrus={}
kananJarrus.name ='Kanan Jarrus'
kananJarrus.camp = LIGHT_SIDE
kananJarrus.rank='Jedi Master'
kananJarrus.att=10000
kananJarrus.range_att=2
kananJarrus.hp=14000
kananJarrus.range_move=3
kananJarrus.price=53333
kananJarrus.img=love.graphics.newImage('images/Kanan_Jarrus.png')
kananJarrus.round=3
kananJarrus.special='4000hp 2 times'
kananJarrus.category=CATEGORY_HERO
kananJarrus.fn =heroShoot
kananJarrus.param1 =2
kananJarrus.param2 =4500
kananJarrus.param3 ='Kanan Jarrus'
kananJarrus.param4 =nil
table.insert(pieceTable,kananJarrus)

luminaraUnduli={}
luminaraUnduli.name ='Luminara Unduli'
luminaraUnduli.camp = LIGHT_SIDE
luminaraUnduli.rank='Jedi Master'
luminaraUnduli.att=9000
luminaraUnduli.range_att=2
luminaraUnduli.hp=12600
luminaraUnduli.range_move=3
luminaraUnduli.price=49200
luminaraUnduli.img=love.graphics.newImage('images/Luminara_.jpg')
luminaraUnduli.round=3
luminaraUnduli.special='4500att 2 times'
luminaraUnduli.category=CATEGORY_HERO
luminaraUnduli.fn =heroShoot
luminaraUnduli.param1 =2
luminaraUnduli.param2 =-4500
luminaraUnduli.param3 ='Luminara Unduli'
luminaraUnduli.param4 =nil
table.insert(pieceTable,luminaraUnduli)

quinlanVos={}
quinlanVos.name ='Quinlan Vos'
quinlanVos.camp = LIGHT_SIDE
quinlanVos.rank='Jedi Master'
quinlanVos.att=7500
quinlanVos.range_att=2
quinlanVos.hp=10500
quinlanVos.range_move=3
quinlanVos.price=41000
quinlanVos.img=love.graphics.newImage('images/quinlan vos.jpg')
quinlanVos.round=3
quinlanVos.special='7500hp'
quinlanVos.category=CATEGORY_HERO
quinlanVos.fn =heroShoot
quinlanVos.param1 =1
quinlanVos.param2 =7500
quinlanVos.param3 ='Quinlan Vos'
quinlanVos.param4 =nil
table.insert(pieceTable,quinlanVos)

ezraBridger={}
ezraBridger.name ='Ezra Bridger'
ezraBridger.camp = LIGHT_SIDE
ezraBridger.rank='Jedi'
ezraBridger.att=6000
ezraBridger.range_att=2
ezraBridger.hp=8400
ezraBridger.range_move=3
ezraBridger.price=32800
ezraBridger.img=love.graphics.newImage('images/ezra.png')
ezraBridger.round=3
ezraBridger.special='6000att '
ezraBridger.category=CATEGORY_HERO
ezraBridger.fn =heroShoot
ezraBridger.param1 =1
ezraBridger.param2 =-6000
ezraBridger.param3 ='Ezra Bridger'
ezraBridger.param4 =nil
table.insert(pieceTable,ezraBridger)

shaakTi={}
shaakTi.name ='Shaak Ti'
shaakTi.camp = LIGHT_SIDE
shaakTi.rank='Member of the High Council'
shaakTi.att=5000
shaakTi.range_att=2
shaakTi.hp=7000
shaakTi.range_move=3
shaakTi.price=27333
shaakTi.img=love.graphics.newImage('images/shaak ti.jpg')
shaakTi.round=3
shaakTi.special='2500att + 2500hp'
shaakTi.category=CATEGORY_HERO
shaakTi.fn =heroShoot2
shaakTi.param1 =1
shaakTi.param2 =1
shaakTi.param3 =2500
shaakTi.param4 ='Shaak Ti'table.insert(pieceTable,shaakTi)

mando={}
mando.name ='Mando'
mando.camp = LIGHT_SIDE
mando.rank='Bounty Hunter'
mando.att=4000
mando.range_att=2
mando.hp=5600
mando.range_move=3
mando.price=21200
mando.img=love.graphics.newImage('images/mando.png')
mando.round=4
mando.special='dies + 2000att 4 times'
mando.category=CATEGORY_HERO
mando.fn =heroSuicideShoot
mando.param1 =4
mando.param2 =2000
mando.param3 ='Mando'
mando.param4 =nil
table.insert(pieceTable,mando)

chirrutImwe={}
chirrutImwe.name ='Chirrut Îmwe'
chirrutImwe.camp = LIGHT_SIDE
chirrutImwe.rank='Guardian of the Whills'
chirrutImwe.att=3000
chirrutImwe.range_att=2
chirrutImwe.hp=4200
chirrutImwe.range_move=3
chirrutImwe.price=15525
chirrutImwe.img=love.graphics.newImage('images/chirrut.jpg')
chirrutImwe.round=4
chirrutImwe.special='range move + 5 1r'
chirrutImwe.category=CATEGORY_HERO
chirrutImwe.fn =heroRangeMove
chirrutImwe.param1 =1
chirrutImwe.param2 =nil
chirrutImwe.param3 =nil
chirrutImwe.param4 =nil
table.insert(pieceTable,chirrutImwe)

enfysNest={}
enfysNest.name ='Enfys Nest'
enfysNest.camp = LIGHT_SIDE
enfysNest.rank='Leader of the Cloud-Riders'
enfysNest.att=2000
enfysNest.range_att=2
enfysNest.hp=2800
enfysNest.range_move=3
enfysNest.price=10350
enfysNest.img=love.graphics.newImage('images/enfys_nest.png')
enfysNest.round=4
enfysNest.special='range att + 5 1r'
enfysNest.category=CATEGORY_HERO
enfysNest.fn =heroRangeAtt
enfysNest.param1 =1
enfysNest.param2 =nil
enfysNest.param3 =nil
enfysNest.param4 =nil
table.insert(pieceTable,enfysNest)

hanSolo={}
hanSolo.name ='Han Solo'
hanSolo.camp = LIGHT_SIDE
hanSolo.rank='Rebel General /Smuggler'
hanSolo.att=1500
hanSolo.range_att=2
hanSolo.hp=2100
hanSolo.range_move=3
hanSolo.price=8200
hanSolo.img=love.graphics.newImage('images/hansolo.png')
hanSolo.round=3
hanSolo.special='give 500att 3 times 1r'
hanSolo.category=CATEGORY_HERO
hanSolo.fn =heroGiveAtt
hanSolo.param1 =3
hanSolo.param2 =-500
hanSolo.param3 =1
hanSolo.param4 ='Han Solo'
table.insert(pieceTable,hanSolo)

chewbacca={}
chewbacca.name ='Chewbacca'
chewbacca.camp = LIGHT_SIDE
chewbacca.rank='Rebel  '
chewbacca.att=1300
chewbacca.range_att=2
chewbacca.hp=1820
chewbacca.range_move=3
chewbacca.price=6847
chewbacca.img=love.graphics.newImage('images/chewbacca.png')
chewbacca.round=3
chewbacca.special='hp * 1.1 (max 2420hp)'
chewbacca.category=CATEGORY_HERO
chewbacca.fn =heroHp
chewbacca.param1 =1.1
chewbacca.param2 =2420
chewbacca.param3 =nil
chewbacca.param4 =nil
table.insert(pieceTable,chewbacca)

landoCalrissian={}
landoCalrissian.name ='Lando Calrissian'
landoCalrissian.camp = LIGHT_SIDE
landoCalrissian.rank='Rebel General / Smuggler/ Gambler'
landoCalrissian.att=1100
landoCalrissian.range_att=2
landoCalrissian.hp=1540
landoCalrissian.range_move=3
landoCalrissian.price=5647
landoCalrissian.img=love.graphics.newImage('images/lando.jpg')
landoCalrissian.round=3
landoCalrissian.special='att * 1.1 (max 1460att)'
landoCalrissian.category=CATEGORY_HERO
landoCalrissian.fn =heroAtt
landoCalrissian.param1 =1.1
landoCalrissian.param2 =1460
landoCalrissian.param3 =nil
landoCalrissian.param4 =nil
table.insert(pieceTable,landoCalrissian)

finn={}
finn.name ='Finn'
finn.camp = LIGHT_SIDE
finn.rank='Resistance General'
finn.att=900
finn.range_att=2
finn.hp=1260
finn.range_move=3
finn.price=4740
finn.img=love.graphics.newImage('images/finn.jpg')
finn.round=3
finn.special='freezes 1 ennemie 1r'
finn.category=CATEGORY_HERO
finn.fn =heroFreeze
finn.param1 =1
finn.param2 =1
finn.param3 ='Finn'
finn.param4 =nil
table.insert(pieceTable,finn)

leiaOrgana={}
leiaOrgana.name ='Leia Organa'
leiaOrgana.camp = LIGHT_SIDE
leiaOrgana.rank='Supreme commander of the Resistance'
leiaOrgana.att=800
leiaOrgana.range_att=2
leiaOrgana.hp=1120
leiaOrgana.range_move=3
leiaOrgana.price=4213
leiaOrgana.img=love.graphics.newImage('images/leia.jpg')
leiaOrgana.round=3
leiaOrgana.special='immortal 1r'
leiaOrgana.category=CATEGORY_HERO
leiaOrgana.fn =heroImmortal
leiaOrgana.param1 =1
leiaOrgana.param2 =nil
leiaOrgana.param3 =nil
leiaOrgana.param4 =nil
table.insert(pieceTable,leiaOrgana)

r2d2={}
r2d2.name ='R2D2'
r2d2.camp = LIGHT_SIDE
r2d2.rank='Rebel'
r2d2.att=600
r2d2.range_att=2
r2d2.hp=840
r2d2.range_move=3
r2d2.price=3400
r2d2.img=love.graphics.newImage('images/r2d2.png')
r2d2.round=4
r2d2.special='dies + 1300 credits'
r2d2.category=CATEGORY_HERO
r2d2.fn =heroSucideMoney
r2d2.param1 =1300
r2d2.param2 =nil
r2d2.param3 =nil
r2d2.param4 =nil
table.insert(pieceTable,r2d2)

heraSyndulla={}
heraSyndulla.name ='Hera Syndulla'
heraSyndulla.camp = LIGHT_SIDE
heraSyndulla.rank='Rebel / Leader of the Phenix Squadron'
heraSyndulla.att=500
heraSyndulla.range_att=2
heraSyndulla.hp=700
heraSyndulla.range_move=3
heraSyndulla.price=2600
heraSyndulla.img=love.graphics.newImage('images/hera.png')
heraSyndulla.round=3
heraSyndulla.special='Ghost price - 300$ (min 2020$)'
heraSyndulla.category=CATEGORY_HERO
heraSyndulla.fn =heroLittlePrice
heraSyndulla.param1 =300
heraSyndulla.param2 =2020
heraSyndulla.param3 =nil
heraSyndulla.param4 =nil
table.insert(pieceTable,heraSyndulla)

babyYoda={}
babyYoda.name ='Baby Yoda'
babyYoda.camp = LIGHT_SIDE
babyYoda.rank='Jedi'
babyYoda.att=400
babyYoda.range_att=2
babyYoda.hp=560
babyYoda.range_move=3
babyYoda.price=2453
babyYoda.img=love.graphics.newImage('images/baby_yoda.png')
babyYoda.round=3
babyYoda.special='400hp 2 times'
babyYoda.category=CATEGORY_HERO
babyYoda.fn =heroShoot
babyYoda.param1 =2
babyYoda.param2 =400
babyYoda.param3 ='Baby Yoda'
babyYoda.param4 =nil
table.insert(pieceTable,babyYoda)

gialAckbar={}
gialAckbar.name ='Gial Ackbar'
gialAckbar.camp = LIGHT_SIDE
gialAckbar.rank='Supreme Commander of the Alliance Fleet'
gialAckbar.att=300
gialAckbar.range_att=2
gialAckbar.hp=420
gialAckbar.range_move=3
gialAckbar.price=2240
gialAckbar.img=love.graphics.newImage('images/ackbar.png')
gialAckbar.round=3
gialAckbar.special='HomeOne price - 1200 \r\n(min 164 000$)'
gialAckbar.category=CATEGORY_HERO
gialAckbar.fn =heroBigPrice
gialAckbar.param1 =1200
gialAckbar.param2 =164000
gialAckbar.param3 =nil
gialAckbar.param4 =nil
table.insert(pieceTable,gialAckbar)

capitainRex={}
capitainRex.name ='Captain Rex'
capitainRex.camp = LIGHT_SIDE
capitainRex.rank='Clone trooper in the 501st legion'
capitainRex.att=300
capitainRex.range_att=2
capitainRex.hp=420
capitainRex.range_move=3
capitainRex.price=1840
capitainRex.img=love.graphics.newImage('images/rex.jpg')
capitainRex.round=3
capitainRex.special='300att 2 times'
capitainRex.category=CATEGORY_HERO
capitainRex.fn =heroShoot
capitainRex.param1 =2
capitainRex.param2 =-300
capitainRex.param3 ='Captain Rex'
capitainRex.param4 =nil
table.insert(pieceTable,capitainRex)

mazKanata={}
mazKanata.name ='Maz Kanata'
mazKanata.camp = LIGHT_SIDE
mazKanata.rank='Rebel'
mazKanata.att=200
mazKanata.range_att=2
mazKanata.hp=280
mazKanata.range_move=3
mazKanata.price=1093
mazKanata.img=love.graphics.newImage('images/maz.jpg')
mazKanata.round=3
mazKanata.special='200hp '
mazKanata.category=CATEGORY_HERO
mazKanata.fn =heroShoot
mazKanata.param1 =1
mazKanata.param2 =200
mazKanata.param3 ='Maz Kanata'
mazKanata.param4 =nil
table.insert(pieceTable,mazKanata)

jarJarBinks={}
jarJarBinks.name ='Jar Jar Binks'
jarJarBinks.camp = LIGHT_SIDE
jarJarBinks.rank='General in the Gungan Grand Army'
jarJarBinks.att=100
jarJarBinks.range_att=2
jarJarBinks.hp=140
jarJarBinks.range_move=3
jarJarBinks.price=547
jarJarBinks.img=love.graphics.newImage('images/jar jar.png')
jarJarBinks.round=3
jarJarBinks.special='100att '
jarJarBinks.category=CATEGORY_HERO
jarJarBinks.fn =heroShoot
jarJarBinks.param1 =1
jarJarBinks.param2 =-100
jarJarBinks.param3 ='Jar Jar Binks'
jarJarBinks.param4 =nil
table.insert(pieceTable,jarJarBinks)

-------------------------------------------------------------------------
----SITH HERO

revan={}
revan.name ='Revan'
revan.camp= DARK_SIDE
revan.rank='Darth Lord of the Sith'
revan.att=52000
revan.range_att=2
revan.hp=72800
revan.range_move=3
revan.price=306000
revan.img=love.graphics.newImage('images/revan.jpg')
revan.round=4
revan.special='invinsible 1r + fige 1r \r\n+ 20000att + 20000hp'
revan.category=CATEGORY_HERO
revan.fn =heroMax
revan.param1 =1
revan.param2 =1
revan.param3 =1
revan.param4 =20000
revan.param5 =1
revan.param6 =1
revan.param7 ='Revan'
table.insert(pieceTable,revan)

vitiate={}
vitiate.name ='Vitiate'
vitiate.camp= DARK_SIDE
vitiate.rank='Sith Emperor'
vitiate.att=48000
vitiate.range_att=2
vitiate.hp=67200
vitiate.range_move=3
vitiate.price=263067
vitiate.img=love.graphics.newImage('images/vitiate.jpg')
vitiate.round=3
vitiate.special='12000att 2 times + 12000hp \r\n2 times'
vitiate.category=CATEGORY_HERO
vitiate.fn =heroShoot2
vitiate.param1 =2
vitiate.param2 =2
vitiate.param3 =12000
vitiate.param4 ='Vitiate'
table.insert(pieceTable,vitiate)

darthNihilus={}
darthNihilus.name ='Darth Nihilus'
darthNihilus.camp = DARK_SIDE
darthNihilus.rank='Darth Lord of the Sith'
darthNihilus.att=44000
darthNihilus.range_att=2
darthNihilus.hp=61600
darthNihilus.range_move=3
darthNihilus.price=233200
darthNihilus.img=love.graphics.newImage('images/nihilus.png')
darthNihilus.round=4
darthNihilus.special='dies + 22000att 4 times'
darthNihilus.category=CATEGORY_HERO
darthNihilus.fn =heroSuicideShoot
darthNihilus.param1 =4
darthNihilus.param2 =22000
darthNihilus.param3 ='Darth Nihilus'
darthNihilus.param4 =nil
table.insert(pieceTable,darthNihilus)

darthVader={}
darthVader.name ='Darth Vader'
darthVader.camp = DARK_SIDE
darthVader.rank='Darth Lord of the Sith'
darthVader.att=40000
darthVader.range_att=2
darthVader.hp=56000
darthVader.range_move=3
darthVader.price=210667
darthVader.img=love.graphics.newImage('images/vador.png')
darthVader.round=3
darthVader.special='hp * 1.1 (max 74600hp) '
darthVader.category=CATEGORY_HERO
darthVader.fn =heroHp
darthVader.param1 =1.1
darthVader.param2 =74600
darthVader.param3 =nil
darthVader.param4 =nil
table.insert(pieceTable,darthVader)

darthSidious={}
darthSidious.name ='Darth Sidious'
darthSidious.camp = DARK_SIDE
darthSidious.rank='Emperor of the Galactic Empire'
darthSidious.att=38000
darthSidious.range_att=2
darthSidious.hp=53200
darthSidious.range_move=3
darthSidious.price=201067
darthSidious.img=love.graphics.newImage('images/sidious.png')
darthSidious.round=4
darthSidious.special='dies + 77500 credits'
darthSidious.category=CATEGORY_HERO
darthSidious.fn =heroSucideMoney
darthSidious.param1 =77500
darthSidious.param2 =nil
darthSidious.param3 =nil
darthSidious.param4 =nil
table.insert(pieceTable,darthSidious)

darthKrayt={}
darthKrayt.name ='Darth Krayt'
darthKrayt.camp = DARK_SIDE
darthKrayt.rank='Darth Lord of the Sith'
darthKrayt.att=35000
darthKrayt.range_att=2
darthKrayt.hp=49000
darthKrayt.range_move=3
darthKrayt.price=199000
darthKrayt.img=love.graphics.newImage('images/DARTH_KRAYT.png')
darthKrayt.round=3
darthKrayt.special='att * 1.1 (max50600att) '
darthKrayt.category=CATEGORY_HERO
darthKrayt.fn =heroAtt
darthKrayt.param1 =1.1
darthKrayt.param2 =50600
darthKrayt.param3 =nil
darthKrayt.param4 =nil
table.insert(pieceTable,darthKrayt)

starkiller={}
starkiller.name ='Starkiller'
starkiller.camp = DARK_SIDE
starkiller.rank='Darth Lord of the Sith'
starkiller.att=34000
starkiller.range_att=2
starkiller.hp=47600
starkiller.range_move=3
starkiller.price=180867
starkiller.img=love.graphics.newImage('images/star killer.jpg')
starkiller.round=3
starkiller.special='8500hp 4 times'
starkiller.category=CATEGORY_HERO
starkiller.fn =heroShoot
starkiller.param1 =4
starkiller.param2 =8500
starkiller.param3 ='Starkiller'
starkiller.param4 =nil
table.insert(pieceTable,starkiller)

exarkun={}
exarkun.name ='Exarkun'
exarkun.camp = DARK_SIDE
exarkun.rank='Darth Lord of the Sith'
exarkun.att=32000
exarkun.range_att=2
exarkun.hp=44800
exarkun.range_move=3
exarkun.price=164267
exarkun.img=love.graphics.newImage('images/exar.jpg')
exarkun.round=3
exarkun.special='8000att 4 times'
exarkun.category=CATEGORY_HERO
exarkun.fn =heroShoot
exarkun.param1 =4
exarkun.param2 =-8000
exarkun.param3 ='Exarkun'
exarkun.param4 =nil
table.insert(pieceTable,exarkun)

darthPlagueis={}
darthPlagueis.name ='Darth Plagueis'
darthPlagueis.camp = DARK_SIDE
darthPlagueis.rank='Darth Lord of the Sith'
darthPlagueis.att=30000
darthPlagueis.range_att=2
darthPlagueis.hp=42000
darthPlagueis.range_move=3
darthPlagueis.price=164000
darthPlagueis.img=love.graphics.newImage('images/darth plagueis.jpg')
darthPlagueis.round=3
darthPlagueis.special='7500att 2 times + 7500hp \r\n2 times'
darthPlagueis.category=CATEGORY_HERO
darthPlagueis.fn =heroShoot2
darthPlagueis.param1 =2
darthPlagueis.param2 =2
darthPlagueis.param3 =7500
darthPlagueis.param4 ='Darth Plagueis'
table.insert(pieceTable,darthPlagueis)

nagaSadow={}
nagaSadow.name ='Naga Sadow'
nagaSadow.camp = DARK_SIDE
nagaSadow.rank='Darth Lord of the Sith'
nagaSadow.att=28000
nagaSadow.range_att=2
nagaSadow.hp=39200
nagaSadow.range_move=3
nagaSadow.price=148400
nagaSadow.img=love.graphics.newImage('images/naga sadow.jpg')
nagaSadow.round=4
nagaSadow.special='dies + 14000att 4 times'
nagaSadow.category=CATEGORY_HERO
nagaSadow.fn =heroSuicideShoot
nagaSadow.param1 =4
nagaSadow.param2 =14000
nagaSadow.param3 ='Naga Sadow'
nagaSadow.param4 =nil
table.insert(pieceTable,nagaSadow)

markaRagnos={}
markaRagnos.name ='Marka Ragnos'
markaRagnos.camp = DARK_SIDE
markaRagnos.rank='Darth Lord of the Sith'
markaRagnos.att=26000
markaRagnos.range_att=2
markaRagnos.hp=36400
markaRagnos.range_move=3
markaRagnos.price=136550
markaRagnos.img=love.graphics.newImage('images/Marka ragnos.jpg')
markaRagnos.round=4
markaRagnos.special='range move + 5 1r'
markaRagnos.category=CATEGORY_HERO
markaRagnos.fn =heroRangeMove
markaRagnos.param1 =1
markaRagnos.param2 =nil
markaRagnos.param3 =nil
markaRagnos.param4 =nil
table.insert(pieceTable,markaRagnos)

darthMaul={}
darthMaul.name ='Darth Maul'
darthMaul.camp = DARK_SIDE
darthMaul.rank='Darth Lord of the Sith'
darthMaul.att=24000
darthMaul.range_att=2
darthMaul.hp=33600
darthMaul.range_move=3
darthMaul.price=123950
darthMaul.img=love.graphics.newImage('images/maul.png')
darthMaul.round=4
darthMaul.special=' range att + 5 1r'
darthMaul.category=CATEGORY_HERO
darthMaul.fn =heroRangeAtt
darthMaul.param1 =1
darthMaul.param2 =nil
darthMaul.param3 =nil
darthMaul.param4 =nil
table.insert(pieceTable,darthMaul)

kyloRen={}
kyloRen.name ='Kylo Ren'
kyloRen.camp = DARK_SIDE
kyloRen.rank='Supreme Leader of the First Order'
kyloRen.att=22000
kyloRen.range_att=2
kyloRen.hp=30800
kyloRen.range_move=3
kyloRen.price=120267
kyloRen.img=love.graphics.newImage('images/kylo.png')
kyloRen.round=3
kyloRen.special='give 7400att 3 times 1r'
kyloRen.category=CATEGORY_HERO
kyloRen.fn =heroGiveAtt
kyloRen.param1 =3
kyloRen.param2 =-7400
kyloRen.param3 =1
kyloRen.param4='Kylo Ren'
table.insert(pieceTable,kyloRen)

darthMalak={}
darthMalak.name ='Darth Malak'
darthMalak.camp = DARK_SIDE
darthMalak.rank='Darth Lord of the Sith'
darthMalak.att=20000
darthMalak.range_att=2
darthMalak.hp=28000
darthMalak.range_move=3
darthMalak.price=105333
darthMalak.img=love.graphics.newImage('images/Darth_Malak.jpg')
darthMalak.round=3
darthMalak.special='hp * 1.1 (max 37300hp ) 1r'
darthMalak.category=CATEGORY_HERO
darthMalak.fn =heroHp
darthMalak.param1 =1.1
darthMalak.param2 =37300
darthMalak.param3 =nil
darthMalak.param4 =nil
table.insert(pieceTable,darthMalak)

darthZannah={}
darthZannah.name ='Darth Zannah'
darthZannah.camp = DARK_SIDE
darthZannah.rank='Darth Lord of the Sith'
darthZannah.att=18000
darthZannah.range_att=2
darthZannah.hp=25200
darthZannah.range_move=3
darthZannah.price=92400
darthZannah.img=love.graphics.newImage('images/darth_zannah.png')
darthZannah.round=3
darthZannah.special='att * 1.1 (max 24000att) 1r'
darthZannah.category=CATEGORY_HERO
darthZannah.fn =heroAtt
darthZannah.param1 =1.1
darthZannah.param2 =24000
darthZannah.param3 =nil
darthZannah.param4 =nil
table.insert(pieceTable,darthZannah)

darthBane={}
darthBane.name ='Darth Bane'
darthBane.camp = DARK_SIDE
darthBane.rank='Darth Lord of the Sith'
darthBane.att=16000
darthBane.range_att=2
darthBane.hp=22400
darthBane.range_move=3
darthBane.price=84267
darthBane.img=love.graphics.newImage('images/darth_bane.png')
darthBane.round=3
darthBane.special='freezes 1 ennemie 1r'
darthBane.category=CATEGORY_HERO
darthBane.fn =heroFreeze
darthBane.param1 =1
darthBane.param2 =1
darthBane.param3 ='Darth Bane'
darthBane.param4 =nil
table.insert(pieceTable,darthBane)

supremeLeaderSnoke={}
supremeLeaderSnoke.name ='Supreme Leader Snoke'
supremeLeaderSnoke.camp = DARK_SIDE
supremeLeaderSnoke.rank='Supreme Leader of the First Order'
supremeLeaderSnoke.att=14000
supremeLeaderSnoke.range_att=2
supremeLeaderSnoke.hp=19600
supremeLeaderSnoke.range_move=3
supremeLeaderSnoke.price=73733
supremeLeaderSnoke.img=love.graphics.newImage('images/snoke.png')
supremeLeaderSnoke.round=3
supremeLeaderSnoke.special='immortal 1r'
supremeLeaderSnoke.category=CATEGORY_HERO
supremeLeaderSnoke.fn =heroImmortal
supremeLeaderSnoke.param1 =1
supremeLeaderSnoke.param2 =nil
supremeLeaderSnoke.param3 =nil
supremeLeaderSnoke.param4 =nil
table.insert(pieceTable,supremeLeaderSnoke)

talzin={}
talzin.name ='Talzin'
talzin.camp = DARK_SIDE
talzin.rank='Leader of the Nightsisters'
talzin.att=12000
talzin.range_att=2
talzin.hp=16800
talzin.range_move=3
talzin.price=67600
talzin.img=love.graphics.newImage('images/talzin.png')
talzin.round=4
talzin.special='dies + 25000 credits'
talzin.category=CATEGORY_HERO
talzin.fn =heroSucideMoney
talzin.param1 =25000
talzin.param2 =nil
talzin.param3 =nil
talzin.param4 =nil
table.insert(pieceTable,talzin)

countDooku={}
countDooku.name ='Count Dooku'
countDooku.camp = DARK_SIDE
countDooku.rank='Darth Lord of the Sith'
countDooku.att=10000
countDooku.range_att=2
countDooku.hp=14000
countDooku.range_move=3
countDooku.price=53333
countDooku.img=love.graphics.newImage('images/dokku.png')
countDooku.round=3
countDooku.special='4000hp 2 times'
countDooku.category=CATEGORY_HERO
countDooku.fn =heroShoot
countDooku.param1 =2
countDooku.param2 =4500
countDooku.param3 ='Count Dooku'
countDooku.param4 =nil
table.insert(pieceTable,countDooku)

grandAdmiralThrawn={}
grandAdmiralThrawn.name ='Grand Admiral Thrawn'
grandAdmiralThrawn.camp = DARK_SIDE
grandAdmiralThrawn.rank='Supreme Commander of the Imperial Fleet'
grandAdmiralThrawn.att=9000
grandAdmiralThrawn.range_att=2
grandAdmiralThrawn.hp=12600
grandAdmiralThrawn.range_move=3
grandAdmiralThrawn.price=49200
grandAdmiralThrawn.img=love.graphics.newImage('images/thrawn.jpg')
grandAdmiralThrawn.round=3
grandAdmiralThrawn.special='4500att 2 times'
grandAdmiralThrawn.category=CATEGORY_HERO
grandAdmiralThrawn.fn =heroShoot
grandAdmiralThrawn.param1 =2
grandAdmiralThrawn.param2 =-4500
grandAdmiralThrawn.param3 ='Grand Admiral Thrawn'
grandAdmiralThrawn.param4 =nil
table.insert(pieceTable,grandAdmiralThrawn)

ladyLumiya={}
ladyLumiya.name ='Lady Lumiya'
ladyLumiya.camp = DARK_SIDE
ladyLumiya.rank='Darth Lord of the Sith'
ladyLumiya.att=7500
ladyLumiya.range_att=2
ladyLumiya.hp=10500
ladyLumiya.range_move=3
ladyLumiya.price=41000
ladyLumiya.img=love.graphics.newImage('images/lady lumiya.jpg')
ladyLumiya.round=3
ladyLumiya.special='7500hp'
ladyLumiya.category=CATEGORY_HERO
ladyLumiya.fn =heroShoot
ladyLumiya.param1 =1
ladyLumiya.param2 =7500
ladyLumiya.param3 ='Lady Lumiya'
ladyLumiya.param4 =nil
table.insert(pieceTable,ladyLumiya)

darthTalon={}
darthTalon.name ='Darth Talon'
darthTalon.camp = DARK_SIDE
darthTalon.rank='Darth Lord of the Sith'
darthTalon.att=6000
darthTalon.range_att=2
darthTalon.hp=8400
darthTalon.range_move=3
darthTalon.price=32800
darthTalon.img=love.graphics.newImage('images/darth talon.jpg')
darthTalon.round=3
darthTalon.special='6000att '
darthTalon.category=CATEGORY_HERO
darthTalon.fn =heroShoot
darthTalon.param1 =1
darthTalon.param2 =-6000
darthTalon.param3 ='Darth Talon'
darthTalon.param4 =nil
table.insert(pieceTable,darthTalon)

grievous={}
grievous.name ='Grievous'
grievous.camp = DARK_SIDE
grievous.rank='Supreme Commander of the CIS'
grievous.att=5000
grievous.range_att=2
grievous.hp=7000
grievous.range_move=3
grievous.price=27333
grievous.img=love.graphics.newImage('images/grievous.jpg')
grievous.round=3
grievous.special='2500att + 2500hp'
grievous.category=CATEGORY_HERO
grievous.fn =heroShoot2
grievous.param1 =1
grievous.param2 =1
grievous.param3 =2500
grievous.param4 ='Grievous'table.insert(pieceTable,grievous)

asajjVentress={}
asajjVentress.name ='Asajj Ventress'
asajjVentress.camp = DARK_SIDE
asajjVentress.rank='Darth Lord of the Sith'
asajjVentress.att=4000
asajjVentress.range_att=2
asajjVentress.hp=5600
asajjVentress.range_move=3
asajjVentress.price=21200
asajjVentress.img=love.graphics.newImage('images/ventress.png')
asajjVentress.round=4
asajjVentress.special='dies + 2000att 4 times'
asajjVentress.category=CATEGORY_HERO
asajjVentress.fn =heroSuicideShoot
asajjVentress.param1 =4
asajjVentress.param2 =2000
asajjVentress.param3 ='Asajj Ventress'
asajjVentress.param4 =nil
table.insert(pieceTable,asajjVentress)

savageOpress={}
savageOpress.name ='Savage Opress'
savageOpress.camp = DARK_SIDE
savageOpress.rank='Darth Lord of the Sith'
savageOpress.att=3000
savageOpress.range_att=2
savageOpress.hp=4200
savageOpress.range_move=3
savageOpress.price=15525
savageOpress.img=love.graphics.newImage('images/savage.png')
savageOpress.round=4
savageOpress.special='range move + 5 1r'
savageOpress.category=CATEGORY_HERO
savageOpress.fn =heroRangeMove
savageOpress.param1 =1
savageOpress.param2 =nil
savageOpress.param3 =nil
savageOpress.param4 =nil
table.insert(pieceTable,savageOpress)

theGrandInquisitor={}
theGrandInquisitor.name ='The Grand Inquisitor'
theGrandInquisitor.camp = DARK_SIDE
theGrandInquisitor.rank='Leader of the Black Sun '
theGrandInquisitor.att=2000
theGrandInquisitor.range_att=2
theGrandInquisitor.hp=2800
theGrandInquisitor.range_move=3
theGrandInquisitor.price=10350
theGrandInquisitor.img=love.graphics.newImage('images/inquisiteur.jpg')
theGrandInquisitor.round=4
theGrandInquisitor.special='range att + 5 1r'
theGrandInquisitor.category=CATEGORY_HERO
theGrandInquisitor.fn =heroRangeAtt
theGrandInquisitor.param1 =1
theGrandInquisitor.param2 =nil
theGrandInquisitor.param3 =nil
theGrandInquisitor.param4 =nil
table.insert(pieceTable,theGrandInquisitor)

bobaFett={}
bobaFett.name ='Boba Fett'
bobaFett.camp = DARK_SIDE
bobaFett.rank='Bounty Hunter'
bobaFett.att=1500
bobaFett.range_att=2
bobaFett.hp=2100
bobaFett.range_move=3
bobaFett.price=8200
bobaFett.img=love.graphics.newImage('images/Aurra_Sing_SWFB.png')
bobaFett.round=3
bobaFett.special='give 500att 3 times 1r'
bobaFett.category=CATEGORY_HERO
bobaFett.fn =heroGiveAtt
bobaFett.param1 =3
bobaFett.param2 =-500
bobaFett.param3 =1
bobaFett.param4 ='Boba Fett'
table.insert(pieceTable,bobaFett)

xizor={}
xizor.name ='Xizor'
xizor.camp = DARK_SIDE
xizor.rank='Leader of the Inquisitorious'
xizor.att=1300
xizor.range_att=2
xizor.hp=1820
xizor.range_move=3
xizor.price=6847
xizor.img=love.graphics.newImage('images/prince xizor.jpg')
xizor.round=3
xizor.special='hp * 1.1 (max 2420hp)'
xizor.category=CATEGORY_HERO
xizor.fn =heroHp
xizor.param1 =1.1
xizor.param2 =2420
xizor.param3 =nil
xizor.param4 =nil
table.insert(pieceTable,xizor)

aurraSing={}
aurraSing.name ='Aurra Sing'
aurraSing.camp = DARK_SIDE
aurraSing.rank='Bounty Hunter'
aurraSing.att=1100
aurraSing.range_att=2
aurraSing.hp=1540
aurraSing.range_move=3
aurraSing.price=5647
aurraSing.img=love.graphics.newImage('images/boba.jpg')
aurraSing.round=3
aurraSing.special='att * 1.1 (max 1460att)'
aurraSing.category=CATEGORY_HERO
aurraSing.fn =heroAtt
aurraSing.param1 =1.1
aurraSing.param2 =1460
aurraSing.param3 =nil
aurraSing.param4 =nil
table.insert(pieceTable,aurraSing)

ig88={}
ig88.name ='IG88'
ig88.camp = DARK_SIDE
ig88.rank='Bounty Hunter'
ig88.att=900
ig88.range_att=2
ig88.hp=1260
ig88.range_move=3
ig88.price=4740
ig88.img=love.graphics.newImage('images/ig88.png')
ig88.round=3
ig88.special='freezes 1 ennemie 1r'
ig88.category=CATEGORY_HERO
ig88.fn =heroFreeze
ig88.param1 =1
ig88.param2 =1
ig88.param3 ='IG88'
ig88.param4 =nil
table.insert(pieceTable,ig88)

cadBane={}
cadBane.name ='Cad Bane'
cadBane.camp = DARK_SIDE
cadBane.rank='Bounty Hunter'
cadBane.att=800
cadBane.range_att=2
cadBane.hp=1120
cadBane.range_move=3
cadBane.price=4213
cadBane.img=love.graphics.newImage('images/cade.png')
cadBane.round=3
cadBane.special='immortal 1r'
cadBane.category=CATEGORY_HERO
cadBane.fn =heroImmortal
cadBane.param1 =1
cadBane.param2 =nil
cadBane.param3 =nil
cadBane.param4 =nil
table.insert(pieceTable,cadBane)

jangoFett={}
jangoFett.name ='Jango Fett'
jangoFett.camp = DARK_SIDE
jangoFett.rank='Bounty Hunter'
jangoFett.att=600
jangoFett.range_att=2
jangoFett.hp=840
jangoFett.range_move=3
jangoFett.price=3400
jangoFett.img=love.graphics.newImage('images/jango fett.png')
jangoFett.round=4
jangoFett.special='dies + 1300 credits'
jangoFett.category=CATEGORY_HERO
jangoFett.fn =heroSucideMoney
jangoFett.param1 =1300
jangoFett.param2 =nil
jangoFett.param3 =nil
jangoFett.param4 =nil
table.insert(pieceTable,jangoFett)

bosk={}
bosk.name ='Bosk'
bosk.camp = DARK_SIDE
bosk.rank='Bounty Hunter'
bosk.att=500
bosk.range_att=2
bosk.hp=700
bosk.range_move=3
bosk.price=2600
bosk.img=love.graphics.newImage('images/bosk.jpg')
bosk.round=3
bosk.special='Slave 1 price - 300$ (min 2020$)'
bosk.category=CATEGORY_HERO
bosk.fn =heroLittlePrice
bosk.param1 =300
bosk.param2 =2020
bosk.param3 =nil
bosk.param4 =nil
table.insert(pieceTable,bosk)

captainPhasma={}
captainPhasma.name ='Captain Phasma'
captainPhasma.camp = DARK_SIDE
captainPhasma.rank='Stormtrooper commander'
captainPhasma.att=400
captainPhasma.range_att=2
captainPhasma.hp=560
captainPhasma.range_move=3
captainPhasma.price=2453
captainPhasma.img=love.graphics.newImage('images/phasma.png')
captainPhasma.round=3
captainPhasma.special='400hp 2 times'
captainPhasma.category=CATEGORY_HERO
captainPhasma.fn =heroShoot
captainPhasma.param1 =2
captainPhasma.param2 =400
captainPhasma.param3 ='Captain Phasma'
captainPhasma.param4 =nil
table.insert(pieceTable,captainPhasma)

grandMoffTarkin={}
grandMoffTarkin.name ='Grand Moff Tarkin'
grandMoffTarkin.camp = DARK_SIDE
grandMoffTarkin.rank='Commander of the Death Star'
grandMoffTarkin.att=300
grandMoffTarkin.range_att=2
grandMoffTarkin.hp=420
grandMoffTarkin.range_move=3
grandMoffTarkin.price=2240
grandMoffTarkin.img=love.graphics.newImage('images/tarkin.png')
grandMoffTarkin.round=3
grandMoffTarkin.special='Executor Super Star Destroyer  \r\nprice - 1200(min 164 000$)'
grandMoffTarkin.category=CATEGORY_HERO
grandMoffTarkin.fn =heroBigPrice
grandMoffTarkin.param1 =1200
grandMoffTarkin.param2 =164000
grandMoffTarkin.param3 =nil
grandMoffTarkin.param4 =nil
table.insert(pieceTable,grandMoffTarkin)

poggleTheLesser={}
poggleTheLesser.name ='Poggle The Lesser'
poggleTheLesser.camp = DARK_SIDE
poggleTheLesser.rank='Archduke of Geonosis'
poggleTheLesser.att=300
poggleTheLesser.range_att=2
poggleTheLesser.hp=420
poggleTheLesser.range_move=3
poggleTheLesser.price=1840
poggleTheLesser.img=love.graphics.newImage('images/poggle.jpg')
poggleTheLesser.round=3
poggleTheLesser.special='300att 2 times'
poggleTheLesser.category=CATEGORY_HERO
poggleTheLesser.fn =heroShoot
poggleTheLesser.param1 =2
poggleTheLesser.param2 =-300
poggleTheLesser.param3 ='Poggle The Lesser'
poggleTheLesser.param4 =nil
table.insert(pieceTable,poggleTheLesser)

watto={}
watto.name ='Watto'
watto.camp = DARK_SIDE
watto.rank='Junk store proprietor'
watto.att=200
watto.range_att=2
watto.hp=280
watto.range_move=3
watto.price=1093
watto.img=love.graphics.newImage('images/watto_imv6.jpg')
watto.round=3
watto.special='200hp '
watto.category=CATEGORY_HERO
watto.fn =heroShoot
watto.param1 =1
watto.param2 =200
watto.param3 ='Watto'
watto.param4 =nil
table.insert(pieceTable,watto)

jabba={}
jabba.name ='Jabba'
jabba.camp = DARK_SIDE
jabba.rank='Crime lord'
jabba.att=100
jabba.range_att=2
jabba.hp=140
jabba.range_move=3
jabba.price=547
jabba.img=love.graphics.newImage('images/jabba.png')
jabba.round=3
jabba.special='100att '
jabba.category=CATEGORY_HERO
jabba.fn =heroShoot
jabba.param1 =1
jabba.param2 =-100
jabba.param3 ='Jabba'
jabba.param4 =nil
table.insert(pieceTable,jabba)
end
function Troup()
  --SITH TROUPS

sith={}
sith.name ='Sith '
sith.camp = DARK_SIDE
sith.rank='Sith'
sith.att=600
sith.range_att=2
sith.hp=840
sith.range_move=3
sith.price=2880
sith.img=love.graphics.newImage('images/sith.jpg')
sith.round=3
sith.special='Can split his attacks damages.'
sith.category=CATEGORY_TROUP
sith.fn =pieceSplitAtt
sith.param1 =1
sith.param2 =2
sith.param3 =nil
sith.param4 =nil
table.insert(pieceTable,sith)

pretorianGuard={}
pretorianGuard.name ='Pretorian Guard'
pretorianGuard.camp = DARK_SIDE
pretorianGuard.rank="Snoke's Guard"
pretorianGuard.att=500
pretorianGuard.range_att=2
pretorianGuard.hp=700
pretorianGuard.range_move=3
pretorianGuard.price=2400
pretorianGuard.img=love.graphics.newImage('images/pretorien.jpg')
pretorianGuard.round=3
pretorianGuard.special='Can split his attacks damages.'
pretorianGuard.category=CATEGORY_TROUP
pretorianGuard.fn =pieceSplitAtt
pretorianGuard.param1 =1
pretorianGuard.param2 =2
pretorianGuard.param3 =nil
pretorianGuard.param4 =nil
table.insert(pieceTable,pretorianGuard)

knightOfRen={}
knightOfRen.name ='Knight of Ren'
knightOfRen.camp = DARK_SIDE
knightOfRen.rank ="Kylo Ren's Knight"
knightOfRen.att=400
knightOfRen.range_att=2
knightOfRen.hp=560
knightOfRen.range_move=3
knightOfRen.price=1920
knightOfRen.img=love.graphics.newImage('images/ren knight.png')
knightOfRen.round=3
knightOfRen.special='Can split his attacks damages.'
knightOfRen.category=CATEGORY_TROUP
knightOfRen.fn =pieceSplitAtt
knightOfRen.param1 =1
knightOfRen.param2 =2
knightOfRen.param3 =nil
knightOfRen.param4 =nil
table.insert(pieceTable,knightOfRen)

royalGuard={}
royalGuard.name ='Royal Guard'
royalGuard.camp = DARK_SIDE
royalGuard.rank = "Sidious and Vador's Guard"
royalGuard.att=200
royalGuard.range_att=2
royalGuard.hp=280
royalGuard.range_move=2
royalGuard.price=864
royalGuard.img=love.graphics.newImage('images/sidious guard.png')
royalGuard.round=nil
royalGuard.special=''
royalGuard.category=CATEGORY_TROUP
royalGuard.fn =nil
table.insert(pieceTable,royalGuard)

ig100magnaGuard={}
ig100magnaGuard.name ='IG-100 MagnaGuard'
ig100magnaGuard.camp = DARK_SIDE
ig100magnaGuard.rank="Grievous's Guard"
ig100magnaGuard.att=100
ig100magnaGuard.range_att=1
ig100magnaGuard.hp=140
ig100magnaGuard.range_move=2
ig100magnaGuard.price=384
ig100magnaGuard.img=love.graphics.newImage('images/magnaguard.jpg')
ig100magnaGuard.round=nil
ig100magnaGuard.special=''
ig100magnaGuard.category=CATEGORY_TROUP
ig100magnaGuard.fn =nil
table.insert(pieceTable,ig100magnaGuard)

droideka={}
droideka.name ='Droideka'
droideka.camp = DARK_SIDE
droideka.rank='Droid'
droideka.att=50
droideka.range_att=1
droideka.hp=70
droideka.range_move=2
droideka.price=192
droideka.img=love.graphics.newImage('images/droideka.png')
droideka.round=nil
droideka.special=''
droideka.category=CATEGORY_TROUP
droideka.fn =nil
table.insert(pieceTable,droideka)

deathTrooper={}
deathTrooper.name ='Death Trooper'
deathTrooper.camp = DARK_SIDE
deathTrooper.rank='Clone Trooper'
deathTrooper.att=30
deathTrooper.range_att=1
deathTrooper.hp=42
deathTrooper.range_move=2
deathTrooper.price=115
deathTrooper.img=love.graphics.newImage('images/deadtroopers.jpg')
deathTrooper.round=nil
deathTrooper.special=''
deathTrooper.category=CATEGORY_TROUP
deathTrooper.fn =nil
table.insert(pieceTable,deathTrooper)

stormTrooper={}
stormTrooper.name ='Stormtrooper'
stormTrooper.camp = DARK_SIDE
stormTrooper.rank='Clone Trooper'
stormTrooper.att=20
stormTrooper.range_att=1
stormTrooper.hp=28
stormTrooper.range_move=2
stormTrooper.price=77
stormTrooper.img=love.graphics.newImage('images/stormtrooper.png')
stormTrooper.round=nil
stormTrooper.special=''
stormTrooper.category=CATEGORY_TROUP
stormTrooper.fn =nil
table.insert(pieceTable,stormTrooper)

droidB1={}
droidB1.name ='Droid B1'
droidB1.camp = DARK_SIDE
droidB1.rank='Droid'
droidB1.att=10
droidB1.range_att=1
droidB1.hp=14
droidB1.range_move=2
droidB1.price=38
droidB1.img=love.graphics.newImage('images/b1.jpg')
droidB1.round=nil
droidB1.special=''
droidB1.category=CATEGORY_TROUP
droidB1.fn =nil
table.insert(pieceTable,droidB1)

  --JEDI TROUPS

jedi={}
jedi.name ='Jedi'
jedi.camp = LIGHT_SIDE
jedi.rank='Jedi'
jedi.att=600
jedi.range_att=2
jedi.hp=840
jedi.range_move=3
jedi.price=2880
jedi.img=love.graphics.newImage('images/jedi.png')
jedi.round=3
jedi.special='Can split his attacks damages.'
jedi.category=CATEGORY_TROUP
jedi.fn =pieceSplitAtt
jedi.param1 =1
jedi.param2 =2
jedi.param3 =nil
jedi.param4 =nil
table.insert(pieceTable,jedi)

templeGuard={}
templeGuard.name ='temple guard'
templeGuard.camp = LIGHT_SIDE
templeGuard.rank='Jedi'
templeGuard.att=500
templeGuard.range_att=2
templeGuard.hp=700
templeGuard.range_move=3
templeGuard.price=2400
templeGuard.img=love.graphics.newImage('images/temple guard.png')
templeGuard.round=3
templeGuard.special='Can split his attacks damages.'
templeGuard.category=CATEGORY_TROUP
templeGuard.fn =pieceSplitAtt
templeGuard.param1 =1
templeGuard.param2 =2
templeGuard.param3 =nil
templeGuard.param4 =nil
table.insert(pieceTable,templeGuard)

arcTrooper={}
arcTrooper.name ='ARC troopers  '
arcTrooper.camp = LIGHT_SIDE
arcTrooper.rank='Clone Trooper'
arcTrooper.att=400
arcTrooper.range_att=2
arcTrooper.hp=560
arcTrooper.range_move=3
arcTrooper.price=1920
arcTrooper.img=love.graphics.newImage('images/arctrooper.jpg')
arcTrooper.round=3
arcTrooper.special='Can split his attacks damages.'
arcTrooper.category=CATEGORY_TROUP
arcTrooper.fn =pieceSplitAtt
arcTrooper.param1 =1
arcTrooper.param2 =2
arcTrooper.param3 =nil
arcTrooper.param4 =nil
table.insert(pieceTable,arcTrooper)

senatGuard={}
senatGuard.name ='Senat Guard'
senatGuard.camp = LIGHT_SIDE
senatGuard.rank="Chancelor's Guard"
senatGuard.att=200
senatGuard.range_att=2
senatGuard.hp=280
senatGuard.range_move=2
senatGuard.price=864
senatGuard.img=love.graphics.newImage('images/senat guard.jpg')
senatGuard.round=nil
senatGuard.special=''
senatGuard.category=CATEGORY_TROUP
senatGuard.fn =nil
table.insert(pieceTable,senatGuard)

commandoClone={}
commandoClone.name ='CommandoClone'
commandoClone.camp = LIGHT_SIDE
commandoClone.rank='Clone Trooper'
commandoClone.att=100
commandoClone.range_att=1
commandoClone.hp=140
commandoClone.range_move=2
commandoClone.price=384
commandoClone.img=love.graphics.newImage('images/clonecommando.png')
commandoClone.round=nil
commandoClone.special=''
commandoClone.category=CATEGORY_TROUP
commandoClone.fn =nil
table.insert(pieceTable,commandoClone)

nabooGuard={}
nabooGuard.name ='Naboo Guard'
nabooGuard.camp = LIGHT_SIDE
nabooGuard.rank="Padmé Amidala's Guard"
nabooGuard.att=50
nabooGuard.range_att=1
nabooGuard.hp=70
nabooGuard.range_move=2
nabooGuard.price=192
nabooGuard.img=love.graphics.newImage('images/naboo_soldier.png')
nabooGuard.round=nil
nabooGuard.special=''
nabooGuard.category=CATEGORY_TROUP
nabooGuard.fn =nil
table.insert(pieceTable,nabooGuard)

wookie={}
wookie.name ='Wookie '
wookie.camp = LIGHT_SIDE
wookie.rank= "Kashyyyk's specie"
wookie.att=30
wookie.range_att=1
wookie.hp=42
wookie.range_move=2
wookie.price=115
wookie.img=love.graphics.newImage('images/wookie.png')
wookie.round=nil
wookie.special=''
wookie.category=CATEGORY_TROUP
wookie.fn =nil
table.insert(pieceTable,wookie)

gungan={}
gungan.name ='Gungan '
gungan.camp = LIGHT_SIDE
gungan.rank="Naboo's specie"
gungan.att=20
gungan.range_att=1
gungan.hp=28
gungan.range_move=2
gungan.price=77
gungan.img=love.graphics.newImage('images/Gungan.png')
gungan.round=nil
gungan.special=''
gungan.category=CATEGORY_TROUP
gungan.fn =nil
table.insert(pieceTable,gungan)

ewok={}
ewok.name ='Ewok '
ewok.camp = LIGHT_SIDE
ewok.rank="Endor's specie"
ewok.att=10
ewok.range_att=1
ewok.hp=14
ewok.range_move=2
ewok.price=38
ewok.img=love.graphics.newImage('images/ewok.png')
ewok.round=nil
ewok.special=''
ewok.category=CATEGORY_TROUP
ewok.fn =nil
table.insert(pieceTable,ewok)
end
function Vehicle()
  --SITH SHIP

deathStar={}
deathStar.name ='Death Star'
deathStar.camp = DARK_SIDE
deathStar.rank=RANK_SHIP
deathStar.att=121000
deathStar.range_att=4
deathStar.hp=169400
deathStar.range_move=50
deathStar.price=813680
deathStar.img=love.graphics.newImage('images/deadstar.jpg')
deathStar.round=3
deathStar.special='Can split his attacks damages.'
deathStar.category=CATEGORY_VEHICLE
deathStar.fn =pieceSplitAtt
deathStar.param1 =1
deathStar.param2 =2
deathStar.param3 =nil
deathStar.param4 =nil
table.insert(pieceTable,deathStar)

supremacyMegaStarDestroyer={}
supremacyMegaStarDestroyer.name ='Supremacy Mega Star Destroyer'
supremacyMegaStarDestroyer.camp = DARK_SIDE
supremacyMegaStarDestroyer.rank=RANK_SHIP
supremacyMegaStarDestroyer.att=60700
supremacyMegaStarDestroyer.range_att=3
supremacyMegaStarDestroyer.hp=84980
supremacyMegaStarDestroyer.range_move=4
supremacyMegaStarDestroyer.price=350112
supremacyMegaStarDestroyer.img=love.graphics.newImage('images/supremacy.jpg')
supremacyMegaStarDestroyer.round=3
supremacyMegaStarDestroyer.special='Can split his attacks damages.'
supremacyMegaStarDestroyer.category=CATEGORY_VEHICLE
supremacyMegaStarDestroyer.fn =pieceSplitAtt
supremacyMegaStarDestroyer.param1 =1
supremacyMegaStarDestroyer.param2 =2
supremacyMegaStarDestroyer.param3 =nil
supremacyMegaStarDestroyer.param4 =nil
table.insert(pieceTable,supremacyMegaStarDestroyer)

executorSuperStarDestroyer={}
executorSuperStarDestroyer.name ='Executor Super Star Destroyer'
executorSuperStarDestroyer.camp = DARK_SIDE
executorSuperStarDestroyer.rank=RANK_SHIP
executorSuperStarDestroyer.att=33400
executorSuperStarDestroyer.range_att=3
executorSuperStarDestroyer.hp=46760
executorSuperStarDestroyer.range_move=4
executorSuperStarDestroyer.price=192864
executorSuperStarDestroyer.img=love.graphics.newImage('images/executor.png')
executorSuperStarDestroyer.round=3
executorSuperStarDestroyer.special='Can split his attacks damages.'
executorSuperStarDestroyer.category=CATEGORY_VEHICLE
executorSuperStarDestroyer.fn =pieceSplitAtt
executorSuperStarDestroyer.param1 =1
executorSuperStarDestroyer.param2 =2
executorSuperStarDestroyer.param3 =nil
executorSuperStarDestroyer.param4 =nil
table.insert(pieceTable,executorSuperStarDestroyer)

eclipseSuperStarDestroyer={}
eclipseSuperStarDestroyer.name ='Eclipse Super Star Destroyer'
eclipseSuperStarDestroyer.camp = DARK_SIDE
eclipseSuperStarDestroyer.rank=RANK_SHIP
eclipseSuperStarDestroyer.att=21300
eclipseSuperStarDestroyer.range_att=3
eclipseSuperStarDestroyer.hp=29820
eclipseSuperStarDestroyer.range_move=4
eclipseSuperStarDestroyer.price=123168
eclipseSuperStarDestroyer.img=love.graphics.newImage('images/eclipse.jpg')
eclipseSuperStarDestroyer.round=3
eclipseSuperStarDestroyer.special='Can split his attacks damages.'
eclipseSuperStarDestroyer.category=CATEGORY_VEHICLE
eclipseSuperStarDestroyer.fn =pieceSplitAtt
eclipseSuperStarDestroyer.param1 =1
eclipseSuperStarDestroyer.param2 =2
eclipseSuperStarDestroyer.param3 =nil
eclipseSuperStarDestroyer.param4 =nil
table.insert(pieceTable,eclipseSuperStarDestroyer)

mandatorIVClassWarship={}
mandatorIVClassWarship.name ='Mandator IV-class Warship'
mandatorIVClassWarship.camp = DARK_SIDE
mandatorIVClassWarship.rank=RANK_SHIP
mandatorIVClassWarship.att=12800
mandatorIVClassWarship.range_att=3
mandatorIVClassWarship.hp=17920
mandatorIVClassWarship.range_move=4
mandatorIVClassWarship.price=74208
mandatorIVClassWarship.img=love.graphics.newImage('images/mandator.png')
mandatorIVClassWarship.round=3
mandatorIVClassWarship.special='Can split his attacks damages.'
mandatorIVClassWarship.category=CATEGORY_VEHICLE
mandatorIVClassWarship.fn =pieceSplitAtt
mandatorIVClassWarship.param1 =1
mandatorIVClassWarship.param2 =2
mandatorIVClassWarship.param3 =nil
mandatorIVClassWarship.param4 =nil
table.insert(pieceTable,mandatorIVClassWarship)

invisibleHand={}
invisibleHand.name ='Invisible Hand'
invisibleHand.camp = DARK_SIDE
invisibleHand.rank=RANK_SHIP
invisibleHand.att=8000
invisibleHand.range_att=3
invisibleHand.hp=11200
invisibleHand.range_move=4
invisibleHand.price=46560
invisibleHand.img=love.graphics.newImage('images/handinvisible.jpg')
invisibleHand.round=3
invisibleHand.special='Can split his attacks damages.'
invisibleHand.category=CATEGORY_VEHICLE
invisibleHand.fn =pieceSplitAtt
invisibleHand.param1 =1
invisibleHand.param2 =2
invisibleHand.param3 =nil
invisibleHand.param4 =nil
table.insert(pieceTable,invisibleHand)

starDestroyer={}
starDestroyer.name ='Star Destroyer'
starDestroyer.camp = DARK_SIDE
starDestroyer.rank=RANK_SHIP
starDestroyer.att=3500
starDestroyer.range_att=3
starDestroyer.hp=4900
starDestroyer.range_move=4
starDestroyer.price=20640
starDestroyer.img=love.graphics.newImage('images/destroyer.jpg')
starDestroyer.round=3
starDestroyer.special='Can split his attacks damages.'
starDestroyer.category=CATEGORY_VEHICLE
starDestroyer.fn =pieceSplitAtt
starDestroyer.param1 =1
starDestroyer.param2 =2
starDestroyer.param3 =nil
starDestroyer.param4 =nil
table.insert(pieceTable,starDestroyer)

slave1 ={}
slave1 .name ='Slave 1 '
slave1 .camp = DARK_SIDE
slave1 .rank=RANK_SHIP
slave1 .att=1000
slave1 .range_att=2
slave1 .hp=1400
slave1 .range_move=4
slave1 .price=5720
slave1 .img=love.graphics.newImage('images/slave1.png')
slave1 .round=3
slave1 .special='Can split his attacks damages.'
slave1 .category=CATEGORY_VEHICLE
slave1 .fn =pieceSplitAtt
slave1 .param1 =1
slave1 .param2 =2
slave1 .param3 =nil
slave1 .param4 =nil
table.insert(pieceTable,slave1 )

scimitar={}
scimitar.name ='Scimitar '
scimitar.camp = DARK_SIDE
scimitar.rank=RANK_SHIP
scimitar.att=700
scimitar.range_att=2
scimitar.hp=980
scimitar.range_move=4
scimitar.price=4134
scimitar.img=love.graphics.newImage('images/Scimitar.png')
scimitar.round=3
scimitar.special='Can split his attacks damages.'
scimitar.category=CATEGORY_VEHICLE
scimitar.fn =pieceSplitAtt
scimitar.param1 =1
scimitar.param2 =2
scimitar.param3 =nil
scimitar.param4 =nil
table.insert(pieceTable,scimitar)

imperialShuttle={}
imperialShuttle.name ='Imperial Shuttle'
imperialShuttle.camp = DARK_SIDE
imperialShuttle.rank=RANK_SHIP
imperialShuttle.att=550
imperialShuttle.range_att=2
imperialShuttle.hp=770
imperialShuttle.range_move=4
imperialShuttle.price=3621
imperialShuttle.img=love.graphics.newImage('images/shuttle.png')
imperialShuttle.round=3
imperialShuttle.special='Can split his attacks damages.'
imperialShuttle.category=CATEGORY_VEHICLE
imperialShuttle.fn =pieceSplitAtt
imperialShuttle.param1 =1
imperialShuttle.param2 =2
imperialShuttle.param3 =nil
imperialShuttle.param4 =nil
table.insert(pieceTable,imperialShuttle)

tieSilencer={}
tieSilencer.name ='TIE Silencer'
tieSilencer.camp = DARK_SIDE
tieSilencer.rank=RANK_SHIP
tieSilencer.att=415
tieSilencer.range_att=2
tieSilencer.hp=581
tieSilencer.range_move=4
tieSilencer.price=3344
tieSilencer.img=love.graphics.newImage('images/TIE_Silencer.png')
tieSilencer.round=3
tieSilencer.special='Can split his attacks damages.'
tieSilencer.category=CATEGORY_VEHICLE
tieSilencer.fn =pieceSplitAtt
tieSilencer.param1 =1
tieSilencer.param2 =2
tieSilencer.param3 =nil
tieSilencer.param4 =nil
table.insert(pieceTable,tieSilencer)

tieFighter={}
tieFighter.name ='TIE Fighter'
tieFighter.camp = DARK_SIDE
tieFighter.rank=RANK_SHIP
tieFighter.att=250
tieFighter.range_att=2
tieFighter.hp=350
tieFighter.range_move=4
tieFighter.price=1760
tieFighter.img=love.graphics.newImage('images/tie.png')
tieFighter.round=3
tieFighter.special='Can split his attacks damages.'
tieFighter.category=CATEGORY_VEHICLE
tieFighter.fn =pieceSplitAtt
tieFighter.param1 =1
tieFighter.param2 =2
tieFighter.param3 =nil
tieFighter.param4 =nil
table.insert(pieceTable,tieFighter)

atm6={}
atm6.name ='AT-M6 '
atm6.camp = DARK_SIDE
atm6.rank='Heavy Walker'
atm6.att=1200
atm6.range_att=2
atm6.hp=1680
atm6.range_move=3
atm6.price=6776
atm6.img=love.graphics.newImage('images/AT-M6.png')
atm6.round=3
atm6.special='Can split his attacks damages.'
atm6.category=CATEGORY_VEHICLE
atm6.fn =pieceSplitAtt
atm6.param1 =1
atm6.param2 =2
atm6.param3 =nil
atm6.param4 =nil
table.insert(pieceTable,atm6)

atat={}
atat.name ='AT-AT '
atat.camp = DARK_SIDE
atat.rank='Walker'
atat.att=900
atat.range_att=2
atat.hp=1260
atat.range_move=3
atat.price=4720
atat.img=love.graphics.newImage('images/TB-TT.png')
atat.round=3
atat.special='Can split his attacks damages.'
atat.category=CATEGORY_VEHICLE
atat.fn =pieceSplitAtt
atat.param1 =1
atat.param2 =2
atat.param3 =nil
atat.param4 =nil
table.insert(pieceTable,atat)

aat={}
aat.name ='AAT '
aat.camp = DARK_SIDE
aat.rank='Battle Tank'
aat.att=300
aat.range_att=2
aat.hp=420
aat.range_move=3
aat.price=1840
aat.img=love.graphics.newImage('images/CAB1.jpg')
aat.round=3
aat.special='Can split his attacks damages.'
aat.category=CATEGORY_VEHICLE
aat.fn =pieceSplitAtt
aat.param1 =1
aat.param2 =2
aat.param3 =nil
aat.param4 =nil
table.insert(pieceTable,aat)

atst={}
atst.name ='AT-ST '
atst.camp = DARK_SIDE
atst.rank='Walker'
atst.att=200
atst.range_att=2
atst.hp=280
atst.range_move=3
atst.price=960
atst.img=love.graphics.newImage('images/ATST.png')
atst.round=nil
atst.special=''
atst.category=CATEGORY_VEHICLE
atst.fn =nil
table.insert(pieceTable,atst)

spiderDroid={}
spiderDroid.name ='Spider Droid'
spiderDroid.camp = DARK_SIDE
spiderDroid.rank='Droid'
spiderDroid.att=120
spiderDroid.range_att=2
spiderDroid.hp=168
spiderDroid.range_move=3
spiderDroid.price=576
spiderDroid.img=love.graphics.newImage('images/spiderdroid.png')
spiderDroid.round=nil
spiderDroid.special=''
spiderDroid.category=CATEGORY_VEHICLE
spiderDroid.fn =nil
table.insert(pieceTable,spiderDroid)

motoSpeeder={}
motoSpeeder.name ='Moto Speeder'
motoSpeeder.camp = DARK_SIDE
motoSpeeder.rank='Speeder'
motoSpeeder.att=50
motoSpeeder.range_att=2
motoSpeeder.hp=70
motoSpeeder.range_move=3
motoSpeeder.price=240
motoSpeeder.img=love.graphics.newImage('images/motospeeder.jpg')
motoSpeeder.round=nil
motoSpeeder.special=''
motoSpeeder.category=CATEGORY_VEHICLE
motoSpeeder.fn =nil
table.insert(pieceTable,motoSpeeder)


  --JEDI SHIP

centerPointStation={}
centerPointStation.name ='Centerpoint Station'
centerPointStation.camp = LIGHT_SIDE
centerPointStation.rank=RANK_SHIP
centerPointStation.att=121000
centerPointStation.range_att=4
centerPointStation.hp=169400
centerPointStation.range_move=50
centerPointStation.price=813680
centerPointStation.img=love.graphics.newImage('images/CenterpointStation.png')
centerPointStation.round=3
centerPointStation.special='Can split his attacks damages.'
centerPointStation.category=CATEGORY_VEHICLE
centerPointStation.fn =pieceSplitAtt
centerPointStation.param1 =1
centerPointStation.param2 =2
centerPointStation.param3 =nil
centerPointStation.param4 =nil
table.insert(pieceTable,centerPointStation)

viscountClassStarDefender={}
viscountClassStarDefender.name ='Viscount-class Star Defender'
viscountClassStarDefender.camp = LIGHT_SIDE
viscountClassStarDefender.rank=RANK_SHIP
viscountClassStarDefender.att=60700
viscountClassStarDefender.range_att=3
viscountClassStarDefender.hp=84980
viscountClassStarDefender.range_move=4
viscountClassStarDefender.price=350112
viscountClassStarDefender.img=love.graphics.newImage('images/stardefender.jpg')
viscountClassStarDefender.round=3
viscountClassStarDefender.special='Can split his attacks damages.'
viscountClassStarDefender.category=CATEGORY_VEHICLE
viscountClassStarDefender.fn =pieceSplitAtt
viscountClassStarDefender.param1 =1
viscountClassStarDefender.param2 =2
viscountClassStarDefender.param3 =nil
viscountClassStarDefender.param4 =nil
table.insert(pieceTable,viscountClassStarDefender)

homeOne={}
homeOne.name ='HomeOne'
homeOne.camp = LIGHT_SIDE
homeOne.rank=RANK_SHIP
homeOne.att=33400
homeOne.range_att=3
homeOne.hp=46760
homeOne.range_move=4
homeOne.price=192864
homeOne.img=love.graphics.newImage('images/homeone.png')
homeOne.round=3
homeOne.special='Can split his attacks damages.'
homeOne.category=CATEGORY_VEHICLE
homeOne.fn =pieceSplitAtt
homeOne.param1 =1
homeOne.param2 =2
homeOne.param3 =nil
homeOne.param4 =nil
table.insert(pieceTable,homeOne)

mediatorClassBattleCruiser={}
mediatorClassBattleCruiser.name ='Mediator-class Battle Cruiser'
mediatorClassBattleCruiser.camp = LIGHT_SIDE
mediatorClassBattleCruiser.rank=RANK_SHIP
mediatorClassBattleCruiser.att=21300
mediatorClassBattleCruiser.range_att=3
mediatorClassBattleCruiser.hp=29820
mediatorClassBattleCruiser.range_move=4
mediatorClassBattleCruiser.price=123168
mediatorClassBattleCruiser.img=love.graphics.newImage('images/mediator.jpg')
mediatorClassBattleCruiser.round=3
mediatorClassBattleCruiser.special='Can split his attacks damages.'
mediatorClassBattleCruiser.category=CATEGORY_VEHICLE
mediatorClassBattleCruiser.fn =pieceSplitAtt
mediatorClassBattleCruiser.param1 =1
mediatorClassBattleCruiser.param2 =2
mediatorClassBattleCruiser.param3 =nil
mediatorClassBattleCruiser.param4 =nil
table.insert(pieceTable,mediatorClassBattleCruiser)

millenniumFalcon={}
millenniumFalcon.name ='Millennium Falcon'
millenniumFalcon.camp = LIGHT_SIDE
millenniumFalcon.rank=RANK_SHIP
millenniumFalcon.att=12800
millenniumFalcon.range_att=3
millenniumFalcon.hp=17920
millenniumFalcon.range_move=4
millenniumFalcon.price=74208
millenniumFalcon.img=love.graphics.newImage('images/millenniumfalcon.png')
millenniumFalcon.round=3
millenniumFalcon.special='Can split his attacks damages.'
millenniumFalcon.category=CATEGORY_VEHICLE
millenniumFalcon.fn =pieceSplitAtt
millenniumFalcon.param1 =1
millenniumFalcon.param2 =2
millenniumFalcon.param3 =nil
millenniumFalcon.param4 =nil
table.insert(pieceTable,millenniumFalcon)

venatorClassStarDestroyer={}
venatorClassStarDestroyer.name ='Venator-class Star Destroyer'
venatorClassStarDestroyer.camp = LIGHT_SIDE
venatorClassStarDestroyer.rank=RANK_SHIP
venatorClassStarDestroyer.att=8000
venatorClassStarDestroyer.range_att=3
venatorClassStarDestroyer.hp=11200
venatorClassStarDestroyer.range_move=4
venatorClassStarDestroyer.price=46560
venatorClassStarDestroyer.img=love.graphics.newImage('images/venator.png')
venatorClassStarDestroyer.round=3
venatorClassStarDestroyer.special='Can split his attacks damages.'
venatorClassStarDestroyer.category=CATEGORY_VEHICLE
venatorClassStarDestroyer.fn =pieceSplitAtt
venatorClassStarDestroyer.param1 =1
venatorClassStarDestroyer.param2 =2
venatorClassStarDestroyer.param3 =nil
venatorClassStarDestroyer.param4 =nil
table.insert(pieceTable,venatorClassStarDestroyer)

hammerheadCorvette={}
hammerheadCorvette.name ='Hammerhead Corvette'
hammerheadCorvette.camp = LIGHT_SIDE
hammerheadCorvette.rank=RANK_SHIP
hammerheadCorvette.att=3500
hammerheadCorvette.range_att=3
hammerheadCorvette.hp=4900
hammerheadCorvette.range_move=4
hammerheadCorvette.price=20640
hammerheadCorvette.img=love.graphics.newImage('images/hamerhead.jpg')
hammerheadCorvette.round=3
hammerheadCorvette.special='Can split his attacks damages.'
hammerheadCorvette.category=CATEGORY_VEHICLE
hammerheadCorvette.fn =pieceSplitAtt
hammerheadCorvette.param1 =1
hammerheadCorvette.param2 =2
hammerheadCorvette.param3 =nil
hammerheadCorvette.param4 =nil
table.insert(pieceTable,hammerheadCorvette)

ghost={}
ghost.name ='Ghost'
ghost.camp = LIGHT_SIDE
ghost.rank=RANK_SHIP
ghost.att=1000
ghost.range_att=2
ghost.hp=1400
ghost.range_move=4
ghost.price=5720
ghost.img=love.graphics.newImage('images/Ghost.png')
ghost.round=3
ghost.special='Can split his attacks damages.'
ghost.category=CATEGORY_VEHICLE
ghost.fn =pieceSplitAtt
ghost.param1 =1
ghost.param2 =2
ghost.param3 =nil
ghost.param4 =nil
table.insert(pieceTable,ghost)

blackOne={}
blackOne.name ='Black One'
blackOne.camp = LIGHT_SIDE
blackOne.rank=RANK_SHIP
blackOne.att=700
blackOne.range_att=2
blackOne.hp=980
blackOne.range_move=4
blackOne.price=4134
blackOne.img=love.graphics.newImage('images/blackone.png')
blackOne.round=3
blackOne.special='Can split his attacks damages.'
blackOne.category=CATEGORY_VEHICLE
blackOne.fn =pieceSplitAtt
blackOne.param1 =1
blackOne.param2 =2
blackOne.param3 =nil
blackOne.param4 =nil
table.insert(pieceTable,blackOne)

repiblicGunship={}
repiblicGunship.name ='Republic Gunship'
repiblicGunship.camp = LIGHT_SIDE
repiblicGunship.rank=RANK_SHIP
repiblicGunship.att=550
repiblicGunship.range_att=2
repiblicGunship.hp=770
repiblicGunship.range_move=4
repiblicGunship.price=3621
repiblicGunship.img=love.graphics.newImage('images/canonière.jpg')
repiblicGunship.round=3
repiblicGunship.special='Can split his attacks damages.'
repiblicGunship.category=CATEGORY_VEHICLE
repiblicGunship.fn =pieceSplitAtt
repiblicGunship.param1 =1
repiblicGunship.param2 =2
repiblicGunship.param3 =nil
repiblicGunship.param4 =nil
table.insert(pieceTable,repiblicGunship)

actisClassInterceptor={}
actisClassInterceptor.name ='Actis-class Interceptor'
actisClassInterceptor.camp = LIGHT_SIDE
actisClassInterceptor.rank=RANK_SHIP
actisClassInterceptor.att=415
actisClassInterceptor.range_att=2
actisClassInterceptor.hp=581
actisClassInterceptor.range_move=4
actisClassInterceptor.price=3344
actisClassInterceptor.img=love.graphics.newImage('images/jediship.jpg')
actisClassInterceptor.round=3
actisClassInterceptor.special='Can split his attacks damages.'
actisClassInterceptor.category=CATEGORY_VEHICLE
actisClassInterceptor.fn =pieceSplitAtt
actisClassInterceptor.param1 =1
actisClassInterceptor.param2 =2
actisClassInterceptor.param3 =nil
actisClassInterceptor.param4 =nil
table.insert(pieceTable,actisClassInterceptor)

xwings={}
xwings.name ='X-Wings'
xwings.camp = LIGHT_SIDE
xwings.rank=RANK_SHIP
xwings.att=250
xwings.range_att=2
xwings.hp=350
xwings.range_move=4
xwings.price=1760
xwings.img=love.graphics.newImage('images/xwing.png')
xwings.round=3
xwings.special='Can split his attacks damages.'
xwings.category=CATEGORY_VEHICLE
xwings.fn =pieceSplitAtt
xwings.param1 =1
xwings.param2 =2
xwings.param3 =nil
xwings.param4 =nil
table.insert(pieceTable,xwings)

spha={}
spha.name ='SPHA '
spha.camp = LIGHT_SIDE
spha.rank='Heavy Walker'
spha.att=1200
spha.range_att=2
spha.hp=1680
spha.range_move=3
spha.price=6776
spha.img=love.graphics.newImage('images/sphat.png')
spha.round=3
spha.special='Can split his attacks damages.'
spha.category=CATEGORY_VEHICLE
spha.fn =pieceSplitAtt
spha.param1 =1
spha.param2 =2
spha.param3 =nil
spha.param4 =nil
table.insert(pieceTable,spha)

juggernautHavw={}
juggernautHavw.name ='Juggernaut HAVw'
juggernautHavw.camp = LIGHT_SIDE
juggernautHavw.rank='Turbo Tank'
juggernautHavw.att=900
juggernautHavw.range_att=2
juggernautHavw.hp=1260
juggernautHavw.range_move=3
juggernautHavw.price=4720
juggernautHavw.img=love.graphics.newImage('images/havw.jpg')
juggernautHavw.round=3
juggernautHavw.special='Can split his attacks damages.'
juggernautHavw.category=CATEGORY_VEHICLE
juggernautHavw.fn =pieceSplitAtt
juggernautHavw.param1 =1
juggernautHavw.param2 =2
juggernautHavw.param3 =nil
juggernautHavw.param4 =nil
table.insert(pieceTable,juggernautHavw)

saber={}
saber.name ='Saber '
saber.camp = LIGHT_SIDE
saber.rank='Fighter Tank'
saber.att=300
saber.range_att=2
saber.hp=420
saber.range_move=3
saber.price=1840
saber.img=love.graphics.newImage('images/tanksaber.jpg')
saber.round=3
saber.special='Can split his attacks damages.'
saber.category=CATEGORY_VEHICLE
saber.fn =pieceSplitAtt
saber.param1 =1
saber.param2 =2
saber.param3 =nil
saber.param4 =nil
table.insert(pieceTable,saber)

atte={}
atte.name ='AT-TE '
atte.camp = LIGHT_SIDE
atte.rank='Walker'
atte.att=200
atte.range_att=2
atte.hp=280
atte.range_move=3
atte.price=960
atte.img=love.graphics.newImage('images/atte.jpg')
atte.round=nil
atte.special=''
atte.category=CATEGORY_VEHICLE
atte.fn =nil
table.insert(pieceTable,atte)

atap={}
atap.name ='AT-AP '
atap.camp = LIGHT_SIDE
atap.rank='Walker'
atap.att=120
atap.range_att=2
atap.hp=168
atap.range_move=3
atap.price=576
atap.img=love.graphics.newImage('images/ATAP.jpg')
atap.round=nil
atap.special=''
atap.category=CATEGORY_VEHICLE
atap.fn =nil
table.insert(pieceTable,atap)

speederJoben={}
speederJoben.name ='Speeder Joben '
speederJoben.camp = LIGHT_SIDE
speederJoben.rank='Speeder'
speederJoben.att=50
speederJoben.range_att=2
speederJoben.hp=70
speederJoben.range_move=3
speederJoben.price=240
speederJoben.img=love.graphics.newImage('images/motojet.png')
speederJoben.round=nil
speederJoben.special=''
speederJoben.category=CATEGORY_VEHICLE
speederJoben.fn =nil
table.insert(pieceTable,speederJoben)
end
function Building()
  --JEDI BUILDING

lightMine={}
lightMine.name ='Light Mine'
lightMine.camp = LIGHT_SIDE
lightMine.rank='Lucrative Building'
lightMine.att=0
lightMine.range_att=0
lightMine.hp=200
lightMine.range_move=0
lightMine.price = 450 + 250 * (nbLightMine+1)
lightMine.img=love.graphics.newImage('images/mine.png')
lightMine.round=1
lightMine.special='+'.. mineCredit ..'credits'
lightMine.category=CATEGORY_BUILDING
lightMine.fn =nil
table.insert(pieceTable,lightMine)

lightOutPoste={}
lightOutPoste.name ='Light Outposte'
lightOutPoste.camp = LIGHT_SIDE
lightOutPoste.rank='Defensive and lucrative Building'
lightOutPoste.att=1000
lightOutPoste.range_att=2
lightOutPoste.hp=1400
lightOutPoste.range_move=0
lightOutPoste.price=4760 + 1000 * (nbLightOutPoste+1)
lightOutPoste.img=love.graphics.newImage('images/avant poste.png')
lightOutPoste.round=1
lightOutPoste.special='+'.. outPosteCredit ..'credits'
lightOutPoste.category=CATEGORY_BUILDING
lightOutPoste.fn =nil
table.insert(pieceTable,lightOutPoste)

lightTurrel={}
lightTurrel.name ='Light Turrel'
lightTurrel.camp = LIGHT_SIDE
lightTurrel.rank='Defensive Building'
lightTurrel.att=500
lightTurrel.range_att=2
lightTurrel.hp=300
lightTurrel.range_move=0
lightTurrel.price=1120
lightTurrel.img=love.graphics.newImage('images/tourelle.png')
lightTurrel.round=nil
lightTurrel.special=''
lightTurrel.category=CATEGORY_BUILDING
lightTurrel.fn =nil
table.insert(pieceTable,lightTurrel)

lightHeavyTurrel={}
lightHeavyTurrel.name ='Light Heavy Turrel'
lightHeavyTurrel.camp = LIGHT_SIDE
lightHeavyTurrel.rank='Defensive Building'
lightHeavyTurrel.att=5000
lightHeavyTurrel.range_att=3
lightHeavyTurrel.hp=3000
lightHeavyTurrel.range_move=0
lightHeavyTurrel.price=12907
lightHeavyTurrel.img=love.graphics.newImage('images/light heavy turrel.png')
lightHeavyTurrel.round=3
lightHeavyTurrel.special='Can split his attacks damages.'
lightHeavyTurrel.category=CATEGORY_BUILDING
lightHeavyTurrel.fn =pieceSplitAtt
lightHeavyTurrel.param1 =1
lightHeavyTurrel.param2 =2
lightHeavyTurrel.param3 =nil
lightHeavyTurrel.param4 =nil
table.insert(pieceTable,lightHeavyTurrel)

lightBase={}
lightBase.name ='Light Base'
lightBase.camp = LIGHT_SIDE
lightBase.rank='Main Building'
lightBase.att=0
lightBase.range_att=0
lightBase.hp=30000
lightBase.hpbase = 30000
lightBase.range_move=0
lightBase.price=0
lightBase.img=love.graphics.newImage('images/base rebelle.jpg')
lightBase.round=nil
lightBase.special=''
lightBase.category=CATEGORY_BASE
lightBase.fn =nil
table.insert(pieceTable,lightBase)
--table.insert(pieceGridTable,lightBase)

  --SITH BUILDING

darkMine={}
darkMine.name ='Dark Mine'
darkMine.camp = DARK_SIDE
darkMine.rank='Lucrative Building'
darkMine.att=0
darkMine.range_att=0
darkMine.hp=200
darkMine.range_move=0
darkMine.price=450  + 250 * (nbDarkMine+1)
darkMine.img=love.graphics.newImage('images/mine2.png')
darkMine.round=1
darkMine.special='+'.. mineCredit ..'credits'
darkMine.category=CATEGORY_BUILDING
darkMine.fn =nil
table.insert(pieceTable,darkMine)

darkOutPoste={}
darkOutPoste.name ='Dark Outposte'
darkOutPoste.camp = DARK_SIDE
darkOutPoste.rank='Defensive and lucrative Building'
darkOutPoste.att=1000
darkOutPoste.range_att=2
darkOutPoste.hp=1400
darkOutPoste.range_move=0
darkOutPoste.price=4760  + 1000 * (nbDarkOutPoste+1)
darkOutPoste.img=love.graphics.newImage('images/avant poste2.png')
darkOutPoste.round=1
darkOutPoste.special='+'.. outPosteCredit ..'credits'
darkOutPoste.category=CATEGORY_BUILDING
darkOutPoste.fn =nil
table.insert(pieceTable,darkOutPoste)

darkTurrel={}
darkTurrel.name ='Dark Turrel'
darkTurrel.camp = DARK_SIDE
darkTurrel.rank='Defensive Building'
darkTurrel.att=500
darkTurrel.range_att=2
darkTurrel.hp=300
darkTurrel.range_move=0
darkTurrel.price=1120
darkTurrel.img=love.graphics.newImage('images/tourelle2.png')
darkTurrel.round=nil
darkTurrel.special=''
darkTurrel.category=CATEGORY_BUILDING
darkTurrel.fn =nil
table.insert(pieceTable,darkTurrel)

darkHeavyTurrel={}
darkHeavyTurrel.name ='Dark Heavy Turrel'
darkHeavyTurrel.camp = DARK_SIDE
darkHeavyTurrel.rank='Defensive Building'
darkHeavyTurrel.att=5000
darkHeavyTurrel.range_att=3
darkHeavyTurrel.hp=3000
darkHeavyTurrel.range_move=0
darkHeavyTurrel.price=12907
darkHeavyTurrel.img=love.graphics.newImage('images/dark heavy turrel.jpg')
darkHeavyTurrel.round=3
darkHeavyTurrel.special='Can split his attacks damages.'
darkHeavyTurrel.category=CATEGORY_BUILDING
darkHeavyTurrel.fn =pieceSplitAtt
darkHeavyTurrel.param1 =1
darkHeavyTurrel.param2 =2
darkHeavyTurrel.param3 =nil
darkHeavyTurrel.param4 =nil
table.insert(pieceTable,darkHeavyTurrel)

darkBase={}
darkBase.name ='Dark Base'
darkBase.camp = DARK_SIDE
darkBase.rank='Main Building'
darkBase.att=0
darkBase.range_att=0
darkBase.hp=30000
darkBase.hpbase = 30000
darkBase.range_move=0
darkBase.price=0
darkBase.img=love.graphics.newImage('images/base imperiale.jpg')
darkBase.round=nil
darkBase.special=''
darkBase.category=CATEGORY_BASE
darkBase.fn =nil
table.insert(pieceTable,darkBase)
--table.insert(pieceGridTable,darkBase)

end
function Den_Monster()

den1={}
den1.name ='Den'
den1.camp = MONSTER_SIDE
den1.rank="Monster' home"
den1.att=0
den1.range_att=0
den1.hp=nil
den1.range_move=0
den1.price=nil
den1.img=love.graphics.newImage('images/grotte.jpg')
den1.round=nil
den1.special='Be carreful ! Do not approch !'
den1.category=CATEGORY_DEN
den1.fn =nil
table.insert(pieceTable,den1)

porg={}
porg.name ='Porg'
porg.camp = MONSTER_SIDE
porg.rank='Little creature'
porg.att=1
porg.range_att=1
porg.hp=1
porg.hpbase=1
porg.range_move=1
porg.price='A bounty of '.. 5 ..' credits'
porg.special= 5
porg.img=love.graphics.newImage('images/porg.png')
porg.round=nil
porg.category=CATEGORY_MONSTER
porg.fn =nil
table.insert(pieceTable,porg)
table.insert(monsterTable, porg)

slyyyg={}
slyyyg.name ='Slyyyg'
slyyyg.camp = MONSTER_SIDE
slyyyg.rank='Poisonous beast'
slyyyg.att=10
slyyyg.range_att=1
slyyyg.hp=14
slyyyg.hpbase=14
slyyyg.range_move=1
slyyyg.price='A bounty of '.. 58 ..' credits'
slyyyg.img=love.graphics.newImage('images/Slyyyg.png')
slyyyg.round=nil
slyyyg.special=58
slyyyg.category=CATEGORY_MONSTER
slyyyg.fn =nil
table.insert(pieceTable,slyyyg)
table.insert(monsterTable, slyyyg)

wampa={}
wampa.name ='Wampa'
wampa.camp = MONSTER_SIDE
wampa.rank='Carnivorous beast'
wampa.att=14
wampa.range_att=1
wampa.hp=20
wampa.hpbase=20
wampa.range_move=1
wampa.price='A bounty of '.. 82 ..' credits'
wampa.img=love.graphics.newImage('images/wampa.jpg')
wampa.round=nil
wampa.special=82
wampa.category=CATEGORY_MONSTER
wampa.fn =nil
table.insert(pieceTable,wampa)
table.insert(monsterTable, wampa)

philak={}
philak.name ='Philak'
philak.camp = MONSTER_SIDE
philak.rank='Dangerous creature'
philak.att=20
philak.range_att=1
philak.hp=28
philak.hpbase=28
philak.range_move=2
philak.price='A bounty of '.. 115 ..' credits'
philak.img=love.graphics.newImage('images/Phillak.png')
philak.round=nil
philak.special=115
philak.category=CATEGORY_MONSTER
philak.fn =nil
table.insert(pieceTable,philak)
table.insert(monsterTable, philak)

bogRat={}
bogRat.name ='Bog Rat'
bogRat.camp = MONSTER_SIDE
bogRat.rank='Large under ground beast'
bogRat.att=27
bogRat.range_att=1
bogRat.hp=38
bogRat.hpbase=38
bogRat.range_move=2
bogRat.price='A bounty of '.. 156 ..' credits'
bogRat.img=love.graphics.newImage('images/Bog_Rat.png')
bogRat.round=nil
bogRat.special=156
bogRat.category=CATEGORY_MONSTER
bogRat.fn =nil
table.insert(pieceTable,bogRat)
table.insert(monsterTable, bogRat)

nexu={}
nexu.name ='Nexu'
nexu.camp = MONSTER_SIDE
nexu.rank='Carnivorous beast'
nexu.att=38
nexu.range_att=1
nexu.hp=53
nexu.hpbase=53
nexu.range_move=2
nexu.price='A bounty of '.. 218 ..' credits'
nexu.img=love.graphics.newImage('images/Nexu.jpg')
nexu.round=nil
nexu.special=218
nexu.category=CATEGORY_MONSTER
nexu.fn =nil
table.insert(pieceTable,nexu)
table.insert(monsterTable, nexu)

scazz={}
scazz.name ='Scazz'
scazz.camp = MONSTER_SIDE
scazz.rank='Big beast'
scazz.att=54
scazz.range_att=1
scazz.hp=76
scazz.hpbase=76
scazz.range_move=2
scazz.price='A bounty of '.. 312 ..' credits'
scazz.img=love.graphics.newImage('images/Scazz.png')
scazz.round=nil
scazz.special=312
scazz.category=CATEGORY_MONSTER
scazz.fn =nil
table.insert(pieceTable,scazz)
table.insert(monsterTable, scazz)

kraytDragon={}
kraytDragon.name ='Krayt Dragon'
kraytDragon.camp = MONSTER_SIDE
kraytDragon.rank='Dangerous dragon'
kraytDragon.att=75
kraytDragon.range_att=1
kraytDragon.hp=105
kraytDragon.hpbase=105
kraytDragon.range_move=2
kraytDragon.price='A bounty of '.. 432 ..' credits'
kraytDragon.img=love.graphics.newImage('images/dragon krayt.jpg')
kraytDragon.round=nil
kraytDragon.special=432
kraytDragon.category=CATEGORY_MONSTER
kraytDragon.fn =nil
table.insert(pieceTable,kraytDragon)
table.insert(monsterTable, kraytDragon)

vractyl={}
vractyl.name ='Vractyl'
vractyl.camp = MONSTER_SIDE
vractyl.rank='Big Creature'
vractyl.att=105
vractyl.range_att=1
vractyl.hp=147
vractyl.hpbase = 147
vractyl.range_move=2
vractyl.price='A bounty of '.. 605 ..' credits'
vractyl.img=love.graphics.newImage('images/Varactyl_NEGAS.jpg')
vractyl.round=nil
vractyl.special=605
vractyl.category=CATEGORY_MONSTER
vractyl.fn =nil
table.insert(pieceTable,vractyl)
table.insert(monsterTable, vractyl)

beastRider={}
beastRider.name ='Beast Rider'
beastRider.camp = MONSTER_SIDE
beastRider.rank='Dangerous creature'
beastRider.att=148
beastRider.range_att=1
beastRider.hp=207
beastRider.hpbase=207
beastRider.range_move=2
beastRider.price='A bounty of '.. 852 ..' credits'
beastRider.img=love.graphics.newImage('images/guerrier.png')
beastRider.round=nil
beastRider.special=852
beastRider.category=CATEGORY_MONSTER
beastRider.fn =nil
table.insert(pieceTable,beastRider)
table.insert(monsterTable, beastRider)

oggodoBogdo={}
oggodoBogdo.name ='Ogodo Bogdo'
oggodoBogdo.camp = MONSTER_SIDE
oggodoBogdo.rank='Big beast'
oggodoBogdo.att=207
oggodoBogdo.range_att=1
oggodoBogdo.hp=290
oggodoBogdo.hpbase=290
oggodoBogdo.range_move=2
oggodoBogdo.price='A bounty of '.. 1193 ..' credits'
oggodoBogdo.img=love.graphics.newImage('images/oggodo.png')
oggodoBogdo.round=nil
oggodoBogdo.special=1193
oggodoBogdo.category=CATEGORY_MONSTER
oggodoBogdo.fn =nil
table.insert(pieceTable,oggodoBogdo)
table.insert(monsterTable, oggodoBogdo)

wyyyschokk={}
wyyyschokk.name ='Wyyyschokk'
wyyyschokk.camp = MONSTER_SIDE
wyyyschokk.rank='Dangerous specie'
wyyyschokk.att=289
wyyyschokk.range_att=2
wyyyschokk.hp=405
wyyyschokk.hpbase=405
wyyyschokk.range_move=2
wyyyschokk.price='A bounty of '.. 1943 ..' credits'
wyyyschokk.img=love.graphics.newImage('images/Wyyyschokk.png')
wyyyschokk.round=nil
wyyyschokk.special=1943
wyyyschokk.category=CATEGORY_MONSTER
wyyyschokk.fn =nil
table.insert(pieceTable,wyyyschokk)
table.insert(monsterTable, wyyyschokk)

ackley={}
ackley.name ='Ackley'
ackley.camp = MONSTER_SIDE
ackley.rank='Dangerous creature'
ackley.att=405
ackley.range_att=2
ackley.hp=567
ackley.hpbase=567
ackley.range_move=2
ackley.price='A bounty of '.. 2722 ..' credits'
ackley.img=love.graphics.newImage('images/acklay.jpg')
ackley.round=nil
ackley.special=2722
ackley.category=CATEGORY_MONSTER
ackley.fn =nil
table.insert(pieceTable,ackley)
table.insert(monsterTable, ackley)

jotaz={}
jotaz.name ='Jotaz'
jotaz.camp = MONSTER_SIDE
jotaz.rank='Enormous monster'
jotaz.att=567
jotaz.range_att=2
jotaz.hp=794
jotaz.hpbase=794
jotaz.range_move=2
jotaz.price='A bounty of '.. 3811 ..' credits'
jotaz.img=love.graphics.newImage('images/Jotaz.png')
jotaz.round=nil
jotaz.special=3811
jotaz.category=CATEGORY_MONSTER
jotaz.fn =nil
table.insert(pieceTable,jotaz)
table.insert(monsterTable, jotaz)

rancor={}
rancor.name ='Rancor'
rancor.camp = MONSTER_SIDE
rancor.rank='Huge beast'
rancor.att=794
rancor.range_att=2
rancor.hp=1112
rancor.hpbase=1112
rancor.range_move=2
rancor.price='A bounty of '.. 5337 ..' credits'
rancor.img=love.graphics.newImage('images/Rancor.jpg')
rancor.round=nil
rancor.special=5337
rancor.category=CATEGORY_MONSTER
rancor.fn =nil
table.insert(pieceTable,rancor)
table.insert(monsterTable, rancor)

rathtar={}
rathtar.name ='Rathtar'
rathtar.camp = MONSTER_SIDE
rathtar.rank='Dangerous beast'
rathtar.att=1111
rathtar.range_att=2
rathtar.hp=1555
rathtar.hpbase=1555
rathtar.range_move=2
rathtar.price='A bounty of '.. 7465 ..' credits'
rathtar.img=love.graphics.newImage('images/rathtar.png')
rathtar.round=nil
rathtar.special=7465
rathtar.category=CATEGORY_MONSTER
rathtar.fn =nil
table.insert(pieceTable,rathtar)
table.insert(monsterTable, rathtar)

reek={}
reek.name ='Reek'
reek.camp = MONSTER_SIDE
reek.rank='Big Creature'
reek.att=1556
reek.range_att=2
reek.hp=2178
reek.hpbase=2178
reek.range_move=2
reek.price='A bounty of '.. 10455 ..' credits'
reek.img=love.graphics.newImage('images/rino.png')
reek.round=nil
reek.special=10455
reek.category=CATEGORY_MONSTER
reek.fn =nil
table.insert(pieceTable,reek)
table.insert(monsterTable, reek)

sarlacc={}
sarlacc.name ='Sarlacc'
sarlacc.camp = MONSTER_SIDE
sarlacc.rank='Dangerous ,carnivorous creature'
sarlacc.att=2178
sarlacc.range_att=2
sarlacc.hp=3049
sarlacc.hpbase=3049
sarlacc.range_move=2
sarlacc.price='A bounty of '.. 14636 ..' credits'
sarlacc.img=love.graphics.newImage('images/Sarlacc.png')
sarlacc.round=nil
sarlacc.special=14636
sarlacc.category=CATEGORY_MONSTER
sarlacc.fn =nil
table.insert(pieceTable,sarlacc)
table.insert(monsterTable, sarlacc)

gorgara={}
gorgara.name ='Gorgara'
gorgara.camp = MONSTER_SIDE
gorgara.rank='Big flying beast'
gorgara.att=3049
gorgara.range_att=2
gorgara.hp=4269
gorgara.hpbase=4269
gorgara.range_move=2
gorgara.price='A bounty of '.. 20490 ..' credits'
gorgara.img=love.graphics.newImage('images/Gorgara.png')
gorgara.round=nil
gorgara.special=20490
gorgara.category=CATEGORY_MONSTER
gorgara.fn =nil
table.insert(pieceTable,gorgara)
table.insert(monsterTable, gorgara)

tukata={}
tukata.name="Tuk'ata"
tukata.camp = MONSTER_SIDE
tukata.rank='Carnivorous beast'
tukata.att=4269
tukata.range_att=2
tukata.hp=5977
tukata.hpbase=5977
tukata.range_move=2
tukata.price='A bounty of '.. 28689 ..' credits'
tukata.img=love.graphics.newImage('images/tukata.png')
tukata.round=nil
tukata.special=28689
tukata.category=CATEGORY_MONSTER
tukata.fn =nil
table.insert(pieceTable,tukata)
table.insert(monsterTable, tukata)

purrgil={}
purrgil.name ='Purrgil'
purrgil.camp = MONSTER_SIDE
purrgil.rank='Space whale-like creature'
purrgil.att=5976
purrgil.range_att=2
purrgil.hp=8366
purrgil.hpbase=8366
purrgil.range_move=2
purrgil.price='A bounty of '.. 40158 ..' credits'
purrgil.img=love.graphics.newImage('images/Purrgil.png')
purrgil.round=nil
purrgil.special=40158
purrgil.category=CATEGORY_MONSTER
purrgil.fn =nil
table.insert(pieceTable,purrgil)
table.insert(monsterTable, purrgil)

nydak={}
nydak.name ='Nydak'
nydak.camp = MONSTER_SIDE
nydak.rank='Carnivorous beast'
nydak.att=8367
nydak.range_att=2
nydak.hp=11714
nydak.hpbase=11714
nydak.range_move=3
nydak.price='A bounty of '.. 56227 ..' credits'
nydak.img=love.graphics.newImage('images/Lesser_Nydak.png')
nydak.round=nil
nydak.special=56227
nydak.category=CATEGORY_MONSTER
nydak.fn =nil
table.insert(pieceTable,nydak)
table.insert(monsterTable, nydak)

leviathan={}
leviathan.name ='Leviathan'
leviathan.camp = MONSTER_SIDE
leviathan.rank='Large carnivorous reptile'
leviathan.att=11714
leviathan.range_att=2
leviathan.hp=16400
leviathan.hpbase=16400
leviathan.range_move=3
leviathan.price='A bounty of '.. 78719 ..' credits'
leviathan.img=love.graphics.newImage('images/leviathan.jpg')
leviathan.round=nil
leviathan.special=78719
leviathan.category=CATEGORY_MONSTER
leviathan.fn =nil
table.insert(pieceTable,leviathan)
table.insert(monsterTable, leviathan)

terentatek={}
terentatek.name ='Terentatek'
terentatek.camp = MONSTER_SIDE
terentatek.rank='Big Creature'
terentatek.att=16399
terentatek.range_att=3
terentatek.hp=22959
terentatek.hpbase=22959
terentatek.range_move=3
terentatek.price='A bounty of '.. 125946 ..' credits'
terentatek.img=love.graphics.newImage('images/Terentatek.jpg')
terentatek.round=nil
terentatek.special=125946
terentatek.category=CATEGORY_MONSTER
terentatek.fn =nil
table.insert(pieceTable,terentatek)
table.insert(monsterTable, terentatek)

zilloBeast={}
zilloBeast.name ='Zillo Beast'
zilloBeast.camp = MONSTER_SIDE
zilloBeast.rank='Gargantuan serpentlike creature'
zilloBeast.att=22959
zilloBeast.range_att=3
zilloBeast.hp=32143
zilloBeast.hpbase=32143
zilloBeast.range_move=3
zilloBeast.price='A bounty of '.. 176326 ..' credits'
zilloBeast.img=love.graphics.newImage('images/zillo.jpg')
zilloBeast.round=nil
zilloBeast.special=176326
zilloBeast.category=CATEGORY_MONSTER
zilloBeast.fn =nil
table.insert(pieceTable,zilloBeast)
table.insert(monsterTable, zilloBeast)

gorog={}
gorog.name ='Gorog'
gorog.camp = MONSTER_SIDE
gorog.rank='Gargantuan beast'
gorog.att=32142
gorog.range_att=3
gorog.hp=44999
gorog.hpbase=44999
gorog.range_move=3
gorog.price='A bounty of '.. 246851 ..' credits'
gorog.img=love.graphics.newImage('images/gorog.png')
gorog.round=nil
gorog.special=246851
gorog.category=CATEGORY_MONSTER
gorog.fn =nil
table.insert(pieceTable,gorog)
table.insert(monsterTable, gorog)

sando={}
sando.name ='Sando'
sando.camp = MONSTER_SIDE
sando.rank='Enormous aqua monster'
sando.att=44999
sando.range_att=3
sando.hp=62999
sando.hpbase=62999
sando.range_move=4
sando.price='A bounty of '.. 345594 ..' credits'
sando.img=love.graphics.newImage('images/Sando.png')
sando.round=nil
sando.special=345594
sando.category=CATEGORY_MONSTER
sando.fn =nil
table.insert(pieceTable,sando)
table.insert(monsterTable, sando)

giantNeebrayManta={}
giantNeebrayManta.name ='Giant Neebray Manta'
giantNeebrayManta.camp = MONSTER_SIDE
giantNeebrayManta.rank='Huge space flying beast'
giantNeebrayManta.att=62998
giantNeebrayManta.range_att=3
giantNeebrayManta.hp=88197
giantNeebrayManta.hpbase=88197
giantNeebrayManta.range_move=4
giantNeebrayManta.price='A bounty of '.. 483824 ..' credits'
giantNeebrayManta.img=love.graphics.newImage('images/Neebray.png')
giantNeebrayManta.round=nil
giantNeebrayManta.special=483824
giantNeebrayManta.category=CATEGORY_MONSTER
giantNeebrayManta.fn =nil
table.insert(pieceTable,giantNeebrayManta)
table.insert(monsterTable, giantNeebrayManta)

summaVerminoth={}
summaVerminoth.name ='Summa Verminoth'
summaVerminoth.camp = MONSTER_SIDE
summaVerminoth.rank='Gargantuan space-faring beast'
summaVerminoth.att=88198
summaVerminoth.range_att=4
summaVerminoth.hp=123477
summaVerminoth.hpbase=123477
summaVerminoth.range_move=5
summaVerminoth.price='A bounty of '.. 762030 ..' credits'
summaVerminoth.img=love.graphics.newImage('images/Summa-verminoth.jpg')
summaVerminoth.round=nil
summaVerminoth.special=762030
summaVerminoth.category=CATEGORY_MONSTER
summaVerminoth.fn =nil
table.insert(pieceTable,summaVerminoth)
table.insert(monsterTable, summaVerminoth)


end
function Ability_Pieces()
  hunter1={}
  hunter1.name ='Hunter 1'
  hunter1.camp = LIGHT_SIDE
  hunter1.rank='Bounty Hunter'
  hunter1.att=10500
  hunter1.range_att=2
  hunter1.hp=14700
  hunter1.range_move=3
  hunter1.price=50400
  hunter1.img=love.graphics.newImage('images/hunter1.jpg')
  hunter1.round=nil
  hunter1.special='You receive a bounty equal to\r\nthe price of the piece she kills.'
  hunter1.category=CATEGORY_HUNTER
  hunter1.fn =nil
  table.insert(pieceTable,hunter1)
  
  hunter2={}
  hunter2.name ='Hunter 2'
  hunter2.camp = LIGHT_SIDE
  hunter2.rank='Bounty Hunter'
  hunter2.att=10500
  hunter2.range_att=2
  hunter2.hp=14700
  hunter2.range_move=3
  hunter2.price=50400
  hunter2.img=love.graphics.newImage('images/hunter2.jpg')
  hunter2.round=nil
  hunter2.special='You receive a bounty equal to\r\nthe price of the piece he kills.'
  hunter2.category=CATEGORY_HUNTER
  hunter2.fn =nil
  table.insert(pieceTable,hunter2)
  
  hunter3={}
  hunter3.name ='Hunter 3'
  hunter3.camp = DARK_SIDE
  hunter3.rank='Bounty Hunter'
  hunter3.att=10500
  hunter3.range_att=2
  hunter3.hp=14700
  hunter3.range_move=3
  hunter3.price=50400
  hunter3.img=love.graphics.newImage('images/hunter3.jpg')
  hunter3.round=nil
  hunter3.special='You receive a bounty equal to\r\nthe price of the piece he kills.'
  hunter3.category=CATEGORY_HUNTER
  hunter3.fn =nil
  table.insert(pieceTable,hunter3)
  
  hunter4={}
  hunter4.name ='Hunter 4'
  hunter4.camp = DARK_SIDE
  hunter4.rank='Bounty Hunter'
  hunter4.att=10500
  hunter4.range_att=2
  hunter4.hp=14700
  hunter4.range_move=3
  hunter4.price=50400
  hunter4.img=love.graphics.newImage('images/hunter4.jpg')
  hunter4.round=nil
  hunter4.special='You receive a bounty equal to\r\nthe price of the piece he kills.'
  hunter4.category=CATEGORY_HUNTER
  hunter4.fn =nil
  table.insert(pieceTable,hunter4)
  
  lightSandCrawler={}
  lightSandCrawler.name ='SandCrawler'
  lightSandCrawler.camp = LIGHT_SIDE
  lightSandCrawler.rank="Jawa's Vehicule"
  lightSandCrawler.att= 10000
  lightSandCrawler.range_att=10
  lightSandCrawler.hp=14700
  lightSandCrawler.range_move=10
  lightSandCrawler.price=0
  lightSandCrawler.img=love.graphics.newImage('images/Sandcrawler.png')
  lightSandCrawler.round=nil
  lightSandCrawler.special="You receive tree SandCrawlers. For\r\nall pieces who are kill by a SandCrawler\r\nthey can't be bought anymore,\r\nthe piece is still by the Jawa"
  lightSandCrawler.category=CATEGORY_JAWA
  lightSandCrawler.fn =nil
  table.insert(pieceTable,lightSandCrawler)
  
  darkSandCrawler={}
  darkSandCrawler.name ='SandCrawler'
  darkSandCrawler.camp = DARK_SIDE
  darkSandCrawler.rank="Jawa's Vehicule"
  darkSandCrawler.att=10000
  darkSandCrawler.range_att=10
  darkSandCrawler.hp=14700
  darkSandCrawler.range_move=10
  darkSandCrawler.price=0
  darkSandCrawler.img=love.graphics.newImage('images/Sandcrawler.png')
  darkSandCrawler.round=nil
  darkSandCrawler.special="You receive tree SandCrawlers. For\r\nall pieces who are kill by a SandCrawler\r\nthey can't be bought anymore,\r\nthe piece is still by the Jawa"
  darkSandCrawler.category=CATEGORY_JAWA
  darkSandCrawler.fn =nil
  table.insert(pieceTable,darkSandCrawler)
end
function Ability()
  heal = {}
  heal.name = "    Heal"
  heal.level = 1
  heal.price = 1
  heal.effect = "Your pieces' heal points are \r\nmultiplicated by 25%.\r\n(doens't affect ypur base hp)"
  heal.img = love.graphics.newImage("images/heal.png")
  heal.fn = function()
    for i, piece in ipairs(pieceGridTable)do
      if piece.camp == currentSide and piece.hpbase ~= nil and piece.hp <= piece.hpbase and piece.category ~= CATEGORY_BASE then
        table.insert(markerTable, {markertype='heal', l=piece.l, c=piece.c, nombre=piece.hp * 1.25, timer=0})
        piece.hp = piece.hp * 1.25
      end
    end
  end
  table.insert(abilityTable, heal)

  strength = {}
  strength.name = "  Stenght"
  strength.level = 2
  strength.price = 2
  strength.effect = "Your pieces' attack are \r\nmultiplicated by 25%."
  strength.img = love.graphics.newImage("images/attack.png")
  strength.fn = function()
    for i, piece in ipairs(pieceGridTable)do
      if piece.camp == currentSide and piece.attbase ~= nil and piece.att <= piece.attbase and piece.category ~= CATEGORY_BASE then
        table.insert(markerTable, {markertype='att', l=piece.l, c=piece.c, nombre=piece.att * 1.25, timer=0})
        piece.att = piece.att * 1.25
      end
    end
  end
  table.insert(abilityTable, strength)

  move = {}
  move.name = "    Move"
  move.level = 3
  move.price = 3
  move.effect = "+1 range_move for all your\r\npieces."
  move.img = love.graphics.newImage("images/run.jpg")
  move.fn = function()
    for i, piece in ipairs(pieceGridTable)do
      if piece.camp == currentSide and piece.range_move ~= nil and piece.category ~= CATEGORY_BASE and piece.category ~= CATEGORY_BUILDING then 
        piece.range_move = piece.range_move + 1
        if piece.range_movebase ~= nil then
          piece.range_movebase = piece.range_movebase + 1
        end
        table.insert(markerTable, {markertype='att', l=piece.l, c=piece.c, nombre=1, timer=0})
      end
    end
  end
  table.insert(abilityTable, move)

  shot = {}
  shot.name = "    Shot"
  shot.level = 4
  shot.price = 4
  shot.effect = "+1 range_att for all your\r\npieces."
  shot.img = love.graphics.newImage("images/shot.png")
  shot.fn = function()
    for i, piece in ipairs(pieceGridTable)do
      if piece.camp == currentSide and piece.range_att ~= nil and piece.category ~= CATEGORY_BASE then 
        piece.range_att = piece.range_att + 1
        if piece.range_attbase ~= nil then
          piece.range_attbase = piece.range_attbase + 1
        end
        table.insert(markerTable, {markertype='att', l=piece.l, c=piece.c, nombre=1, timer=0})
      end
    end
  end
  table.insert(abilityTable, shot)

  convoy = {}
  convoy.name = "  Convoy"
  convoy.level2 = 1
  convoy.price = 2
  convoy.lightEffect = "You receive 4 AT-ST and 1 Saber.\r\nBe careful to have enough space\r\nto place the 5 pieces!"
  convoy.lightImg = love.graphics.newImage("images/lightConvoy.jpg")
  convoy.darkEffect = "You receive 4 AT-TE and 1 AAT.\r\nBe careful to have enough space\r\nto place the 5 pieces!"
  convoy.darkImg = love.graphics.newImage("images/darkConvoy.jpg")
  convoy.fn = function()
    g_abilityConvoy = true
    g_abilityConvoyPieces = 5
    drawDollar = true
  end
  table.insert(abilityTable, convoy)

  squadron = {}
  squadron.name = " Squadron"
  squadron.level2 = 2
  squadron.price = 3
  squadron.lightEffect = "You receive 5 X-wings.\r\nBe careful to have enough space\r\nto place the 5 pieces!"
  squadron.lightImg = love.graphics.newImage("images/squadronxwings.jpg")
  squadron.darkEffect = "You receive 5 TIE Fighter.\r\nBe careful to have enough space\r\nto place the 5 pieces!"
  squadron.darkImg = love.graphics.newImage("images/squadrontie.jpg")
  squadron.fn = function()
    g_abilitySquadron = true
    g_abilitySquadronPieces = 5
    drawDollar = true
  end
  table.insert(abilityTable, squadron)

  theOrder = {}
  theOrder.name = " The Order"
  theOrder.level2 = 3
  theOrder.price = 4
  theOrder.lightEffect = "You receive 5 jedis.\r\nBe careful to have enough space\r\nto place the 5 pieces!"
  theOrder.lightImg = love.graphics.newImage("images/jedis.png")
  theOrder.darkEffect = "You receive 5 siths.\r\nBe careful to have enough space\r\nto place the 5 pieces!"
  theOrder.darkImg = love.graphics.newImage("images/Sith.png")
  theOrder.fn = function()
    g_abilityTheOrder = true
    g_abilityTheOrderPieces = 5
    drawDollar = true
  end
  table.insert(abilityTable, theOrder)

  bigFleet = {}
  bigFleet.name = "  Big Fleet"
  bigFleet.level2 = 4
  bigFleet.price = 6
  bigFleet.lightEffect = "You receive 4 Hammerhead \r\nCorvette and 1 HomeOne.\r\nBe careful to have enough space\r\nto place the 5 pieces!"
  bigFleet.lightImg = love.graphics.newImage("images/bigfleet.jpg")
  bigFleet.darkEffect = "You receive 4 Star \r\nDestroyer and 1 Executor.\r\nBe careful to have enough space\r\nto place the 5 pieces!"
  bigFleet.darkImg = love.graphics.newImage("images/bigfleet2.jpg")
  bigFleet.fn = function()
    g_abilityBigFleet = true
    g_abilityBigFleetPieces = 5
    drawDollar = true
  end
  table.insert(abilityTable, bigFleet)

  shieldBase = {}
  shieldBase.name = "   Shield"
  shieldBase.level3 = 1
  shieldBase.price = 2
  shieldBase.effect = "Your base hp are multiplicated\r\nby 20%."
  shieldBase.img = love.graphics.newImage("images/shielBase.jpg")
  shieldBase.fn = function()
    for i, piece in ipairs(pieceGridTable)do
      if currentSide == LIGHT_SIDE then
        if piece.name == "Light Base" then
          table.insert(markerTable, {markertype='heal', l=piece.l, c=piece.c, nombre=piece.hp * 0.20, timer=0})
          piece.hp = piece.hp * 1.20
        end
      elseif currentSide == DARK_SIDE then
        if piece.name == "Dark Base" then
          table.insert(markerTable, {markertype='heal', l=piece.l, c=piece.c, nombre=piece.hp * 0.20, timer=0})
          piece.hp = piece.hp * 1.20
        end
      end
    end
  end
  table.insert(abilityTable, shieldBase)

  unlimitedPower = {}
  unlimitedPower.name = " Unlimited \r\n  Power"
  unlimitedPower.level3 = 2
  unlimitedPower.price = 2
  unlimitedPower.effect = "4 force attacks that inflict \r\n1500 damage. (Can not be use\r\nagainst a base)"
  unlimitedPower.darkImg = love.graphics.newImage("images/eclaireforce.jpg")
  unlimitedPower.lightImg = love.graphics.newImage("images/force.jpg")
  unlimitedPower.fn = function()
    g_abilityUnlimitedPower = true
    g_abilityUnlimitedPowerShots = 4
  end
  table.insert(abilityTable, unlimitedPower)

  doubleShot = {}
  doubleShot.name = " Double\r\n  Shot"
  doubleShot.level3 = 3
  doubleShot.price = 3
  doubleShot.effect = "Two spaceShip shots that inflict \r\n7500 damage. (Can not be use\r\nagainst a base)"
  doubleShot.lightImg = love.graphics.newImage("images/lightDoubleShot.png")
  doubleShot.darkImg = love.graphics.newImage("images/darkDoubleShot.jpg")
  doubleShot.fn = function()
    g_abilityDoubleShot = true
    g_abilityDoubleShotShots = 2
  end
  table.insert(abilityTable, doubleShot)

  bigShot = {}
  bigShot.name = "  Big Shot"
  bigShot.level3 = 4
  bigShot.price = 4
  bigShot.effect = "One Death Star's shot that inflict \r\n37500 damage. (Can not be use\r\nagainst a base)"
  bigShot.img = love.graphics.newImage("images/bigshot.jpeg")
  bigShot.fn = function()
    g_abilityBigShot = true
    g_abilityBigShotShots = 1
  end
  table.insert(abilityTable, bigShot)

  myMonster = {}
  myMonster.name = "      My \r\n  Monster"
  myMonster.level4 = 1
  myMonster.price = 1
  myMonster.effect = "You can take control of one \r\nmonster"
  myMonster.lightImg = love.graphics.newImage("images/mymonster2.jpg")
  myMonster.darkImg = love.graphics.newImage("images/mymonster.jpg")
  myMonster.fn = function()
    g_abilityMyMonster = true
    g_abilityMyMonsterPieces = 1
    drawHand = true
  end
  table.insert(abilityTable, myMonster)

  bigBounty = {}
  bigBounty.name = "      Big \r\n   Bounty"
  bigBounty.level4 = 2
  bigBounty.price = 2
  bigBounty.effect = "You can multiplicated one \r\nmonster's bounty by 4."
  bigBounty.img = love.graphics.newImage("images/bigbounty.png")
  bigBounty.fn = function()
    g_abilityBigBounty = true
    g_abilityBigBountyPieces = 1
    drawHand = true
  end
  table.insert(abilityTable, bigBounty)

  jawaLooting = {}
  jawaLooting.name = "   Jawa \r\n  Looting"
  jawaLooting.level4 = 3
  jawaLooting.price = 4
  jawaLooting.effect = "You receive 2 SandCrawlers.\r\nThe piece who is kill by one of the\r\nSandCrawlers can't be buy anymore."
  jawaLooting.img = love.graphics.newImage("images/jawa.jpg")
  jawaLooting.fn = function()
    drawDollar = true
    g_abilityJawaLooting = true
    g_abilityJawaLootingPieces = 2
  end
  table.insert(abilityTable, jawaLooting)

  hunterAttack = {}
  hunterAttack.name = "  Hunter\r\n   Attack"
  hunterAttack.level4 = 4
  hunterAttack.price = 5
  hunterAttack.effect = "You hire 2 bounty hunters.\r\nFor each kill they made you win \r\na bounty equal to the price of the\r\npiece who died."
  hunterAttack.img = love.graphics.newImage("images/bountyHunters.jpeg")
  hunterAttack.fn = function()
    g_abilityHunterAttack = true
    g_abilityHunterAttackPieces = 2
    drawDollar = true
  end
  table.insert(abilityTable, hunterAttack)

  wealth = {}
  wealth.name = "  Wealth"
  wealth.level5 = 1
  wealth.price = 2
  wealth.effect = "Your Credits are multiplicated\r\nby 2."
  wealth.img = love.graphics.newImage("images/creditX2.jpg")
  wealth.fn = function()
    updateCurrentTotalCredit(getCurrentCredit())
    updateCurrentCredit(getCurrentCredit())
  end
  table.insert(abilityTable,wealth)

  moreXp = {}
  moreXp.name = " More XP"
  moreXp.level5 = 2
  moreXp.price = 2
  moreXp.effect = "Yours outPostes product 100Xp \r\nper round."
  moreXp.img = love.graphics.newImage("images/xp.jpg")
  moreXp.fn = function()
    for i, piece in ipairs(pieceGridTable)do
      if currentSide == DARK_SIDE and piece.name == "Dark Outposte" then
        darkOutPosteXp = 100
        table.insert(markerTable, {markertype='att', l=piece.l, c=piece.c, nombre=100, timer=0})
      elseif currentSide == LIGHT_SIDE and piece.name == 'Light Outposte' then
        lightOutPosteXp = 100
        table.insert(markerTable, {markertype='att', l=piece.l, c=piece.c, nombre=100, timer=0})
      end
    end
  end
  table.insert(abilityTable, moreXp)

  sales = {}
  sales.name = "   Sales"
  sales.level5 = 3
  sales.price = 4
  sales.effect = "The price of the pieces are\r\nreduced of 10%."
  sales.img = love.graphics.newImage("images/sale.png")
  sales.fn = function()
    for i, piece in ipairs(pieceTable)do
      if piece.camp == currentSide and piece.price ~= nil and piece.category ~= CATEGORY_BASE then 
        piece.price = piece.price *0.9
        if piece.pricebase ~= nil then
          piece.pricebase = piece.pricebase *0.9
        end
      end
    end
  end
  table.insert(abilityTable, sales)

  hugeSales = {}
  hugeSales.name = "Huge Sales"
  hugeSales.level5 = 4
  hugeSales.price = 4
  hugeSales.lightEffect = "The price of the Centerpoint\r\nStation is reduced of 10%."
  hugeSales.darkEffect = "The price of the Death Star\r\nis reduced of 10%."
  hugeSales.lightImg = love.graphics.newImage("images/lightSales.png")
  hugeSales.darkImg = love.graphics.newImage("images/darkSales.png")
  hugeSales.fn = function()
    if currentSide == DARK_SIDE then
      deathStar.price = deathStar.price *0.9
    elseif currentSide == LIGHT_SIDE then
      centerPointStation.price = centerPointStation.price *0.9
    end
  end
  table.insert(abilityTable, hugeSales)
end


  
  
 

 

  

  

  
  
  

  

 

  

  
  
 
  
  

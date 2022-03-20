#effect_block
#37.25%
scoreboard players add t time4 5
scoreboard players add @a time4 0
scoreboard players operation @a time4 = t time4
execute @p[scores={time4=42001..}] ~~~ scoreboard players set t time4 0

scoreboard players add b eb 0
scoreboard players add @a eb 0
scoreboard players operation @a eb = t eb
execute @p[scores={time4=42000}] ~~~ scoreboard players random t eb 1 10000

#summon
execute @r[scores={eb=1..3725}] ~~~ summon armor_stand "§r§feb§r" ~ 1000 ~
execute @r[scores={eb=1..3725}] ~~~ spreadplayers ~~ 0 500 @e[type=armor_stand,name="§r§feb§r",tag=!eb]
execute @r[scores={eb=1..3725}] ~~~ tag @e[type=armor_stand,name="§r§feb§r",tag=!eb] add eb
execute @r[scores={eb=1..3725}] ~~~ execute @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=!eb2] ~~~ tp ~~1000~
execute @r[scores={eb=1..3725}] ~~~ execute @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=!eb2] ~~~ setblock ~~-1000~ prismarine 1
execute @r[scores={eb=1..3725}] ~~~ tag @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=!eb2] add eb2
scoreboard players set @a[scores={eb=1..3725}] eb 0

#time's up
scoreboard players add @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=eb2] eb.time 5
execute @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=eb2,scores={eb.time=30000..}] ~~~ setblock ~~-1000~ air
kill @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=eb2,scores={eb.time=30000..}] 

#destroy
execute @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=eb2,scores={eb.time=..29999}] ~~~ kill @e[type=item,name="金块",rx=0,rxm=0,ry=0,rym=0,y=~-990,r=10,c=1]
execute @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=eb2,scores={eb.time=..29999}] ~~~ detect ~~-1~ air -1 execute @p[y=~-990,r=10] ~~~ function data/blocks/eb/effects
execute @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=eb2,scores={eb.time=..29999}] ~~~ detect ~~-1~ air -1 kill

#data
execute @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=eb2] ~~~ tp ~~~
effect @e[type=armor_stand,name="§r§feb§r",tag=eb,tag=eb2] invisibility 1 1 true

#effects
scoreboard players add @s effects 0
scoreboard players random @s effects 1 29

effect @s[scores={effects=1}] speed 30 1
effect @s[scores={effects=2}] slowness 30 1
effect @s[scores={effects=3}] haste 30 1
effect @s[scores={effects=4}] mining_fatigue 30 1
effect @s[scores={effects=5}] strength 30 1
effect @s[scores={effects=6}] instant_health 30 1
effect @s[scores={effects=7}] instant_damage 30 1
effect @s[scores={effects=8}] jump_boost 30 1
effect @s[scores={effects=9}] nausea 1 20
effect @s[scores={effects=10}] regeneration 30 1
effect @s[scores={effects=11}] resistance
effect @s[scores={effects=12}] fire_resistance
effect @s[scores={effects=13}] water_breathing 30 1
effect @s[scores={effects=14}] invisibility 30 1
effect @s[scores={effects=15}] blindness 30 1
effect @s[scores={effects=16}] night_vision 30 1
effect @s[scores={effects=17}] hunger 30 1
effect @s[scores={effects=18}] weakness 30 1
effect @s[scores={effects=19}] poison 30 1
effect @s[scores={effects=20}] wither 30 1
effect @s[scores={effects=21}] health_boost 30 1
effect @s[scores={effects=22}] absorption 30 1
effect @s[scores={effects=23}] saturation 30 1
effect @s[scores={effects=24}] levitation 30 1
effect @s[scores={effects=25}] fatal_poison 30 1
effect @s[scores={effects=26}] conduit_power 30 1
effect @s[scores={effects=27}] slow_falling 30 1
effect @s[scores={effects=28}] bad_omen 6000 1
effect @s[scores={effects=29}] village_hero 3000 255

#It can only use at the edition of the Experimental Gameplay/Experiments of the 1.18.0 . If you're playing the Chinese Edition , You can ignore absolutely it , If you're playing the BE Edition , You can try to delete this sentence and only retain this command . And then change the 29 of the " scoreboard players random @s effects 1 29 " the into 30 (It’s on the second sentence) : effect @s[scores={effects=30}] darkness 30 1

scoreboard players set @s[scores={effects=!0}] effects 0
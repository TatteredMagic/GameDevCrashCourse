-- Project: Attack of the Cuteness Game
-- http://MasteringCoronaSDK.com
-- Version: 1.0
-- Copyright 2013 J. A. Whye. All Rights Reserved.
-- Images stolen from the internet

-- housekeeping stuff

display.setStatusBar(display.HiddenStatusBar)

local centerX = display.contentCenterX
local centerY = display.contentCenterY

-- set up forward references


-- preload audio


-- create play screen
local function createPlayScreen()
	
	--Add background to screen
	local background = display.newImage("background.png")
	--background.x = centerX
	--background.y = centerY
	
	-- Background tranzparincy
	background.alpha = .1
	
	-- Add planet to screen
	local planet = display.newImage("planet.png")
	planet.x = centerX
	planet.y = display.contentHeight + 60
	
	-- Planet tranzparincy and size
	planet.alpha = 0
	planet.xScale = .1
	planet.yScale = .1
	
	local function showTitle()
		local gameTitle = display.newImage("gametitle.png")
		gameTitle.alpha = 0
		gameTitle.x = centerX 
		gameTitle.y = centerY - 40
		gameTitle.xScale = .3
		gameTitle.yScale = .3
		transition.to (gameTitle, {time=500, alpha=1, xScale=1, yScale=1, } )
		
	end
	
	transition.to (background, {time=2500, y=centerY, x=centerX, alpha=1} )
	transition.to (planet, {time=2500, y=centerY, alpha=1, xScale=1, yScale=1, onComplete=showTitle} )
	
end	
	

-- game functions

local function spawnEnemy()
	local enemy = display.newImage("beetleship.png")
	enemy.x = math.random(20, display.contentWidth-20)
	enemy.y = math.random(20, display.contentHeight-20)
	enemy:addEventListener ("tap", shipSmash)
end



function startGame()

end



local function planetDamage()
	
end



local function hitPlanet(obj)

end



function shipSmash(event)
	local obj = event.target
	display.remove(obj)
	return true
end

createPlayScreen()
startGame()

spawnEnemy()
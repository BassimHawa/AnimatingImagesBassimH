-----------------------------------------------------------------------------------------
--Title: Animating Images
--Name: Bassim Hawa
--Course ICS2O/3C
--This program displays three images moving in different directions,
--with some colored text and a background.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3
scrollSpeed2 = -4
scrollSpeed3 = 2

--background image with width and height
local backgroundImage = display.newImageRect("Images/background.jpg", 2048, 1536)

-- character image with width and height
local DJKhaled = display.newImageRect("Images/djK.png", 200, 200)

--character image with width and height
local kitKat = display.newImageRect("Images/kitkat.png", 200, 200)

-- character image with width and height
local mac = display.newImageRect("Images/mac.png", 200, 200)

--make DJKhaled transparent
DJKhaled.alpha = 0

--set the initial x and y position of DJKhaled
DJKhaled.x = 100
DJKhaled.y = display.contentHeight/3

--set the initial x and y position of kitKat
kitKat.x = 400
kitKat.y = display.contentHeight*2.5/3

--set the initial x and y position of macaroni
mac.x = 100
mac.y = 10

--Function: MoveKhaled
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveKhaled(event)
	  --add the scroll speed to the x-value of DjKhaled
	  DJKhaled.x = DJKhaled.x + scrollSpeed
	  -- change the transparency of the ship every time it moves so that it fades in
	  DJKhaled.alpha = DJKhaled.alpha + 0.01
	end

-- MoveKhaled will be called over and over again
Runtime:addEventListener("enterFrame", MoveKhaled)

--Function: MovekitKat
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of kitKat
local function MovekitKat(event)
	  --add the scroll speed to the x-value of kitKat
	  kitKat.x = kitKat.x + scrollSpeed2
	  -- change the transparency of kitKat every time he moves so that he fades out
	  kitKat.alpha = kitKat.alpha - 0.01
	  --make kitKat smaller as he moves
	  kitKat:scale(1 - 0.01, 1 - 0.01)
	end

-- MovekitKat will be called over and over again
Runtime:addEventListener("enterFrame", MovekitKat)


--Function: Movemac
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the mac
local function Movemac(event)
	  --add the scroll speed to the x-value of the mac
	  mac.x = mac.x + scrollSpeed3
	  mac.y = mac.y + scrollSpeed3
	  -- make the mac spin as it moves
	  mac:rotate(20)
	  --make the mac larger as it moves
	  mac:scale(1 + 0.005, 1 + 0.005 ) 
	end

-- Movemac will be called over and over again
Runtime:addEventListener("enterFrame", Movemac)
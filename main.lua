-----------------------------------------------------------------------------------------
--Title: Animating Images
--Name: Bassim Hawa
--Course ICS2O/3C
--This program displays three images moving in different directions,
--with some colored text and a background.
-----------------------------------------------------------------------------------------
local areaText = display.newText("WE DA BEST MUSIC", 0, 0, Arial, textSize)
local textSize = 100

--sounds
local correctSound = audio.loadSound("Sounds/How Many Times Can DJ Khaled Say We The Best In 40 Seconds  Forbes.mp3")
local correctSoundChannel


correctSoundChannel = audio.play(correctSound)

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3.5
scrollSpeed2 = -3
scrollSpeed3 = 4

--background image with width and height
local backgroundImage = display.newImageRect("Images/space.jpg", 1050, 1010)

--set the position of the background image
backgroundImage.x = 500
backgroundImage.y = 400

-- character image with width and height
local DJKhaled = display.newImageRect("Images/djK.png", 200, 200)

--character image with width and height
local kitKat = display.newImageRect("Images/kitkat.png", 300, 300)

-- character image with width and height
local mac = display.newImageRect("Images/mac.png", 200, 200)

--make DJKhaled transparent
DJKhaled.alpha = 0

--set the initial x and y position of DJKhaled
DJKhaled.x = 100
DJKhaled.y = display.contentHeight/3

--set the initial x and y position of kitKat
kitKat.x = 800
kitKat.y = display.contentHeight*2.5/3

--set the initial x and y position of macaroni
mac.x = 100
mac.y = 10

--Function: MoveKhaled
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of Dj Khaled
local function MoveKhaled(event)
	  --add the scroll speed to the x-value of DjKhaled
	  DJKhaled.x = DJKhaled.x + scrollSpeed
	  -- change the transparency of Dj Khaled every time he moves so that he fades in
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
	  -- change the transparency of kitKat every time he moves so that it fades out
	  kitKat.alpha = kitKat.alpha - 0.0005
	  --make kitKat smaller as it moves
	  kitKat:scale(1 - 0.003, 1 - 0.003)
	end

-- MovekitKat will be called over and over again
Runtime:addEventListener("enterFrame", MovekitKat)


--Function: Movemac
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the mac
local function MoveMac(event)
	  --add the scroll speed to the x-value of the mac
	  mac.x = mac.x + scrollSpeed3
	  mac.y = mac.y + scrollSpeed3
	  -- make the mac spin as it moves
	  mac:rotate(20)
	  --make the mac larger as it moves
	  mac:scale(1 + 0.005, 1 + 0.005 ) 
	end

-- Movemac will be called over and over again
Runtime:addEventListener("enterFrame", MoveMac)	

--Display Dj Khaled's famous catchphrase on the screen
areaText = display.newText("WE DA BEST MUSIC", 0, 0, Arial, textSize)
areaText.x = 475
areaText.y = 400
areaText:rotate(20)

--set the text color
areaText:setTextColor(1, 1, 0)

--Display Dj Khaled's famous catchphrase on the screen, but with a different color, and slightly higher than before
areaText = display.newText("WE DA BEST MUSIC", 0, 0, Arial, textSize)
areaText.x = 475
areaText.y = 390
areaText:rotate(20)
areaText:setTextColor(1, 0, 0)

--Display Dj Khaled's famous catchphrase on the screen, but with a different color, and slightly higher than before
areaText = display.newText("WE DA BEST MUSIC", 0, 0, Arial, textSize)
areaText.x = 475
areaText.y = 380
areaText:rotate(20)
areaText:setTextColor(0, 1, 0)

--Display Dj Khaled's famous catchphrase on the screen, but with a different color, and slightly higher than before
areaText = display.newText("WE DA BEST MUSIC", 0, 0, Arial, textSize)
areaText.x = 475
areaText.y = 370
areaText:rotate(20)
areaText:setTextColor(0, 0, 1)

--Display Dj Khaled's famous catchphrase on the screen, but with a different color, and slightly higher than before
areaText = display.newText("WE DA BEST MUSIC", 0, 0, Arial, textSize)
areaText.x = 475
areaText.y = 360
areaText:rotate(20)
areaText:setTextColor(1, 0, 1)

--Display Dj Khaled's famous catchphrase on the screen, but with a different color, and slightly higher than before
areaText = display.newText("WE DA BEST MUSIC", 0, 0, Arial, textSize)
areaText.x = 475
areaText.y = 350
areaText:rotate(20)
areaText:setTextColor(0, 1, 1)
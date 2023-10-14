
local function win()
	local title = "Guess the Box!"
	local message = "You Won The Game!"
	local buttons = {"Play Again", "Quit"}
	local button = love.window.showMessageBox(title, message, buttons);
	if button == 1 then
		love.event.quit("restart")
	elseif button == 2 then
		love.event.quit(0)
	end
end

local function lost()
	local title = "Guess the Box!"
	local message = "You Lost The Game :("
	local buttons = {"Play Again", "Quit"}
	local button = love.window.showMessageBox(title, message, buttons);
	if button == 1 then
		love.event.quit("restart")
	elseif button == 2 then
		love.event.quit(0)
	end
end

local function playing()
	local title = "Guess the Box!"
	local message = "You clicked a neighbouring button, you are still in the game."
	love.window.showMessageBox(title, message, "info");
	
end

function love.load()
	love.window.setMode(450, 300, {resizable=true, vsync=0, minwidth=450, minheight=300})
	title = "Guess the Box!"
	love.window.setTitle(title)
	logo_data = love.image.newImageData("logo.jpeg")
	love.window.setIcon(logo_data)
	len = 100
	wid = 40
	click_len = 80
	click_wid = 32
	math.randomseed(os.time())
	rand_num = math.random(1, 16)
end

function love.draw()

	love.graphics.print("Welcome to Guess the Box!!!", 10, 10)
	love.graphics.print("One of these 16 buttons is the correct button, if you choose a\nneighbouring button then you are still in the game, or else you lose.", 10, 30)
	
	--draw buttons
	
	gap = 10
	for i = 0,3,1 do
		for j = 0, 3, 1 do
			love.graphics.rectangle("line", 10 + (len*j) + (gap*j), 75 + (wid*i) + (gap*i), len, wid)
		end
	end
	
end

function love.mousepressed(x, y, button)
	
	if button==1 then
	
		if (x>=10 and x <=110) and (y>=75 and y <= 105) then
			if (rand_num==1) then
				win()
			elseif (rand_num==2 or rand_num==5 or rand_num==6) then
				playing()
			else
				lost()
			end
		elseif (x>=120 and x <=220) and (y>=75 and y <= 105) then
			if (rand_num==2) then
				win()
			elseif (rand_num==1 or rand_num==3 or rand_num==5 or rand_num==6 or rand_num==7) then
				playing()
			else
				lost()
			end
		elseif (x>=230 and x <=330) and (y>=75 and y <= 105) then
			if (rand_num==3) then
				win()
			elseif (rand_num==2 or rand_num==4 or rand_num==6 or rand_num==7 or rand_num==8) then
				playing()
			else
				lost()
			end
		elseif (x>=340 and x <=440) and (y>=75 and y <= 105) then
			if (rand_num==4) then
				win()
			elseif (rand_num==3 or rand_num==7 or rand_num==8) then
				playing()
			else
				lost()
			end
		elseif (x>=10 and x <=110) and (y>=115 and y <= 155) then
			if (rand_num==5) then
				win()
			elseif (rand_num==1 or rand_num==2 or rand_num==6 or rand_num==9 or rand_num==10) then
				playing()
			else
				lost()
			end
		elseif (x>=120 and x <=220) and (y>=115 and y <= 155) then
			if (rand_num==6) then
				win()
			elseif (rand_num==1 or rand_num==2 or rand_num==3 or rand_num==5 or rand_num==7 or rand_num==9 or rand_num==10 or rand_num==11) then
				playing()
			else
				lost()
			end
		elseif (x>=230 and x <=330) and (y>=115 and y <= 155) then
			if (rand_num==7) then
				win()
			elseif (rand_num==2 or rand_num==3 or rand_num==4 or rand_num==6 or rand_num==8 or rand_num==10 or rand_num==11 or rand_num==12) then
				playing()
			else
				lost()
			end
		elseif (x>=340 and x <=440) and (y>=115 and y <= 155) then
			if (rand_num==8) then
				win()
			elseif (rand_num==3 or rand_num==4 or rand_num==7 or rand_num==11 or rand_num==12) then
				playing()
			else
				lost()
			end
		elseif (x>=10 and x <=110) and (y>=165 and y <= 205) then
			if (rand_num==9) then
				win()
			elseif (rand_num==5 or rand_num==6 or rand_num==10 or rand_num==13 or rand_num==14) then
				playing()
			else
				lost()
			end
		elseif (x>=120 and x <=220) and (y>=165 and y <= 205) then
			if (rand_num==10) then
				win()
			elseif (rand_num==5 or rand_num==6 or rand_num==7 or rand_num==9 or rand_num==11 or rand_num==13 or rand_num==14 or rand_num==15) then
				playing()
			else
				lost()
			end
		elseif (x>=230 and x <=330) and (y>=165 and y <= 205) then
			if (rand_num==11) then
				win()
			elseif (rand_num==6 or rand_num==7 or rand_num==8 or rand_num==10 or rand_num==12 or rand_num==14 or rand_num==15 or rand_num==16) then
				playing()
			else
				lost()
			end
		elseif (x>=340 and x <=440) and (y>=165 and y <= 205) then
			if (rand_num==12) then
				win()
			elseif (rand_num==7 or rand_num==8 or rand_num==11 or rand_num==15 or rand_num==16) then
				playing()
			else
				lost()
			end
		elseif (x>=10 and x <=110) and (y>=215 and y <= 255) then
			if (rand_num==13) then
				win()
			elseif (rand_num==9 or rand_num==10 or rand_num==14) then
				playing()
			else
				lost()
			end
		elseif (x>=120 and x <=220) and (y>=215 and y <= 255) then
			if (rand_num==14) then
				win()
			elseif (rand_num==9 or rand_num==10 or rand_num==11 or rand_num==13 or rand_num==15) then
				playing()
			else
				lost()
			end
		elseif (x>=230 and x <=330) and (y>=215 and y <= 255) then
			if (rand_num==15) then
				win()
			elseif (rand_num==10 or rand_num==11 or rand_num==12 or rand_num==14 or rand_num==16) then
				playing()
			else
				lost()
			end
		elseif (x>=340 and x <=440) and (y>=215 and y <= 255) then
			if (rand_num==16) then
				win()
			elseif (rand_num==11 or rand_num==12 or rand_num==15) then
				playing()
			else
				lost()
			end
		end
	end
	
end
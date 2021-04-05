local ui = require("tek.ui")

--MENU
local PPM_mainScreen = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/main_screen.ppm")
local PPM_videoReg = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/video_reg.ppm")
local PPM_autoInfo = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/auto_info.ppm")
local PPM_askp = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/askp.ppm")
local PPM_infoPanel = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/info_panel.ppm")
local PPM_messages = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/messages.ppm")
local PPM_users = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/users.ppm")
local PPM_menuSet = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/menu_set.ppm")
local PPM_updatePO = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/update_po.ppm")
local PPM_header = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Set/set.ppm")

local messages = require("pages.Messages");
local BK_sets = require("pages.BK_Sets");

local MenuSet = ui.Group:new
{
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",	
	Orientation = "vertical";
	Width = "free";
	--EraseBG = true;
	--SameSize = true;
        Children =
        {	
		ui.Text:new
               	{
			--EraseBG = false;
			--Width = "auto";
               	        Height = "auto";
	               	MaxHeight = "none";
        		HAlign = "center";
		        Style = "font: ui-huge/bi:20; color: black; border-width: 0; background-image: url(graphics/imageFile/Background/background2.ppm)";
           		Text = "Настройки";
		};
		ui.Button:new
                {
			Width = 300;
			Height = "auto";
                        MaxHeight = "none";
                       	HAlign = "left";
			Style = "font: ui-huge/bi:20; background-color: gradient(500,0,#f95,400,300,#002); color: white";			
			--Style = "font: ui-huge/bi:20; background-image: url(graphics/imageFile/Background/background2.ppm); color: white";
                        Text = "В начало";
                },
		ui.Button:new
		{
			Width = 300;
                        Height = "auto";
                        MaxHeight = "none";
                        HAlign = "left";
                        Style = "font: ui-huge/bi:20; background-color: gradient(500,0,#f95,400,300,#002); color: white";
			Text = "Видео";
		},
		ui.Button:new
                {
			Width = 300;
                        Height = "auto";
                        MaxHeight = "none";
                        HAlign = "left";
                        Style = "font: ui-huge/bi:20; background-color: gradient(500,0,#f95,400,300,#002); color: white";
			Text = "Настрока \nбортового компьютера";
			onClick = function(self)
				local status = self:getById("id-window").Status;
				if status == "hide" then
					self:getById("id-window"):setValue("Status", "show");
				end
			end
                },
		ui.Button:new
                {
			Width = 300;
                        Height = "auto";
                        MaxHeight = "none";
                        HAlign = "left";
                        Style = "font: ui-huge/bi:20; background-color: gradient(500,0,#f95,400,300,#002); color: white";
                        Text = "Автоинформатор";
                },
		ui.Button:new
                {
			Width = 300;
                        Height = "auto";
                        MaxHeight = "none";
                        HAlign = "left";
                        Style = "font: ui-huge/bi:20; background-color: gradient(500,0,#f95,400,300,#002); color: white";
                        Text = "АСКП";
                },
		ui.Button:new
                {
			Width = 300;
                        Height = "auto";
                        MaxHeight = "none";
                        HAlign = "left";
                        Style = "font: ui-huge/bi:20; background-color: gradient(500,0,#f95,400,300,#002); color: white";
                        Text = "Настройки";
                },
		ui.Button:new
                {
			Width = 300;
                        Height = "auto";
                        MaxHeight = "none";
                        HAlign = "left";
                        Style = "font: ui-huge/bi:20; background-color: gradient(500,0,#f95,400,300,#002); color: white";
                        Text = "Информация";
                },
		ui.Button:new
                {
			Width = 300;
                        Height = "auto";
                        MaxHeight = "none";
                        HAlign = "left";
                        Style = "font: ui-huge/bi:20; background-color: gradient(500,0,#f95,400,300,#002); color: white";
                        Text = "Сообщения";
		},
	}
}

return MenuSet

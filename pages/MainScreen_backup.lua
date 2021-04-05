local ui = require("tek.ui")
local List = require "tek.class.list"

--MENU
local PPM_map = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/map.ppm");

local PPM_info_table = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/info_table.ppm");
local PPM_reset_trip = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/btn_sbros_poezdki.ppm");
local PPM_reset_consump = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/btn_sbros_rashoda.ppm");

local PPM_4g = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/4g.ppm");
local PPM_battery = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/battery.ppm");

local PPM_state_equip = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/sost_oborud.ppm");
local PPM_state_video = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/sost_video_on.ppm");
local PPM_state_microphone = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/sost_mic_on.ppm");
local PPM_state_counter = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/sost_counter_off.ppm");
local PPM_state_display = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/sost_displey_on.ppm");
local PPM_state_oil = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/sost_oil_on.ppm");
local PPM_state_power = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/sost_power_on.ppm");
local PPM_error = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/error.ppm");
local PPM_route_panel = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/panel_marshrut.ppm");
local PPM_route = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/marshrut.ppm");
local PPM_halt = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/ostanovka.ppm");

local MainScreen = ui.Group:new
{
        Layout = "fixed",
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
        Children =
        {
                ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 10 680 420;
                        ]],
                        Mode = "inert",
                        Image = PPM_map
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 420 640 560;
                        ]],
                        Mode = "inert",
                        Image = PPM_info_table
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 20 570 310 610;
                        ]],
                        Mode = "button",
                        Image = PPM_reset_trip
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 330 570 620 610;
                        ]],
                        Mode = "button",
                        Image = PPM_reset_consump
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 1075 10 1200 40;
                        ]],
                        Mode = "inert",
                        Image = PPM_4g
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 1200 10 1320 40;
                        ]],
                        Mode = "inert",
                        Image = PPM_battery
                },
--[[!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!--]]
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 830 45 1200 95;
                        ]],
                        Mode = "inert",
                        Image = PPM_state_equip
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 700 100 785 180;
                        ]],
                        Mode = "inert",
                        Image = PPM_state_video 
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 800 100 885 180;
                        ]],
                        Mode = "inert",
                        Image = PPM_state_microphone
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 900 100 985 180;
                        ]],
                        Mode = "inert",
                        Image = PPM_state_counter
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 1000 100 1085 180;
                        ]],
                        Mode = "inert",
                        Image = PPM_state_display
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 1100 100 1185 180;
                        ]],
                        Mode = "inert",
                        Image = PPM_state_oil
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 1200 100 1275 170;
                        ]],
                        Mode = "inert",
                        Image = PPM_state_power
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 730 185 1235 235;
                        ]],
                        Mode = "inert",
                        Image = PPM_error
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 730 240 1235 420;
                        ]],
                        Mode = "inert",
                        Image = PPM_route_panel
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 730 250 1035 300;
                        ]],
                        Mode = "inert",
                        Image = PPM_route
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 730 300 1235 420;
                        ]],
                        Mode = "inert",
                        Image = PPM_halt
                },
		ui.Group:new
		{
			Orientation = "vertical";
			Style = [[
				fixed: 730 430 1230 600;
				font:ui-huge:20;
				background-color: white;
			]],
			Children =
			{
				ui.Text:new
				{
					Style = [[
                		            	fixed: 730 430 1230 460;
	                        	        font: ui-huge:20;
						background-color: white;
        	                        	color: #006080;					
						border-width: 0;
	                     		]],
					Mode = "inert";
					Text = "Входящие сообщения";
				},
				ui.Text:new
                       		{
                                	Style = [[
                                        	fixed: 730 460 1230 490;
	                                        font: ui-huge:20;
						background-color: white;
						text-align: "left";
						color: #006080;
						border-width: 0;
                	                ]],
					Mode = "inert";
                        	        Text = "12:30 Продолжайте следовать по маршруту";
	                        },
				ui.Text:new
                	        {
                        	        Style = [[
                                	        fixed: 730 490 1230 520;
                                        	font: ui-huge:20;
						background-color: white;
						text-align: "left";
	                                        color: #006080;
						border-width: 0;
        	                        ]],
					Mode = "inert";
                	                Text = "12:00 На обед в 13:00";
                       		},
				ui.Text:new
        	                {
                	                Style = [[
                        	                fixed: 730 520 1230 550;
                                	        font: ui-huge:20;
						background-color: white;
						text-align: "left";
                                        	color: #006080;
						border-width: 0;
	                                ]],
					Mode = "inert";
        	                        Text = "11:54 Входящий вызов";
                	        }
			}
		}
	}
}

return MainScreen;

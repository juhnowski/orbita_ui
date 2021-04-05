local ui = require("tek.ui");
local Visual = ui.loadLibrary("visual", 4);

--font = Visual.openFont("DejaVuSans", 10, "s");

--MENU
local PPM_MMenu = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/menu.ppm")
local PPM_Videoregistrator = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/videoregistrator.ppm")
local PPM_User = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/user.ppm")
local PPM_Autoinfo = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/autoinfo.ppm")
local PPM_Sets = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/Sets.ppm")
local PPM_Askp = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/askpp.ppm")
local PPM_Reload = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/interpret.ppm")
local PPM_InfoPanel = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/infoPanel.ppm")
local PPM_StateTS = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/StateTS.ppm")
local PPM_Message = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/message.ppm")
local PPM_SensorFuel = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Menu/sensorFuel.ppm")

local MainMenu = ui.Group:new
{
        Layout = "fixed",
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
--	EraseBG = false;
        Children =
	{
            	ui.Text:new
                {
			--EraseBG = false;			
                        Style = [[
                                fixed: 600 0 770 70;
				font: ui-huge:50;
				background-color: white;
                                color: black;
				border-width: 0;
                        ]],
                        Mode = "toggle";
                        Text = "Меню";
                },
		ui.Button:new
		{
			--EraseBG = false;
			Style = [[
				fixed: 10 70 650 160;
				font: ui-huge/bi:50;
				background-color: gradient(500,0,#f95,400,300,#002);
				color: white;
			]],
			Text = "Видеорегистратор", 
		},
		ui.Button:new
                {
			--EraseBG=false;
			Style = [[
                                fixed: 700 70 1350 160;
                                font: ui-huge/bi:50;
                                background-color: gradient(500,0,#f95,400,300,#002);
                                color: white;
                        ]],
                        Text = "Пользователь",
                },
		ui.Button:new
                {
			--EraseBG=false;
			Style = [[
                                fixed: 10 165 650 265;
                                font: ui-huge/bi:50;
                                background-color: gradient(500,0,#f95,400,300,#002);
                                color: white;
                        ]],
                        Text = "Автоинформатор",
                },
		ui.Button:new
                {
			--EraseBG=false;
			Style = [[
                                fixed: 700 165 1350 265;
                                font: ui-huge/bi:50;
                                background-color: gradient(500,0,#f95,400,300,#002);
                                color: white;
                        ]],
                        Text = "Настройки",
                },
		ui.Button:new
                {
			--EraseBG=false;
			Style = [[
                                fixed: 10 270 650 370;
                                font: ui-huge/bi:50;
                                background-color: gradient(500,0,#f95,400,300,#002);
                                color: white;
                        ]],
                        Text = "АСКП",
                },
		ui.Button:new
                {
			--EraseBG=false;
			Style = [[
                                fixed: 700 270 1350 370;
                                font: ui-huge/bi:50;
                                background-color: gradient(500,0,#f95,400,300,#002);
                                color: white;
                        ]],
                        Text = "Перезагрузка",
                },
		ui.Button:new
                {
			--EraseBG=false;
			Style = [[
                                fixed: 10 375 650 535;
                                font: ui-huge/bi:50;
                                background-color: gradient(500,0,#f95,400,300,#002);
                                color: white;
                        ]],
                        Text = "Информационные\n панели",
                },
		ui.Button:new
                {
			--EraseBG=false;
			Style = [[
                                fixed: 700 375 1350 535;
                                font: ui-huge/bi:50;
                                background-color: gradient(500,0,#f95,400,300,#002);
                                color: white;
                        ]],
                        Text = "Датчик уровня\n топлива",
                },
		ui.Button:new
                {
			--EraseBG=false;
			Style = [[
                                fixed: 10 540 650 640;
                                font: ui-huge/bi:50;
                                background-color: gradient(500,0,#f95,400,300,#002);
                                color: white;
                        ]],
                        Text = "Сообщения",
                },
		ui.Button:new
                {
			--EraseBG=false;
			Style = [[
                                fixed: 700 540 1350 640;
                                font: ui-huge/bi:50;
                                background-color: gradient(500,0,#f95,400,300,#002);
                                color: white;
                        ]],
                        Text = "Состояние ТС",
                },
        }
}

return MainMenu

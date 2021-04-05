local ui = require("tek.ui")

--MENU
local PPM_route = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/marshrut.ppm");
local PPM_halt = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/ostanovka.ppm");
local PPM_choiceRoute = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/panel_vibor_marshruta.ppm");
local PPM_direction = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/panel_napravlenie.ppm");
local PPM_showOnMap = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/panel_map.ppm");

local PPM_panelSetRoute = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/panel_set_marshrut.ppm");
local PPM_front = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/front.ppm");
local PPM_onSide = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/bok.ppm");
local PPM_salon = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/salon.ppm");
local PPM_back = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/AutoInfo/back.ppm");

local AutoInfo = ui.Group:new
{
        Layout = "fixed",
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
        Children =
        {
                ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 50 290 100;
                        ]],
                        Mode = "inert",
                        Image = PPM_route
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 110 560 230;
                        ]],
                        Mode = "inert",
                        Image = PPM_halt
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 240 440 340;
                        ]],
                        Mode = "inert",
                        Image = PPM_choiceRoute
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 350 440 450;
                        ]],
                        Mode = "inert",
                        Image = PPM_direction
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 460 440 560;
                        ]],
                        Mode = "inert",
                        Image = PPM_showOnMap
                },
---------------------------------------
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 570 50 1155 610;
                        ]],
                        Mode = "inert";
                        Image = PPM_panelSetRoute;
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 580 150 1145 230;
                        ]],
                        Mode = "inert";
                        Image = PPM_front;
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 600 270 1095 350;
                        ]],
                        Mode = "inert";
                        Image = PPM_onSide;
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 800 360 1095 440;
                        ]],
                        Mode = "inert";
                        Image = PPM_salon;
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 900 450 980 530;
                        ]],
                        Mode = "inert";
                        Image = PPM_back;
                },
	}
}

return AutoInfo;

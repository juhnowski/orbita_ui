local ui = require("tek.ui")

--MENU
local PPM_setRoutePtr = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetRoutePtr/sets_route_pointer.ppm");
local PPM_front1 = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetRoutePtr/front1.ppm");
local PPM_table = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetRoutePtr/table.ppm");
local PPM_btnApply = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetRoutePtr/btn.ppm");
local PPM_panel = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetRoutePtr/panel.ppm");

local SetRoutePtr = ui.Group:new
{
        Layout = "fixed",
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
        Children =
        {
                ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 200 10 1100 60;
                        ]],
                        Mode = "inert",
                        Image = PPM_setRoutePtr
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 50 65 1300 630;
                        ]],
                        Mode = "inert",
                        Image = PPM_panel
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 100 100 460 140;
                        ]],
                        Mode = "inert",
                        Image = PPM_front1;
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 200 160 1000 410;
                        ]],
                        Mode = "inert",
                        Image = PPM_table;
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 460 450 800 560;
                        ]],
                        Mode = "button",
                        Image = PPM_btnApply;
                },
	}
}

return SetRoutePtr;

local ui = require("tek.ui")

--MENU
local PPM_all = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/StateTS/all.ppm");
local PPM_headStateTS = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/StateTS/StateTS.ppm");

local StateTS = ui.Group:new
{
        Layout = "fixed",
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
        Children =
        {
                ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 500 10 850 80;
                        ]],
                        Mode = "inert",
                        Image = PPM_headStateTS
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 110 90 1150 660;
                        ]],
                        Mode = "inert",
                        Image = PPM_all
                },
	}
}

return StateTS;

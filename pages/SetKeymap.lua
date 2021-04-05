local ui = require("tek.ui")

--MENU
local PPM_headSets = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetKeymap/HeadSets.ppm");
local PPM_btnUsers = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetKeymap/BtnUsers.ppm");
local PPM_btnTechnic = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetKeymap/BtnTechnic.ppm");
local PPM_keyboard = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetKeymap/keyboard.ppm");
local PPM_password = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SetKeymap/password.ppm");

local SetKeymap = ui.Group:new
{
        Layout = "fixed",
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
        Children =
        {
                ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 550 10 840 85;
                        ]],
                        Mode = "inert",
                        Image = PPM_headSets
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 10 280 85;
                        ]],
                        Mode = "inert",
                        Image = PPM_btnUsers
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 550 95 830 170;
                        ]],
                        Mode = "inert",
                        Image = PPM_btnTechnic
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 550 180 830 255;
                        ]],
                        Mode = "inert",
                        Image = PPM_password
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 50 265 1200 650;
                        ]],
                        Mode = "inert",
                        Image = PPM_keyboard
                },
	}
}

return SetKeymap;

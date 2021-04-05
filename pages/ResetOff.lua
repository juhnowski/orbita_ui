local ui = require("tek.ui")

--MENU
local PPM_reset = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/ManagePower/perezagruzka.ppm");
local PPM_powerOff = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/ManagePower/poweroff.ppm");
local PPM_txt_reset = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/ManagePower/txt_perezagruzka.ppm");
local PPM_txt_powerOff = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/ManagePower/txt_poweroff.ppm");

local Reset_Off = ui.Group:new
{
        Layout = "fixed",
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
        Children =
        {
                ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 10 530 530;
                        ]],
                        Mode = "inert",
                        Image = PPM_reset
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 640 170 1000 530;
                        ]],
                        Mode = "inert",
                        Image = PPM_powerOff
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 580 420 670;
                        ]],
                        Mode = "inert",
                        Image = PPM_txt_reset
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 620 580 1000 670;
                        ]],
                        Mode = "inert",
                        Image = PPM_txt_powerOff
                }
	}
}

return Reset_Off;

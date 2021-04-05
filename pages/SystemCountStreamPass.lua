local ui = require("tek.ui")

--MENU
local PPM_head = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/header.ppm");
local PPM_cmnAmounValid = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/commonAmountValid.ppm");
local PPM_valid = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/valid.ppm");
local PPM_stateEquip = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/stateEquip.ppm");
local PPM_figErr = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/counter_1_off.ppm");
local PPM_figOk = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/counter_2_on.ppm");
local PPM_error = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/error.ppm");
local PPM_ok = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/OK.ppm");
local PPM_infoValid = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/infoValid.ppm");
local PPM_panel = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/SystemCountStreamPass/panel.ppm");

local SysCntStrPass = ui.Group:new
{
        Layout = "fixed",
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
        Children =
        {
                ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 110 10 1320 80;
                        ]],
                        Mode = "inert",
                        Image = PPM_head
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 90 455 150;
                        ]],
                        Mode = "inert",
                        Image = PPM_cmnAmounValid
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 160 480 250;
                        ]],
                        Mode = "inert",
                        Image = PPM_valid
                },
----------------------------------------
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 260 290 320;
                        ]],
                        Mode = "inert",
                        Image = PPM_stateEquip
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 330 130 450;
                        ]],
                        Mode = "inert",
                        Image = PPM_figErr
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 140 330 260 450;
                        ]],
                        Mode = "inert",
                        Image = PPM_figOk
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 10 460 130 520;
                        ]],
                        Mode = "inert",
                        Image = PPM_error
                },
                ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 140 460 260 520;
                        ]],
                        Mode = "inert",
                        Image = PPM_ok     
                },
--------------------------
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 465 90 1050 650;
                        ]],
                        Mode = "inert",
                        Image = PPM_panel
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 500 100 900 140;
                        ]],
                        Mode = "inert",
                        Image = PPM_infoValid
                },
	}
}

return SysCntStrPass;

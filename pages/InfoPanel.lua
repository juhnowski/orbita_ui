local ui = require("tek.ui")

--MENU
local PPM_infoPanel = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/InfoPanel.ppm");
local PPM_statePanel = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/StatePanel.ppm");
local PPM_btnOk = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/OK.ppm");
local PPM_displLeft = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/displ_1_on.ppm");
local PPM_displRight = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/displ_2_on.ppm");
local PPM_contentBlock = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/ContentBlock.ppm");
local PPM_contentBlock2 = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/ContentBlock2.ppm");
local PPM_contentBlock3 = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/ContentBlock3.ppm");
local PPM_contentBlock4 = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/ContentBlock4.ppm");
local PPM_map = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/InfoPanel/map.ppm");

local InfoPanel = ui.Group:new
{
        Layout = "fixed",
        Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
        Children =
        {
                ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 300 10 970 80;
                        ]],
                        Mode = "inert",
                        Image = PPM_infoPanel
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 50 90 335 135;
                        ]],
                        Mode = "inert",
                        Image = PPM_statePanel
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 360 90 455 150;
                        ]],
                        Mode = "inert",
                        Image = PPM_btnOk
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 50 145 150 235;
                        ]],
                        Mode = "inert",
                        Image = PPM_displLeft
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 155 145 255 235;
                        ]],
                        Mode = "inert",
                        Image = PPM_displRight
                },
-----------------------------
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 50 245 850 290;
                        ]],
                        Mode = "inert",
                        Image = PPM_contentBlock
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 50 300 850 345;
                        ]],
                        Mode = "inert",
                        Image = PPM_contentBlock2
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 50 360 870 420;
                        ]],
                        Mode = "inert",
                        Image = PPM_contentBlock3
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 50 425 850 470;
                        ]],
                        Mode = "inert",
                        Image = PPM_contentBlock4
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 865 80 1200 630;
                        ]],
                        Mode = "inert",
                        Image = PPM_map
                }
	}
}

return InfoPanel;

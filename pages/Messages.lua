local ui = require("tek.ui")

local PPM_SendMsg = ui.loadImage(ui.ProgDir ..  "graphics/imageFile/MessageMenu/sendMsg.ppm")
local PPM_Message = ui.loadImage(ui.ProgDir ..  "graphics/imageFile/MessageMenu/message.ppm")

local messages = ui.Group:new
{
	Style = "background-image: url(graphics/imageFile/Background/background2.ppm)",
	Layout = "fixed",
        Children =
        {
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 440 0 750 75;
                        ]],
                        Mode = "inert",
                        Image = PPM_Message
                },
        	ui.Text:new
                {
--                	Style = "text-align:left; padding: 10; margin-top: 10; height: 450; width 400",
			Style = [[
				text-align: "left";
				fixed: 200 120 1100 550;
			]],
                        Text = [[
12:30 Keep to follow the route

12:00 To dinner.

11:50 Incoming call.]]
                },
		ui.ImageWidget:new
                {
                        Style = [[
                                fixed: 350 570 930 670;
                        ]],
                        Mode = "button",
                        Image = PPM_SendMsg
                },
	}
}

return messages

local ui = require "tek.ui";
local List = require "tek.class.list";
local videoreg = require "pages.BK_Sets.videoreg";
local ip_camera = require "pages.BK_Sets.ip_camera";

local watching = ui.Group:new
{
	Children =
	{
		ui.Button:new
		{
			Weight = 0x8000;
			Style = "font: ui-huge/bi: 20; background-color: black; color: white";
			Text = "IP камеры";
			onClick = function(self)
				local status = self:getById("ip-camera").Status;
                                if status == "hide" then
                                        self:getById("ip-camera"):setValue("Status", "show");
                                end
                        end
		},
		ui.Button:new
		{
			Weight = 0x8000;
			Style = "font: ui-huge/bi: 20; background-color: black; color: white";
			Text = "Видеорегистраторы";
			onClick = function(self)
				local status = self:getById("list-window").Status;
				if status == "hide" then
					self:getById("list-window"):setValue("Status", "show");
				end
			end
		},
		--[[ui.ScrollGroup:new
		{
			Style = "font: ui-huge/bi: 20; background-color: black; color: white";
			
			Child = ui.Canvas:new
			{
				
					UseChildBG = true;
					Style = "font: ui-huge/bi: 20; background-color: black; color: white";
					Id = "id-canvas";
				
			}
		}]]
	}
}

return watching;

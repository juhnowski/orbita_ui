local ui = require "tek.ui";
local List = require "tek.class.list";
local telemetric = require "pages.BK_Sets.telemetric";
local service = require "pages.BK_Sets.service";
local primary = require "pages.BK_Sets.primary";
local watching = require "pages.BK_Sets.watching";

local window1 = ui.Window:new
{
        Title = "BK sets",
        HideOnEscape = true,
        Orientation = "vertical",
	FullScreen = true;
        Width = 600;
        Height = 600;
        Id = "id-window",
        Status = "hide";
        Children =
        {
                ui.Group:new
                {
                        SameSize = false,
                        Children =
                        {
                                ui.Button:new
                                {
					Style = [[
                           		     	font: ui-huge/bi:20;
						background-color: black;
		                             	color:white;
                		        ]];
                                        Text = "Основные";
                                        onClick = function(self)
                                                self:getById("id-canvas"):setValue("Child", primary);
                                        end
                                },
                                ui.Button:new
                                {
					Style = [[
                                                font: ui-huge/bi:20;
                                                background-color: black;
                                                color:white;
                                        ]];
                                        Text = "Телеметрия";
                                        onClick = function(self)
                                                self:getById("id-canvas"):setValue("Child", telemetric);
                                        end
                                },
				ui.Button:new
                                {
					Style = [[
                                                font: ui-huge/bi:20;
                                                background-color: black;
                                                color:white;
                                        ]];
                                        Text = "Сервис";
                                        onClick = function(self)
                                                self:getById("id-canvas"):setValue("Child", service);
                                        end
                                },
				ui.Button:new
                                {
					Style = "font: ui-huge/bi:20; background-color: black; color:white;";
                                        Text = "Наблюдение";
                                       	onClick = function(self)
                                                self:getById("id-canvas"):setValue("Child", watching);
                                        end
                                },
                        }
                },
		ui.ScrollGroup:new
                {
                        HSliderMode = "auto",
                        VSliderMode = "auto",
                        Child = ui.Canvas:new
                        {
				Style = [[
                                                font: ui-huge/bi:20;
                                                --background-color: black;
						background-color: gradient(500,0,#f95,400,300,#002);
                                                color:white;
                                        ]];
                                UseChildBG = false,
                                AutoWidth = true,
                                AutoHeight = true,
                                Id = "id-canvas",
                        },
                }
        }
}


return window1;


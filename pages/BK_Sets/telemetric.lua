local ui = require "tek.ui";
local List = require("tek.class.list");
local can = require "OrbitaDB.orbita_can";
local rs485 = require "OrbitaDB.orbita_rs485";
local rs232 = require "OrbitaDB.orbita_rs232";

can.init();

local telemetric = ui.Group:new
{
	Style = "background-color: black; color: white";
        Orientation = "vertical";
	Id = "id-telemetric";
        Children =
        {
                ui.Group:new
                {
                        Orientation = "horizontal";
                        Children =
                        {
                                ui.Text:new
                                {
					Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                        Text = "CAN";
                                },
                                ui.PopList:new
                                {
                                        Id = "id_can";
                                        Width = "free";
					Style = "font: ui-huge/bi:15; color: white; background-color:black";
					Text = can.get_can_name();
                                        ListObject = List:new
                                        {
                                                Items =
                                                {
                                                        { { "ничего" } },
                                                        { { "IRMA" } },
                                                }
                                        };
					onSelect = function(self)
						ui.PopList.onSelect(self);
						local numLine = self.SelectedLine;
						can.set_can(numLine);
					end;
                                },
                        }
                },
		ui.Group:new
                {
                        Orientation = "horizontal";
                        Children =
                        {
                                ui.Text:new
                                {
                                        Text = "RS485-1";
					Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                },
                                ui.PopList:new
                                {
                                        Id = "rs_485_1";
                                        Width = "free";
					Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                        ListObject = List:new
                                        {
                                                Items =
                                                {
                                                        { { "ничего" } },
                                                        { { "Табло ОРБИТА" } },
                                                        { { "Табло Искра" } },
                                                        { { "ДУТ Омником" } },
                                                }
                                        };
					onSelect = function(self)
                                                ui.PopList.onSelect(self);
                                                local numLine = self.SelectedLine;
                                                rs485.set_dev(1,numLine);
                                        end
                                },
                        }
                },
		ui.Group:new
                {
                        Orientation = "horizontal";
                        Children =
                        {
                                ui.Text:new
                                {
                                        Text = "RS485-2";
					Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                },
                                ui.PopList:new
                                {
                                        Id = "rs_485_2";
                                        Width = "free";
					Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                        ListObject = List:new
                                        {
                                                Items =
                                                {
                                                        { { "ничего" } },
                                                        { { "Табло ОРБИТА" } },
                                                        { { "Табло Искра" } },
                                                        { { "ДУТ Омником" } },
                                                }
                                        };
					onSelect = function(self)
                                                ui.PopList.onSelect(self);
                                                local numLine = self.SelectedLine;
                                                rs485.set_dev(2,numLine);
                                        end
                                },
                        }
                },
		ui.Group:new
                {
                        Orientation = "horizontal";
                        Children =
                        {
                                ui.Text:new
                                {
                                        Text = "RS232-1";
					Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                },
                                ui.PopList:new
                                {
                                        Id = "rs_232_1";
                                        Width = "free";
					Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                        ListObject = List:new
                                        {
                                                Items =
                                                {
                                                        { { "ничего" } },
                                                        { { "прием ГНСС" } },
                                                        { { "выдача ГНСС" } },
                                                }
                                        };
					onSelect = function(self)
                                                ui.PopList.onSelect(self);
                                                local numLine = self.SelectedLine;
                                                rs232.set_tdev(1,numLine);
                                        end
                                },
                        }
                },
		ui.Group:new
		{
			Children =
			{
			ui.Button:new
			{
				Weight = 0x1000;
				Text = "Применить";
				Style = "font: ui-huge/bi:15; color: white; background-color:black";
			},
			ui.Text:new
			{
				Weight = 0x9000;
				Style = "border-width: 0";
			}
			}
		}
	};
}
return telemetric;

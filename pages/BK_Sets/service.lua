local ui = require "tek.ui";

local service1 = ui.Group:new
{
	ui.Group:new
	{
		Orientation = "horizontal";
		Children = 
		{
			ui.Button:new
			{
				Style = "font: ui-huge/bi:20; color: white; background-color:black";
				Text = "Конфигурация";
			},
			ui.Button:new
                        {
				Style = "font: ui-huge/bi:20; color: white; background-color:black";
                                Text = "Носители";
                        },
		}
	}
}


local service = ui.PageGroup:new
{
        PageCaptions = {"Конфигурация", "Носители"};
        Children =
        {
                ui.Group:new
                {
                        Orientation = "vertical";
                        Children =
                        {
                                ui.Group:new
                                {
                                        Orientation = "horizontal";
                                        Children =
                                        {
                                                ui.Text:new
                                                {
                                                        Text = "Экспорт конфигурации";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                                ui.Button:new
                                                {
                                                        Text = "Экспорт";
							Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                                }
                                        }
                                },
				ui.Group:new
                                {
                                        Orientation = "horizontal";
                                        Children =
                                        {
                                                ui.Text:new
                                                {
                                                        Text = "Импорт конфигурации";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                                ui.Button:new
                                                {
                                                        Text = "Импорт";
							Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                                }
                                        }
                                }
                        }
                },
		ui.Group:new
                {
                        Orientation = "horizontal";
			--Style = "font: ui-huge/bi:20; color: white; background-color:black";
                        Children =
                        {
				--Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                ui.Group:new
                                {
                                        Orientation = "vertical";
					--Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                        Children =
                                        {
                                                ui.Text:new
                                                {
                                                        Text = "Тип носителя";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                                ui.Text:new
                                                {
                                                        Text = "HDD";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                                ui.Text:new
                                                {
                                                        Text = "SD(Внутр.)";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                                ui.Text:new
                                                {
                                                        Text = "Флеш диск";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                        }
                                },
				ui.Group:new
                                {
                                        Orientation = "vertical";
                                        Children =
                                        {
                                                ui.Text:new
                                                {
                                                        Text = "Свободно/Всего";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                                ui.Text:new
                                                {
                                                        Text = "2.7G/500.1G";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                                ui.Text:new
                                                {
                                                        Text = "2.3G/31.1G";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                                ui.Text:new
                                                {
                                                        Text = "31.8G/32.0G";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                        }
                                },
				ui.Group:new
                                {
                                        Orientation = "vertical";
                                        Children =
                                        {
                                                ui.Text:new
                                                {
                                                        Text = "Действия";
							Style = "font: ui-huge/bi:15; color: white; background-color:black; border-width: 0";
                                                },
                                                ui.Button:new
                                                {
                                                        Text = "Формат";
							Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                                },
                                                ui.Button:new
                                                {
                                                        Text = "Формат";
							Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                                },
                                                ui.Button:new
                                                {
                                                        Text = "Формат";
							Style = "font: ui-huge/bi:15; color: white; background-color:black";
                                                },
                                        }
                                },
			}
		}
	}	
}

return service;

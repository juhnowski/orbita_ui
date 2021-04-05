local ui = require("tek.ui")

--MENU
local PPM_map = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/map.ppm")
local PPM_info_table = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/info_table.ppm")
local PPM_reset_route = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/btn_sbros_poezdki.ppm")
local PPM_reset_consump = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/MainScreen/btn_sbros_rashoda.ppm")

local MainScreen = ui.Group:new
{
	Children =
   	{
		ui.Group:new
        {
			Style = "background-image: url(graphics/imageFile/Background/background2.ppm)";
            Orientation = "vertical",
            Width = "free",
            Children =
            {
				ui.Group:new
				{
					Style = "background-image: url(graphics/imageFile/Background/background2.ppm)";
					--EraseBG = false;
					Orientation = "horizontal";
					Width = "free";
					Id = "equip_state";
					Children =
					{
						ui.Text:new
						{
							Text = "MAP";
							Width = "free";
		                    MaxHeight = "none";
							Mode = "inert";
							Weight = 0x9000;
							Style =  "font: ui-huge:20";	
						};
						ui.Text:new
						{
							--EraseBG = false;
							Style = "border-width: 0";
							Width = 50;
						};
						ui.Group:new
						{
							Orientation = "vertical";
							EraseBG = false;
							--Style = "background-image: url(graphics/imageFile/Background/background2.ppm)";
							Weight = 0x4000;
							Children =
							{
								ui.Text:new
								{
									Text = "Индикаторы";
                	                Width = "auto"; 
	                        	    MaxHeight = "none";
									Weight = 0x400;
									HAlign = "right";
									Mode = "inert";
								};
								ui.Group:new
                                                                {
									--Style = "background-image: url(graphics/imageFile/Background/background2.ppm)";
									Style = "background-color: white";
			                                                --Id = "the-canvas",
                                                                        --Text = "Second1";
									Height = "free";
                                                                        Width = "free";
									Orientation = "vertical";
									Children =
									{
										ui.Text:new
										{
											Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0";
											Text = "Состояние оборудования:";
										};
										ui.Group:new
										{
										};
										ui.Text:new
                                                                                {
											Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: left";
                                                                                        Text = "Ошибка:";
                                                                                };
										ui.Group:new
										{
											Orientation = "vertical";
											Style = "background-color:white";
											Children =
											{
												ui.Text:new
		                                                                                {
													Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: left";
                		                                                                        Text = "Маршрут №:";
													HAlign = "left";
                                		                                                };
												ui.Text:new
                                                                                                {
													Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: left";
                                                                                                        Text = "Остановка:";
													HAlign = "left";
                                                                                                };
												ui.Text:new
                                                                                                {
													Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: left";
                                                                                                        Text = "Следующая остановка:";
													HAlign = "left";
                                                                                                };
											}
										}
									}
                                };
							}
						}
					}
				};
				ui.Text:new
				{
					Style = "border-width: 0";
					Height = 10;
				};
				ui.Group:new
                {
					--Style = "background-image: url(graphics/imageFile/Background/background2.ppm)";
					EraseBG = false;
					Orientation = "horizontal";
					Width = "free";
					--Style = "border-width: 1; border-color: black";
                    Children = 
                    {
						ui.Group:new
						{
							EraseBG = false;
							Orientation = "vertical";
							Height = "free";
							Id = "travel_data";
							Style = "border-width: 1; border-color: black";
							Children =
							{
								ui.Group:new
								{
									Style = "background-color: white";
									Oriantation = "horizontal";
									Children =
									{
										ui.Text:new
										{
											Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: legn: left";
											Text = "Средний расход";
										};
										ui.Text:new
                                        {
                                            Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: legn: left";
                                            Text = "20";
                                        };
										ui.Text:new
                                        {
                                            Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: legn: left";
                                            Text = "л/100км";
                                        };
									}
								};
								ui.Group:new
                                {
                                	Style = "background-color: white";
                                    Oriantation = "horizontal";
                                    Children =
                                    {
                                        ui.Text:new
                                        {
                                            Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: legn: left";
                                            Text = "Запас хода";
                                        };
                                        ui.Text:new
                                        {
                                            Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: legn: left";
                                            Text = "70";
                                        };
                                        ui.Text:new
                                        {
                                            Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: legn: left";
                                            Text = "км";
                                        };
                                    }
                                };
								ui.Group:new
                                {
                                	Style = "background-color: white";
                                    Oriantation = "horizontal";
                                    Children =
                                    {
                                        ui.Text:new
                                        {
                                            Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: legn: left";
                                            Text = "Одометр";
                                        };
                                        ui.Text:new
                                        {
                                            Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: legn: left";
                                            Text = "150000";
                                        };
                                        ui.Text:new
                                        {
                                            Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0; text-align: legn: left";
                                            Text = "км";
                                        };
                                    }
                                };
								ui.Group:new
								{
									Style = "background-color: white";
									Oriantation = "horizontal";
                                    Children =
                                    {
										ui.Button:new
										{
											Style = "color: black; font: ui-huge:20; background-color: white";
											Text = "Сброс расхода";
										};
										ui.Button:new
                                        {
											Style = "color: black; font: ui-huge:20; background-color: white";
											Text = "Сброс поездки";
                                        }
									}
								}
							}
						};
						ui.Text:new
						{
							Style = "border-width: 0";
							Width = 50;
						};
                        ui.Group:new
                        {
                        	Id = "incoming_msg";
                        	Orientation = "vertical";
                        	Width = "free";
                        	EraseBG = false;
                        	Style = "border-width: 1; border-color: black";
                        	Children =
                        	{
                        		ui.Text:new
                        		{
                        			Style = "color: #006080; font: ui-huge:20; background-color: white; border-width: 0";
                        			Text = "Входящие сообщения";
                        		};
                        		ui.Group:new
                        		{
                        			Width = "free";
                        			Orientation = "horizontal";
                        			Style = "border-width: 0; background-color: white";
                        			Children =
                        			{
                        				ui.Text:new
                        				{
                        					Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0";
                        					Text = "time";
                        				};
                        				ui.Text:new
                        				{
                        					Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0";
                        					Text = "Первое сообщение";
                        				};
                        			}
                        		};
                        		ui.Group:new
                        		{
                        			Width = "free";
                        		 	Orientation = "horizontal";
                        		 	Style = "border-width: 0; background-color: white";
                        		 	Children =
                        		 	{
                        		 		ui.Text:new
                        		 		{
                        		 			Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0";
                        		 			Text = "time";
                        		 		};
                        		 		ui.Text:new
                        		 		{
                        		 			Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0";
                        		 			Text = "Второе сообщение";
                        		 		}
                        		 	}
                        		};
                        		ui.Group:new
                        		{
                        			Width = "free";
                        			Orientation = "horizontal";
                        			Style = "border-width: 0; background-color: white";
                        			Children =
                        			{
                        				ui.Text:new
                        				{
                        					Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0";
                        					Text = "time";
                        				};
                        				ui.Text:new
                        				{
                        					Style = "background-color: white; color: #006080; font: ui-huge:20; border-width: 0";
                        					Text = "Третье сообщени";
                        				}
                        			}
                        		}
                        	}
                        }
                    }
                },
			}
		}
	}
}

return MainScreen;

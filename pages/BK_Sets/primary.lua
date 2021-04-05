local ui = require("tek.ui");
local List = require("tek.class.list");

local primary = ui.PageGroup:new
                {
                        PageCaptions = {"Даные", "Дата/Время", "Сеть"};
			Style = "color: green";
                        Children =
                        {
                                EraseBG = true;
                                ui.PageGroup:new
                                {
                                        PageCaptions = {"Устройство", "Борт", "Водитель"};
                                        Children =
                                        {
                                                ui.Group:new
                                                {
                                                        Children =
                                                        {
                                                                ui.Group:new
                                                                {
                                                                        Orientation = "vertical";
                                                                        Children =
                                                                        {
                                                                                ui.Text:new
                                                                                {
                                                                                        Text = "ID устройства";
                                                                                },
                                                                                ui.Input:new
                                                                                {
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                },
						ui.Group:new
                                                {
                                                        Children =
                                                        {
                                                                ui.Group:new
                                                                {
                                                                        Orientation = "vertical";
                                                                        Children =
                                                                        {
                                                                                ui.Text:new
                                                                                {
                                                                                        Text = "Борт номер";
                                                                                },
                                                                                ui.Input:new
                                                                                {
                                                                                },
                                                                                ui.Text:new
                                                                                {
                                                                                        Text = "Гос номер";
                                                                                },
                                                                                ui.Input:new
                                                                                {
                                                                                },
                                                                                ui.Text:new
                                                                                {
                                                                                        Text = "# маршрута";
                                                                                },
                                                                                ui.Input:new
                                                                                {
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                },
						ui.Group:new
                                                {
                                                        Children =
                                                        {
                                                                ui.Group:new
                                                                {
                                                                        Orientation = "vertical";
                                                                        Children =
                                                                        {
                                                                                ui.Text:new
                                                                                {
                                                                                        Text = "Номер карты";
                                                                                },
                                                                                ui.Input:new
                                                                                {
                                                                                },
                                                                                ui.Text:new
                                                                                {
                                                                                        Text = "Имя водителья";
                                                                                },
                                                                                ui.Input:new
                                                                                {
                                                                                },
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                },
				ui.PageGroup:new
                                {
                                        PageCaptions = {"Параметры", "Синхронизация", "Летнее"};
                                        Children =
                                        {
                                                ui.Group:new
                                                {
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
                                                                                                        Text = "Формат даты";
                                                                                                },
                                                                                                ui.PopList:new
                                                                                                {
                                                                                                        Id = "data_format";
                                                                                                        Width = "free";
                                                                                                        ListObject = List:new
                                                                                                        {
                                                                                                                Items =
                                                                                                                {
                                                                                                                        { { "МЕС/ДЕН/ГОД" } },
                                                                                                                        { { "ГОД/МЕС/ДЕН" } },
                                                                                                                        { { "ДЕН/МЕС/ГОД" } },
														}
                                                                                                        }
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
                                                                                                        Text = "Формат времени";
                                                                                                },
                                                                                                ui.PopList:new
                                                                                                {
                                                                                                        Id = "time_format";
                                                                                                        Width = "free";
                                                                                                        ListObject = List:new
                                                                                                        {
                                                                                                                Items =
                                                                                                                {
                                                                                                                        { { "24 часа" } },
                                                                                                                        { { "12 часов" } },
                                                                                                                }
                                                                                                        }
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
                                                                                                        Text = "Часовой пояс";
                                                                                                },
                                                                                                ui.PopList:new
                                                                                                {
                                                                                                        Id = "time_zone";
                                                                                                        Width = "free";
                                                                                                        ListObject = List:new
                                                                                                        {
                                                                                                                Items =
                                                                                                                {
                                                                                                                        { { "(GMT+3.00) Москва" } },
                                                                                                                        { { "(GMT+2.00) Дамаск" } },
                                                                                                                }
                                                                                                        }
                                                                                                }
                                                                                        }
                                                                                }
                                                                        }
                                                                },
                                                        }
                                                },
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
                                                                                        Text = "Дата/Время";
                                                                                },
                                                                                ui.Text:new
                                                                                {
                                                                                        Text = os.date("%x");
                                                                                },
                                                                                ui.Text:new
                                                                                {
                                                                                        Text = os.date("%X");
                                                                                },
                                                                        }
                                                                },
                                                                ui.Group:new
                                                                {
                                                                        Orientation = "vertical";
                                                                        Children =
                                                                        {
                                                                                ui.CheckMark:new
                                                                                {
                                                                                        Text = "ГНСС";
                                                                                },
                                                                                ui.CheckMark:new
                                                                                {
                                                                                        Text = "Видеосервер";
                                                                                },
                                                                                ui.CheckMark:new
                                                                                {
                                                                                        Text = "Синхронизация времени";
                                                                                },
                                                                        }
                                                                }
                                                        }
                                                },
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
                                                                                ui.CheckMark:new
                                                                                {
                                                                                        Text = "Активировать";
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
                                                                                        Text = "Прибавить";
                                                                                },
                                                                                ui.PopList:new
                                                                                {
                                                                                        Id = "add_hour";
                                                                                        Width = "free";
                                                                                        ListObject = List:new
                                                                                        {
                                                                                                Items =
                                                                                                {
                                                                                                        { { "1 час" } },
                                                                                                        { { "2 часа" } },
                                                                                                }
                                                                                        }
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
                                                                                        Text = "Режим";
                                                                                },
                                                                                ui.PopList:new
                                                                                {
                                                                                        Id = "mode";
                                                                                        Width = "free";
                                                                                        ListObject = List:new
                                                                                        {
                                                                                                Items =
                                                                                                {
                                                                                                        { { "неделя" } },
                                                                                                        { { "месяц" } },
                                                                                                }
                                                                                        }
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
                                                                                        Text = "c..";
                                                                                },
                                                                                ui.PopList:new
                                                                                {
                                                                                        Id = "from";
                                                                                        Width = "free";
                                                                                        ListObject = List:new
                                                                                        {
                                                                                                Items =
                                                                                                {
                                                                                                        { { "Январь" } },
                                                                                                        { { "Февраль" } },
                                                                                                        { { "Март" } },
                                                                                                        { { "Апрель" } },
                                                                                                        { { "Май" } },
                                                                                                        { { "Июнь" } },
                                                                                                }
                                                                                        }
                                                                                },
                                                                                ui.PopList:new
                                                                                {
                                                                                        Id = "num";
                                                                                        Width = "free";
                                                                                        ListObject = List:new
                                                                                        {
                                                                                                Items =
                                                                                                {
                                                                                                        { { "1" } },
                                                                                                        { { "2" } },
                                                                                                        { { "3" } },
                                                                                                        { { "4" } },
                                                                                                        { { "Посл." } },
                                                                                                }
                                                                                        }
                                                                                },
										ui.PopList:new
                                                                                {
                                                                                        Id = "day_week";
                                                                                        Width = "free";
                                                                                        ListObject = List:new
                                                                                        {
                                                                                                Items =
                                                                                                {
                                                                                                        { { "вс" } },
                                                                                                        { { "пн" } },
                                                                                                        { { "вт" } },
                                                                                                        { { "ср" } },
                                                                                                        { { "чт" } },
                                                                                                        { { "пт" } },
                                                                                                        { { "сб" } },
                                                                                                }
                                                                                        }
                                                                                },
                                                                                ui.Input:new
                                                                                {
                                                                                        Text = "00:00:00";
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
                                                                                        Text = "по..";
                                                                                },
                                                                                ui.PopList:new
                                                                                {
                                                                                        Id = "to";
                                                                                        Width = "free";
                                                                                        ListObject = List:new
                                                                                        {
                                                                                                Items =
                                                                                                {
                                                                                                        { { "Январь" } },
                                                                                                        { { "Февраль" } },
                                                                                                        { { "Март" } },
                                                                                                        { { "Апрель" } },
                                                                                                        { { "Май" } },
                                                                                                        { { "Июнь" } },
                                                                                                }
                                                                                        }
                                                                                },
										ui.PopList:new
                                                                                {
                                                                                        Id = "num1";
                                                                                        Width = "free";
                                                                                        ListObject = List:new
                                                                                        {
                                                                                                Items =
                                                                                                {
                                                                                                        { { "1" } },
                                                                                                        { { "2" } },
                                                                                                        { { "3" } },
                                                                                                        { { "4" } },
                                                                                                        { { "Посл." } },
                                                                                                }
                                                                                        }
                                                                                },
                                                                                ui.PopList:new
                                                                                {
                                                                                        Id = "day_week1";
                                                                                        Width = "free";
                                                                                        ListObject = List:new
                                                                                        {
                                                                                                Items =
                                                                                                {
                                                                                                        { { "вс" } },
                                                                                                        { { "пн" } },
                                                                                                        { { "вт" } },
                                                                                                        { { "ср" } },
                                                                                                        { { "чт" } },
                                                                                                        { { "пт" } },
                                                                                                        { { "сб" } },
                                                                                                }
                                                                                        }
                                                                                },
                                                                                ui.Input:new
                                                                                {
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                },
				ui.PageGroup:new
                                {
                                        PageCaptions = {"Локальная", "Порты", "Сервер"};
                                        Children =
                                        {
                                                ui.Group:new
                                                {
                                                        Orientation = "vertical";
                                                        Children =
                                                        {
                                                                ui.CheckMark:new
                                                                {
                                                                        Text = "IP получить через DHCP";
                                                                },
                                                                ui.CheckMark:new
                                                                {
                                                                        Text = "Статический IP";
                                                                },
                                                                ui.Group:new
                                                                {
                                                                        Orientation = "horizontal";
                                                                        Children =
                                                                        {
                                                                                ui.Text:new
                                                                                {
                                                                                        Text = "IP адрес";
                                                                                },
                                                                                ui.Input:new
                                                                                {
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
                                                                                        Text = "Маска сети";
                                                                                },
                                                                                ui.Input:new
                                                                                {
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
                                                                                        Text = "Шлюз";
                                                                                },
                                                                                ui.Input:new
                                                                                {
                                                                                }
                                                                        }
                                                                },
								ui.CheckMark:new
                                                                {
                                                                        Text = "Обнаружить DNS";
                                                                },
                                                                ui.CheckMark:new
                                                                {
                                                                        Text = "DNS сервер";
                                                                },
                                                                        ui.Group:new
                                                                        {
                                                                                Orientation = "horizontal";
                                                                                Children =
                                                                                {
                                                                                        ui.Text:new
                                                                                        {
                                                                                                Text = "Предпочитаемый DNS";
                                                                                        },
                                                                                        ui.Input:new
                                                                                        {
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
                                                                                                Text = "Альтернативный DNS";
                                                                                        },
                                                                                        ui.Input:new
                                                                                        {
                                                                                        }
                                                                                }
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
                                                                                Text = "Порт вебконфигуратора";
                                                                        },
                                                                        ui.Input:new
                                                                        {
                                                                        }
                                                                }
                                                        },
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
                                                                                                Text = "Видеосервер";
                                                                                        },
                                                                                        ui.PopList:new
                                                                                        {
                                                                                                Id = "name_server";
                                                                                                Width = "free";
                                                                                                ListObject = List:new
                                                                                                {
                                                                                                        Items =
                                                                                                        {
                                                                                                                { { "Сервер1" } }
                                                                                                        }
                                                                                                }
                                                                                        },
											ui.Button:new
                                                                                        {
                                                                                                Text = "Добавить";
                                                                                        },
                                                                                        ui.Button:new
                                                                                        {
                                                                                                Text = "Удалить";
                                                                                        }
                                                                                }
                                                                        },
                                                                        ui.Group:new
                                                                        {
                                                                                ui.CheckMark:new
                                                                                {
                                                                                        Text = "Вкл";
                                                                                }
                                                                        },
									ui.Group:new
                                                                        {
                                                                                Orientation = "horizontal";
                                                                                Children =
                                                                                {
                                                                                        ui.Text:new
                                                                                        {
                                                                                                Text = "Протокол";
                                                                                        },
                                                                                        ui.PopList:new
                                                                                        {
                                                                                                Id = "name_protocol";
                                                                                                Width = "free";
                                                                                                ListObject = List:new
                                                                                                {
                                                                                                        Items =
                                                                                                        {
                                                                                                                { { "--" } }
                                                                                                        }
                                                                                                }
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
                                                                                                Text = "Используемая сеть";
                                                                                        },
                                                                                        ui.PopList:new
                                                                                        {
                                                                                                Id = "used_net";
                                                                                                Width = "free";
                                                                                                ListObject = List:new
                                                                                                {
                                                                                                        Items =
                                                                                                        {
                                                                                                                { { "--" } }
                                                                                                        }
                                                                                                }
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
                                                                                                Text = "Адрес сервера";
                                                                                        },
                                                                                        ui.Input:new
                                                                                        {
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
                                                                                                Text = "Порт сервера";
                                                                                        },
                                                                                        ui.Text:new
                                                                                        {
                                                                                                Text = "TCP";
                                                                                        },
                                                                                        ui.Input:new
                                                                                        {
                                                                                        },
                                                                                        ui.Text:new
                                                                                        {
                                                                                                Text = "UDP";
                                                                                        },
                                                                                        ui.Input:new
                                                                                        {
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
                                                                                                Text = "Адрес медиасервиса";
                                                                                        },
                                                                                        ui.Input:new
                                                                                        {
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
                                                                                                Text = "Порт медиасервиса";
                                                                                        },
                                                                                        ui.Text:new
                                                                                        {
                                                                                                Text = "TCP";
                                                                                        },
                                                                                        ui.Input:new
                                                                                        {
                                                                                        },
                                                                                        ui.Text:new
                                                                                        {
                                                                                                Text = "UDP";
                                                                                        },
                                                                                        ui.Input:new
                                                                                        {
                                                                                        },
                                                                                }
                                                                        },
                                                                }
                                                        }
                                                }
                                        }--End

                                }
                        }

return primary;

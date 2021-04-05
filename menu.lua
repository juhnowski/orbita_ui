#!/usr/bin/tarantool
box.cfg{};

ui = require "tek.ui"
exec = require "tek.lib.exec"

MainScreen = require("pages.MainScreen");
ManagePower = require("pages.ResetOff");
AutoInfo = require("pages.AutoInfo");
SetRoute = require("pages.SetRoutePtr");
StreamPass = require("pages.SystemCountStreamPass");
MainMenu = require("pages.mainMenu");
messages = require("pages.Messages");
set = require("pages.set");
InfoPanel = require("pages.InfoPanel");
SetKeymap = require("pages.SetKeymap");
StateTS = require("pages.StateTS");
tableFrame = {
	MainScreen, 
	ManagePower, 
	AutoInfo,
	SetRoute,
	StreamPass,
	MainMenu,
	messages,
	set,
	InfoPanel,
	SetKeymap,
	StateTS
};

BK_Sets = require "pages.BK_Sets";
videoreg = require "pages.BK_Sets.videoreg"
ip_camera = require "pages.BK_Sets.ip_camera";
i = 1;
--local Video = require("canvas")

ui.Mode = "workbench";

PPM_BackGround = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/Background/background2.ppm")
BMP_ArrowLeft = ui.loadImage(ui.ProgDir ..  "/graphics/imageFile/arrow_left.ppm")
BMP_MainScreen = ui.loadImage(ui.ProgDir .. "/graphics/imageFile/main_screen.ppm")
BMP_Menu = ui.loadImage(ui.ProgDir .. "/graphics/imageFile/menu.ppm")
BMP_Comments = ui.loadImage(ui.ProgDir .. "/graphics/imageFile/comments.ppm")
BMP_Video = ui.loadImage(ui.ProgDir .. "/graphics/imageFile/video.ppm") 
BMP_Volume = ui.loadImage(ui.ProgDir .. "/graphics/imageFile/volume.ppm")
BMP_Settings = ui.loadImage(ui.ProgDir .. "/graphics/imageFile/settings.ppm")
BMP_ArrowRight = ui.loadImage(ui.ProgDir .. "/graphics/imageFile/arrow_right.ppm")
PPM_camera = ui.loadImage(ui.ProgDir .. "/graphics/imageFile/camera.ppm");

app = ui.Application:new
{
	Id = "the-application",
	Children =
	{
		ui.Window:new
		{
			Title = "Canvas and Scrollgroup",
			HideOnEscape = true,
			Orientation = "vertical",
			FullScreen = true,
			Width = 800;
			Height = 480;
			MaxWidth = 1366;
			MaxHeight = 768;
			Id = "the-window",
			RootWindow = true;
			SizeButton = true;
			Children =
			{
				ui.ScrollGroup:new
				{
					HSliderMode = "auto",
					VSliderMode = "auto",
					--Style = "border-width: 0";
					Child = ui.Canvas:new
					{
						--Style = "background-image: url(graphics/imageFile/Background/background2.ppm); border-width: 0",
						Style = "background-image: url(graphics/imageFile/Background/background2.ppm)";
						UseChildBG = false,
						AutoWidth = true,
						AutoHeight = true,
						Id = "the-canvas",
					},
				},
				ui.Group:new
                                {
                                        --SameSize = false,
					EraseBG = false;
					--Style = "border-width: 0";
                                        Children =
                                        {
						ui.ImageWidget:new
                                                {
                                                        Height = "auto",
                                                        Mode = "button",
							--Width = 100,
							Width = "auto";
                                                        Image = BMP_ArrowLeft,
							--[[onClick = function(self)
								self:getById("the-canvas"):setValue("Child", tableFrame[i]);
								--self:getById("the-canvas"):setValue("Child", InfoPanel);
								--self:getById("the-canvas"):setValue("Child", SetKeymap);
								--self:getById("the-canvas"):setValue("Child", StateTS);
								i = i + 1;
								if i == #tableFrame + 1 then
									i = 1;
								end
								--self:getById("the-canvas"):setValue("Child", ManagePower)
								--self:getById("the-canvas"):setValue("Child", AutoInfo);
								--self:getById("the-canvas"):setValue("Child", SetRoute);
								--self:getById("the-canvas"):setValue("Child", StreamPass);
                                                        end]]
                                                },
						ui.ImageWidget:new
                                                {
                                                        Height = "auto",
                                                        Mode = "button",
							--Width = 100,
							Width = "auto";
                                                        Image = BMP_MainScreen,
                                                        onClick = function(self)
								--os.execute("logger MainScreen button is pressed");
								self:getById("the-canvas"):setValue("Child", false);
                                                                self:getById("the-canvas"):setValue("Child",  MainScreen);
                                                        end
							
                                                },
						ui.ImageWidget:new
                                                {
                                                        Height = "auto",
                                                        Mode = "button",
							--Width = 100,
							Width = "auto";
                                                        Image = BMP_Menu,
                                                        --[[onClick = function(self)
								--self:getById("the-canvas"):setValue("Child", false);
	                                                        self:getById("the-canvas"):setValue("Child", MainMenu);
                                                        end]]
                                                },
						ui.ImageWidget:new
                                                {
                                                        Height = "auto",
                                                        Mode = "button",
							--Width = 150,
							Width = "auto";
                                                        Image = BMP_Comments,
                                                        --[[onClick = function(self)
                                                                self:getById("the-canvas"):setValue("Child", messages);
                                                        end]]
                                                },
						ui.ImageWidget:new
                                                {
                                                        Height = "auto",
                                                        Mode = "button",
                                                        --Width = 150,
							Width = "auto";
                                                        Image = BMP_Video,
                                                        onClick = function(self)
								self:getById("the-canvas"):setValue("Child", false);
								os.execute("./fbff -u -sx -a - -z 0.75 SampleVideo_360x240_1mb.mp4 &");
								--os.execute("./fbff -u -sx -a - rtsp://10.0.0.2:8554/stream1");
                                                        end
                                                },
						ui.ImageWidget:new
                                                {
                                                        Height = "auto",
                                                        Mode = "button",
                                                        --Width = 150,
							Width = "auto";
                                                        Image = BMP_Volume,
                                                        --[[onClick = function(self)
								--os.execute("killall -9 fbff");
                                                                self:getById("the-canvas"):setValue("Child", false);
                                                        end]]
                                                },
						ui.ImageWidget:new
                                                {
                                                        Height = "auto",
                                                        Mode = "button",
                                                        --Width = 150,
							Width = "auto";
                                                        Image = BMP_Settings,
                                                        onClick = function(self)
                                                                self:getById("the-canvas"):setValue("Child", set);
                                                        end
                                                },
						ui.ImageWidget:new
                                                {
                                                        Height = "auto",
                                                        Mode = "button",
							--Width = 150,	
							Width = "auto";
                                                        Image = BMP_ArrowRight;
							onClick = function(self)
								os.execute("pkill fbff");
								self:getById("the-canvas"):setValue("Child", false);
							end
                                                }
                                        }
                                }
			},
		}
	}

}

ui.Application.connect(BK_Sets);
ui.Application.connect(videoreg);
ui.Application.connect(ip_camera);
app:addMember(BK_Sets);
app:addMember(videoreg);
app:addMember(ip_camera);

app:run()
app:hide()
app:cleanup()

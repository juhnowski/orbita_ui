local ui = require "tek.ui"
local List = require "tek.class.list"
local L = ui.getLocale("tekui-demo", "schulze-mueller.de")
local insert = table.insert
local camera = require "OrbitaDB.orbita_camera";

camera.init();

local Window = ui.Window:newClass { _NAME = "_demo_list_window" }

--[[function Window:calcDensity()
	local A = self:getById("the-input-area"):getText()
	local P = self:getById("the-input-population"):getText()
	A = A:gsub("%.", "")
	P = P:gsub("%.", "")
	local A = tonumber(A)
	local P = tonumber(P)
	if A and P and A > 0 then
		local D = math.floor(P / A)
		self:getById("the-input-density"):setValue("Text", tostring(D))
	end
end]]

function Window:setRecord(fields)
	self:getById("input-addr"):setValue("Text", fields[2] or "")
	self:getById("input-port"):setValue("Text", fields[3] or "")
	self:getById("input-name-ch"):setValue("Text", fields[4] or "")
	self:getById("input-substream"):setValue("Text", fields[5] or "")
	self:getById("input-protocol"):setValue("Text", fields[6] or "")
	--[[self:getById("the-input-language"):setValue("Text", fields[6] or "")
	self:getById("the-input-density"):setValue("Text", fields[7] or "")--]]
end

function Window:collectRecord()
	local line = { }
	insert(line, self:getById("input-addr"):getText())
	insert(line, self:getById("input-port"):getText())
	insert(line, self:getById("input-name-ch"):getText())
	insert(line, self:getById("input-substream"):getText())
	insert(line, self:getById("input-protocol"):getText())
	--[[insert(line, self:getById("the-input-language"):getText())
	insert(line, self:getById("the-input-density"):getText())--]]
	return line
end

-------------------------------------------------------------------------------
--	Create demo window:
-------------------------------------------------------------------------------

local window = Window:new
{
	Id = "ip-camera",
	Title = L.LIST_TITLE,
	Status = "hide",
	FullScreen = true;
	HideOnEscape = true,
	SizeButton = true,
	Style = "background-color: gradient(500,0,#f95,400,300,#002); color: white; border-width: 2";
	Children =
	{
		ui.Group:new
		{
			Orientation = "vertical",
			Children =
			{
				ui.ListView:new
				{
					VSliderMode = "auto",
					HSliderMode = "auto",
					Headers = {" ","Ip-адрес  ", "Порт  ", "Псевдоним канала  ", "Количество субпотоков  ", "Протокол"},
					Child = ui.Lister:new
					{
						Id = "list-camera",
						SelectMode = "multi",
						ListObject = List:new
						{
							Style = "background-color: black; color: white";
							Items =
							{
							}
						},
						onSelectLine = function(self)
							ui.Lister.onSelectLine(self)
							local line = self:getItem(self.SelectedLine)
							if line then
								self.Window:setRecord(line[1])
							end
						end,
					}
				},
				ui.Group:new
				{
					Columns = 2,
					Children =
					{
						ui.Text:new
						{
							Class = "caption",
							Width = "auto",
							Text = "Ip-адрес:";
							Style = "background-color: black; color: white";
						},
						ui.Input:new
						{
							Id = "input-addr",
							Style = "background-color: black; color: white";
							onEnter = function(self)
								ui.Input.onEnter(self)
								self:activate("next")
							end,
						},
						ui.Text:new
						{
							Class = "caption",
							Width = "auto",
							Text = "Порт:";
							Style = "background-color: black; color: white";
						},
						ui.Input:new
						{
							Id = "input-port",
							Style = "background-color: black; color: white";
							onEnter = function(self)
								ui.Input.onEnter(self)
								self:activate("next")
							end,
						},
						ui.Text:new
						{
							Class = "caption",
							Width = "auto",
							Text = "Псевдоним канала";
							Style = "background-color: black; color: white";
						},
						ui.Input:new
						{
							Id = "input-name-ch",
							Style = "background-color: black; color: white";
							onEnter = function(self)
								ui.Input.onEnter(self)
								--self.Window:calcDensity()
								self:activate("next")
							end,
						},
						ui.Text:new
						{
							Class = "caption",
							Width = "auto",
							Text = "Кол-во субпотоков:";
							Style = "background-color: black; color: white";
						},
						ui.Input:new
						{
							Id = "input-substream",
							Style = "background-color: black; color: white";
							onEnter = function(self)
								ui.Input.onEnter(self)
								--self.Window:calcDensity()
								self:activate("next")
							end,
						},
						ui.Text:new
						{
							Class = "caption",
							Width = "auto",
							Text = "Протокол:";
							Style = "background-color: black; color: white";
						},
						ui.Input:new
						{
							Id = "input-protocol",
							Style = "background-color: black; color: white";
							onEnter = function(self)
								ui.Input.onEnter(self)
								self:activate("next")
							end,
						},
						ui.Button:new
						{
							Id = "input-apply",
							Text = "Commit",
							Width = "auto",
							Style = "background-color: black; color: white";
							onClick = function(self)
								local line = { self.Window:collectRecord() }
								local list = self:getById("list-camera")
								list:changeItem(line, list.CursorLine)
								list:rethinkLayout(true, 1)
								camera.add(
									self:getById("input-addr"):getText(),
		                                                        self:getById("input-port"):getText(),
		                                                        self:getById("input-name-ch"):getText(),
                		                                        self:getById("input-substream"):getText(),
                                		                        self:getById("input-protocol"):getText()
                                                		)
							end
						}
					}
				}
			}
		},
			
		ui.Group:new
		{
			Orientation = "vertical",
			Width = "auto",
			Children =
			{
				ui.Button:new { Id = "btn-add-camera", Text = "Добавить",
					Style = "background-color: black; color: white";
					onClick = function(self)
						ui.Button.onClick(self)
						local list = self:getById("list-camera")
						self.Window:setRecord({ })
						local input = self:getById("input-addr")
						list:addItem("")
						list:setValue("CursorLine", list:getN())
						input:activate();
					end
				},
				ui.Button:new { Text = "Удалить",
					Style = "background-color: black; color: white";
					onClick = function(self)
						ui.Button.onClick(self)
						self = self:getById("list-camera")
						local sl = self.SelectedLines
						-- delete from last to first.
						local t = { }
						for lnr in pairs(self.SelectedLines) do
							table.insert(t, lnr)
						end
						if #t > 0 then
							table.sort(t, function(a, b) return a > b end)
							local cl = t[#t]
							for _, lnr in ipairs(t) do
								self:remItem(lnr)
							end
							cl = math.min(self:getN(), cl)
							self:setValue("SelectedLine", cl)
							self:setValue("CursorLine", cl)
						end
						--print(self.SelectedLine);
						camera.del(self.SelectedLine + 1)
					end
				},
				ui.Button:new
				{
					Text = "Загрузить";
					Style = "background-color: black; color: white";
					onClick = function(self)
						local list = self:getById("list-camera");
						local loadList = {};
						for k, v in box.space.camera:pairs() do
							list:addItem("");
							list:setValue("CursorLine", list:getN());

							loadList = box.space.camera:select{v[1]};

							list:changeItem(loadList, list.CursorLine);
							list:rethinkLayout(true, 1);
						end
					end
				};
				ui.Button:new
				{
					Text = "Очистить";
                                        Style = "background-color: black; color: white";
					onClick = function(self)
						camera.clear();
					end
				}
			}
		}
					
					
	}
}

return window;

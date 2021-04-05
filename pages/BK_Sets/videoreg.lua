--#!/usr/bin/env lua

local ui = require "tek.ui"
local List = require "tek.class.list"
local L = ui.getLocale("tekui-demo", "schulze-mueller.de")
local insert = table.insert
local videoreg = require "OrbitaDB.orbita_videoreg";

local Window = ui.Window:newClass { _NAME = "set-videoreg" }

videoreg.init();

function Window:setRecord(fields)
	self:getById("the-input"):setValue("Text", fields[2] or "")
	self:getById("the-input-name"):setValue("Text", fields[3] or "")
	self:getById("the-input-area"):setValue("Text", fields[4] or "")
	--[[self:getById("the-input"):setValue("Text", fields[1] or "")
        self:getById("the-input-name"):setValue("Text", fields[2] or "")
        self:getById("the-input-area"):setValue("Text", fields[3] or "")]]
end

function Window:collectRecord()
	local line = { }
	insert(line, self:getById("the-input"):getText())
	insert(line, self:getById("the-input-name"):getText())
	insert(line, self:getById("the-input-area"):getText())
	return line
end

-------------------------------------------------------------------------------
--	Create demo window:
-------------------------------------------------------------------------------

local window = Window:new
{
-- 	Orientation = "vertical",
	FullScreen = true;
	Id = "list-window",
	Title = L.LIST_TITLE,
	Status = "hide",
	HideOnEscape = true,
	SizeButton = true,
	Style = "background-color: gradient(500,0,#f95,400,300,#002); color: white; border-width: 2";
	Children =
	{
		ui.Group:new
		{
			Orientation = "vertical",
			Style = "background-color: black; color: white";
			Children =
			{
				ui.ListView:new
				{
					VSliderMode = "auto",
					HSliderMode = "auto",
					Headers = {" ", "Видеорегистратор  ", "Псевдоним  ", "Кол-во каналов"},
					--Headers = { "Видеорегистратор  ", "Псевдоним  ", "Кол-во каналов"},
					Style = "background-color: black; color: white";
					Child = ui.Lister:new
					{
						Id = "the-list",
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
							Text = "Видеорегистратор:";
							Style = "background-color: black; color: white";
						},
						ui.Input:new
						{
							Id = "the-input",
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
							Text = "Псеводним:";
							Style = "background-color: black; color: white";
						},
						ui.Input:new
						{
							Id = "the-input-name",
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
							Text = "Кол-во каналов";
							Style = "background-color: black; color: white";
						},
						ui.Input:new
						{
							Id = "the-input-area",
							Style = "background-color: black; color: white";
							onEnter = function(self)
								ui.Input.onEnter(self)
								--self.Window:calcDensity()
								self:activate("next")
							end,
						},
						ui.Button:new
						{
							Id = "the-input-apply",
							Text = "Применить",
							Width = "auto",
							Style = "background-color: black; color: white";
							onClick = function(self)
								local line = { self.Window:collectRecord() }
								local list = self:getById("the-list")
								list:changeItem(line, list.CursorLine)
								list:rethinkLayout(true, 1)
								videoreg.add(
									self:getById("the-input"):getText(),
									self:getById("the-input-name"):getText(),
									self:getById("the-input-area"):getText()
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
				--ui.Button:new { Id = "new-button", Text = "_New",
				ui.Button:new { Id = "new-button", Text = "Добавить",
					Style = "background-color: black; color: white";
					onClick = function(self)
						ui.Button.onClick(self)
						local list = self:getById("the-list")
						self.Window:setRecord({ })
						local input = self:getById("the-input")
						list:addItem("")
						list:setValue("CursorLine", list:getN())
						input:activate()
					end
				},
				ui.Button:new { Text = "Удалить",
					Style = "background-color: black; color: white";
					onClick = function(self)
						ui.Button.onClick(self)
						self = self:getById("the-list")
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
						videoreg.del(self.SelectedLine + 1);
					end
				},
				ui.Button:new
				{
					Text = "Загрузить";
					Style = "background-color: black; color: white";
					onClick = function(self)
						local list = self:getById("the-list");
						local loadList = {};
						for k,v in box.space.videoreg:pairs() do
							local temp = {}
							list:addItem("");
							list:setValue("CursorLine", list:getN());
							loadList = box.space.videoreg:select{v[1]};
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
						videoreg.clear();
					end
				}
			}
		}
					
					
	}
}

return window;

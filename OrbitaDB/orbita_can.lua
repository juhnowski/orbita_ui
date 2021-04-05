local orbita_can = {}
--[[
- сопоставление интерфейса CAN одному из типов устройств, которые могут вешаться на CAN (ничего, IRMA);

Компонент:

CAN:
+------------+-+
|ничего      |v|
+------------+-+
|ничего      |
|IRMA        |
+------------+

--]]
orbita_can.NOTHING = 'ничего'
orbita_can.IRMA = 'IRMA'

function orbita_can.init()
	s = box.pace.can;
	if not s then
		s = box.schema.space.create('can');
		p = s:create_index('primary');
	end
end

function orbita_can.init()
	orbita_can.init_space()
	--orbita_can.init_values()	
end

function orbita_can.init_space()
	orbita_can.init_can_list()
	local s = box.space.can;
	if not s then
		box.schema.space.create('can')
		box.space.can:create_index('primary')
		box.space.can:insert{1, 1}
	end
end

function orbita_can.init_values()
	box.space.can:insert{1, 1}
end



function orbita_can.init_can_list()
	local s = box.space.can_list;
	if not s then
		box.schema.space.create('can_list')
		box.space.can_list:create_index('primary')
		box.space.can_list:insert{1, orbita_can.NOTHING}
		box.space.can_list:insert{2, orbita_can.IRMA}
	end
end

function orbita_can.get_can_list()
	return box.space.can_list:select{}
end

function orbita_can.get_can()
	return box.space.can:select{1}
end

--function orbita_can.get_can_name(id)
function orbita_can.get_can_name()
	local numNote = box.space.can:select{1}[1][2]
	return box.space.can_list:select{numNote}[1][2]
end

function orbita_can.set_can(dev_id)
	if dev_id == 0 then
		dev_id = 1
	end
	box.space.can:update({1}, {{'=', 2, dev_id}})
end

function orbita_can.get_can_value()
  current_can_table = box.space.can:select{1}
  current_can = 0
  for k,v in pairs(current_can_table) do
    current_can = v[1]
  end
  return current_can
end


return orbita_can

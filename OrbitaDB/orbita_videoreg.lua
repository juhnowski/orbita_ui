local orbita_videoreg = {}

--[[
Слайд 1 Состояние оборудования - Видеорегистратор

--]]

function orbita_videoreg.init()
	s = box.space.videoreg;
	if not s then
		s = box.schema.space.create('videoreg');
		p = s:create_index('primary', {type = 'hash', parts = {1, 'unsigned'}});
	end
end

function orbita_videoreg.add(id, name, num_ch)
	local j = box.space.videoreg:len();
	j = j + 1;
	box.space.videoreg:insert{j, id, name, num_ch};
end

function orbita_videoreg.del(ind)
	local i = box.space.videoreg:len();
	if i ~= 0 then
		box.space.videoreg:delete(ind);
	end
end

function orbita_videoreg.get(ind)
	return box.space.videoreg:select{ind};
end

function orbita_videoreg.getLen()
	return box.space.videoreg:len();
end

function orbita_videoreg.clear()
	box.space.videoreg:truncate();
end

return orbita_videoreg;

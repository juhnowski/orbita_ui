local orbita_ip_bc = {}
local ip = require "orbita_ip"

--[[]
 ip адреса бортового компьютера/ включение dhcp;

Компонент:

Адрес БК:
 +---+ +---+ +---+ +---+
 |aaa| |bbb| |ccc| |ddd|
 +---+ +---+ +---+ +---+

--]]
function orbita_ip_bc.init()
        box.schema.space.create('ip_bc')
        box.space.ip_bc:create_index('primary')
        box.space.ip_bc:create_index('ip',{unique=true,type='BITSET', parts={2,'unsigned'}})
        box.space.ip_bc:insert{1,ip.ip_to_number(192,168,0,1)}
end

function orbita_ip_bc.get()
    return ip.number_to_ip(box.space.ip_bc:select{1})
end

function orbita_ip_bc.set(aaa, bbb, ccc, ddd)
    box.space.ip_bc:update({1}, {{'=', 2, ip.ip_to_number (aaa, bbb, ccc, ddd)}})
end

return orbita_ip_bc
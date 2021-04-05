local orbita_dhcp_bc = {}
local ip = require "orbita_ip"
--[[
   настройки / включение dhcp бортового компьютера;

Компонент:

Подсеть:
+---+ +---+ +---+ +---+
|aaa| |bbb| |ccc| |ddd|
+---+ +---+ +---+ +---+

Маска сети:
+---+ +---+ +---+ +---+
|aaa| |bbb| |ccc| |ddd|
+---+ +---+ +---+ +---+

Начальный IP адрес:
+---+ +---+ +---+ +---+
|aaa| |bbb| |ccc| |ddd|
+---+ +---+ +---+ +---+

Конечный IP адрес:
+---+ +---+ +---+ +---+
|aaa| |bbb| |ccc| |ddd|
+---+ +---+ +---+ +---+

Широковещательный адрес:
+---+ +---+ +---+ +---+
|aaa| |bbb| |ccc| |ddd|
+---+ +---+ +---+ +---+

          +-+
Включить  |X|
          +-+
--]]

function orbita_dhcp_bc.init()
        box.schema.space.create('dhcp_bc')
        box.space.dhcp_bc:create_index('primary')
        box.space.dhcp_bc:insert{1, ip.ip_to_number(192,168,0,1)}
        box.space.dhcp_bc:insert{2, ip.ip_to_number(255,255,255,0)}
        box.space.dhcp_bc:insert{3, ip.ip_to_number(192,168,0,2)}
        box.space.dhcp_bc:insert{4, ip.ip_to_number(1192,168,0,254)}
        box.space.dhcp_bc:insert{5, ip.ip_to_number(192,168,0,255)}
        box.space.dhcp_bc:insert{6, 1} --[ 0-выкл, 1-вкл --]
end

function orbita_dhcp_bc.get_subnet()
    return ip.number_to_ip(box.space.dhcp_bc:select{1})
end

function orbita_dhcp_bc.get_subnet_mask()
    return ip.number_to_ip(box.space.dhcp_bc:select{2})
end

function orbita_dhcp_bc.get_start_ip()
    return ip.number_to_ip(box.space.dhcp_bc:select{3})
end

function orbita_dhcp_bc.get_end_ip()
    return ip.number_to_ip(box.space.dhcp_bc:select{4})
end

function orbita_dhcp_bc.get_broadcast_ip()
    return ip.number_to_ip(box.space.dhcp_bc:select{5})
end

function orbita_dhcp_bc.get_dhcp_on()
    return box.space.dhcp_bc:select{6}
end

function orbita_dhcp_bc.set_subnet(aaa,bbb,ccc,ddd)
    box.space.ip_bc:update({1}, {{'=', 2, ip.ip_to_number (aaa, bbb, ccc, ddd)}})
end

function orbita_dhcp_bc.set_subnet_mask(aaa,bbb,ccc,ddd)
    box.space.ip_bc:update({2}, {{'=', 2, ip.ip_to_number (aaa, bbb, ccc, ddd)}})
end

function orbita_dhcp_bc.set_start_ip(aaa,bbb,ccc,ddd)
    box.space.ip_bc:update({3}, {{'=', 2, ip.ip_to_number (aaa, bbb, ccc, ddd)}})
end

function orbita_dhcp_bc.set_end_ip(aaa,bbb,ccc,ddd)
    box.space.ip_bc:update({4}, {{'=', 2, ip.ip_to_number (aaa, bbb, ccc, ddd)}})
end

function orbita_dhcp_bc.set_broadcast_ip(aaa,bbb,ccc,ddd)
    box.space.ip_bc:update({5}, {{'=', 2, ip.ip_to_number (aaa, bbb, ccc, ddd)}})
end

function orbita_dhcp_bc.set_on(a)
    if a
        then box.space.ip_bc:update({6}, {{'=', 2, 1}})
        else box.space.ip_bc:update({6}, {{'=', 2, 0}})
    end
end

return orbita_dhcp_bc
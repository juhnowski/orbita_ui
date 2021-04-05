local orbita_ip = {}

function orbita_ip.ip_to_number (aaa, bbb, ccc, ddd)
 local number = 0
 number = (aaa*16777216) + (bbb*65536) + (ccc*256) + ddd
 return number
end

function orbita_ip.number_to_ip(number)
 ddd = number % 256
 number  =  number/256
 ccc= number % 256
 number  =  number/256
 bbb = number % 256
 number  =  number/256
 aaa =  number
 return aaa, bbb, ccc, ddd
end


return orbita_ip
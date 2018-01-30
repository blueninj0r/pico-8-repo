pico-8 cartridge // http://www.pico-8.com
version 15
__lua__
function _init()
 circ_r = 0
end

function _update()
 circ_r = (circ_r + 1) % 90
end

function _draw()
 cls()
 circ(64,64,circ_r,8)
 local x= (circ_r / sin(1.0/8.0))/2
 rect(64-x,64-x,64+x,64+x,2)
end

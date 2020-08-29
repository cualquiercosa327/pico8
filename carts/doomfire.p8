pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
local _colors={
   [7]=10,
   [10]=9,
   [9]=8,
   [8]=2,
   [2]=1,
   [1]=0}

function _init()
 cls()
 line(0,127,127,127,7)
end

function _update()
 if(btnp(4)) line(0,127,127,127,7)
end

function _draw()

 for x=0,127 do
 	for y=127,110,-1 do
 	 local c=pget(x,y)
 	 -- decay
 		if(rnd()>0.5) c=_colors[c]
 		if(c) pset((x+rnd(2)-1)&127,y-1,c)
 	end
 end

	--[[
 for mem=0x6000+127*64,0x6000+124*64,-64 do
 	for x=0,63 do
 	 local c=@(mem+x)
 	 c+=0x11*flr(rnd(1.1))
   poke(mem+x-64,_pokes[c])
 	end
 end
 ]]
 
 -- pal(_colors,1)
 
 print(stat(1),2,2,7)
end

__gfx__
000000007a9821000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

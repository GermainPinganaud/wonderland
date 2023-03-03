pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
function _init()
 cls()
 end

function _update()
	end


function _draw()
 foreach(level, print[1])
	end

level = {
 {0,0,0,0,0},
 {0,1,1,1,0},
 {0,1,1,1,0},
 {0,1,1,1,0},
 {0,0,0,0,0}
}
__gfx__
00000000bbbbbbbbbbbbbbbbbbbbbbbbb44b44b44444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbbbbbbbbbbbbb3bb44b444444444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700bbbabbbbbbbbbbbbb3bb3bbb444b4b4b4444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000bba9abbbbbbbbbbbbb3b3bbbb44444444444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000bbbabbbbbbbbbbbbbb3b3b3b44b4b4b44444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700bbbbbbbbbbbbbbbbbbbb3bbb444444444444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbbbbbbbbbbbbbbbbbb444b4b4444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbbbbbbbbbbbbbbbb44b44b444444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002222222222222222222222222ccccccc4444464400000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000022cccccccccccc2cccccc2222cccccc24444444500000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002ccccccccccccccccccccc22ccccccc24447444400000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc2cccccccc4476544400000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc22ccccccc4445444400000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc22cccccc24444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc2ccccccc24644445400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ccccccccccccccccccccccc22cccccc24444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc2222cc2220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc2cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ccccccccccccccccccccccc2cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc2cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002ccccccccccccccccccccc22cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc2cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc2cccccc2c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ccccccccccccccccccccccc2222222220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ccccccccccccccccccccccc2222222220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ccccccccccccccccccccccc222cccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ccccccccccccccccccccccc22cccccc20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002cccccccccccccccccccccc22cccccc20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002ccccccccccccccccccccc222cccccc20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002ccccccccccccccccccccc22ccccccc20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000022ccccccccccccccccccc222cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002222222222cccc2222222222c22222220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0434040402140202020202020405151500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0404040402311302023402020405051500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1505050402021402020301030204040400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050404021402020202020201020300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1505040402021402010202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505040411123302020211243224241200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050421230202021133040404043100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050531322412243304040505050400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505040404050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

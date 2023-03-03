pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
function _init()
 cls()
 music(0)
 init_puyo_a()
 init_stuck_puyos()
	custom_menu()
end


function custom_menu()
 menuitem(1,"set speed",
	 function()
	 	sfx(0)
	 end
	 )
	 menuitem(2,"set starving",
	 function()
	 	sfx(0)
	 end
 )
end


function init_stuck_puyos()
 stuck_puyos = {}
 for i = 1,6 do
  stuck_puyos[i]={}
  for j = 1,14 do
  	stuck_puyos[i][j]=0
  end
 end
end
 
 
function init_puyo_a()
 puyo_a = {
	 sprite=64,
	 x=24,
	 y=16
	}
end


-->8
function _update60()
	move_down()
end
-->8
function _draw()
 cls()
 map(0,0,8,8)
 draw_puyo_a()
 draw_stuck_puyo()
end


function draw_stuck_puyo()
 for i = 1,6 do
  for j = 1,14 do
  	sprite=stuck_puyos[i][j]
  	if sprite ~= 0
  	then spr(sprite,i*8,j*8)
  	end
  end
 end 
end


function draw_puyo_a()
	spr(
		puyo_a.sprite,
		puyo_a.x,
		puyo_a.y)
end
-->8
function move_down()
 if puyo_a.y < 112
 then 
  puyo_a.y += 0.1
	 control()
	else
	 stuck_puyos[puyo_a.x/8]
	 [puyo_a.y/8]=puyo_a.sprite
	 puyo_a.y=16
  sfx(0)
 end
end


function	control()
	if btnp(1)
		then puyo_a.x += 8
			if puyo_a.x > 48
			 then puyo_a.x = 48
			end
	end
	if btnp(0)
		then puyo_a.x -= 8
	end
	if btn(3)
		then puyo_a.y += 3
			if puyo_a.y > 112
			 then puyo_a.y = 112
			end
	end
end

__gfx__
00000000aa6665aa1111111111111111111111111111100000001111bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
00000000a667765a1111111111111111111111111110033333300111bbebbbbbbbbbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
00700700567766551111111111ccc1111ccc11c1110bb377333bb011be7ebbbbb3bbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
0007700056766655111111111111111111111111103b3377333bbb01bbebbbbbbb3bbb3bbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
0007700056666655111111111111cc11111cc11103bb3333333bbb30bbbbbbbbbbbbb3bbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
007007005566655511111111111111111111111103bbb333333bbb30bbbbb7bbbbbbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
00000000a555555a11111111111111111111111103bbb33333bbbb30bbbb7e7bbbbbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
00000000aa5555aa11111111111111111111111103bbbbbbbbbbbb30bbbbb7bbbbbbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
00000000aaaa766aaaaaaaaa111111111111111111111111bbbbb0000000bbbbaaabbaabbaabbaabbaabbaaa0000000000000000000000000000000000000000
00000000a7776766aaaaaaaa111111111111111111111111bbb0033333300bbbaabbbbbbbbbbbbbbbbbbbbaa0000000000000000000000000000000000000000
0000000077767675abaaaaaa111111ccc11cc11ccc111111bb0bb377333bb0bbabbbbbbbbbbbbbbbbbbbbbba0000000000000000000000000000000000000000
0000000076676565aabaaaba1111cc111cc11cc111cc1111b03b3377333bbb0bbbbbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
000000007676655aaaaaabaa111c1111111111111111c11103bb3333333bbb30bbbbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
000000005766565aaaaaaaaa111c1117711771177111c11103bbb333333bbb30abbbbbbbbbbbbbbbbbbbbbba0000000000000000000000000000000000000000
00000000a565565aaaaaaaaa11c111777777777777111c1103bbb33333bbbb30abbbbbbbbbbbbbbbbbbbbbba0000000000000000000000000000000000000000
00000000aa5555aaaaaaaaaa11c1177aa77aa77aa7711c1103bbbbbbbbbbbb30bbbbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
00000000aa7aa77aa77aa7aa11c1177aaaaaaaaaa7711c11030bbbbbbbbbb030bbbbbbbbbbbbbbbbbbbbbbbbbbbaabbaabbaabbb000000000000000000000000
00000000a77777777777777a111c1177aaaaaaaa7711c111a0033bbbbbb3300aabbbbbbbbbbbbbbbbbbbbbbabbaaaaaaaaaaaabb000000000000000000000000
000000007777711771177777111c1177aaaaaaaa7711c1110900303bb3030040abbbbbbbbbbbbbbbbbbbbbbabaaaaaaaaaaaaaab000000000000000000000000
00000000a77111111111177a11c1177aaaaaaaaaa7711c110440003333000440bbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaa000000000000000000000000
00000000a7711cc11cc1177a11c1177aaaaaaaaaa7711c11a009400000099009bbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaa000000000000000000000000
000000007711c11cc11c1177111c1177aaaaaaaa7711c1119094097799909909abbbbbbbbbbbbbbbbbbbbbbabaaaaaaaaaaaaaab000000000000000000000000
000000007711c111111c1177111c1177aaaaaaaa7711c111a00040999909000aabbbbbbbbbbbbbbbbbbbbbbabaaaaaaaaaaaaaab000000000000000000000000
00000000a7711c1111c1177a11c1177aaaaaaaaaa7711c11aa999a0000999aaabbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaa000000000000000000000000
00000000a7711c1111c1177a11c1177aa77aa77aa7711c11bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaa000000000000000000000000
000000007711c111111c117711c111777777777777111c11bbbbbbbbbbbbbbbbabbbbbbbbbbbbbbbbbbbbbbabaaaaaaaaaaaaaab000000000000000000000000
000000007711c11cc11c1177111c1117711771177111c111bbbbbbbbbbbbbbbbabbbbbbbbbbbbbbbbbbbbbbabaaaaaaaaaaaaaab000000000000000000000000
00000000a7711cc11cc1177a111c1111111111111111c111bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaa000000000000000000000000
00000000a77111111111177a1111cc111cc11cc111cc1111bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaa000000000000000000000000
000000007777711771177777111111ccc11cc11ccc111111bbbbbbbbbbbbbbbbabbbbbbbbbbbbbbbbbbbbbbabaaaaaaaaaaaaaab000000000000000000000000
00000000a77777777777777a111111111111111111111111bbbbbbbbbbbbbbbbaabbbbbbbbbbbbbbbbbbbbaabbaaaaaaaaaaaabb000000000000000000000000
00000000aa7aa77aa77aa7aa111111111111111111111111bbbbbbbbbbbbbbbbaaabbaabbaabbaabbaabbaaabbbaabbaabbaabbb000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000b0000000a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000b00b3000a00a30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000003bb300003ab300009449400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000003b0300000b3000000b3000090a90000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00003000000b30000009400000094000000250000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000940000029420000244200005255000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000d00000000d00000d0d00006d6d00000d66600005ddd0000000000000000000000000000000000000000000000000000000000000000000000000000000000
0006d00000d66000006d6d0006d6d0000d66dd0005dd550000000000000000000000000000000000000000000000000000000000000000000000000000000000
00d600000d66dd00006d6d0066666000d6d666d0555dddd000000000000000000000000000000000000000000000000000000000000000000000000000000000
0d66dd00d61666d00666660016166d00d666d66055dd56d000000000000000000000000000000000000000000000000000000000000000000000000000000000
d61666d0d666d660016166d066666dd007dd666f06556dd500000000000000000000000000000000000000000000000000000000000000000000000000000000
d666d66007ddd66f066666ddd7dd66d00006d660000d5dd000000000000000000000000000000000000000000000000000000000000000000000000000000000
07dd666f0006dd600d7ddd6d06d6d6d000dd0d60005505d000000000000000000000000000000000000000000000000000000000000000000000000000000000
00ddddd0000000d006d6d6d000ddd6d0000000d00000005000000000000000000000000000000000000000000000000000000000000000000000000000000000
00070000000070000000000007000470000094000000450000000000000000000000000000000000000000000000000000000000000000000000000000000000
00094000000094000700047049944994009999000055440000000000000000000000000000000000000000000000000000000000000000000000000000000000
09999007009999074944499449999994004999000054450000000000000000000000000000000000000000000000000000000000000000000000000000000000
01999049001999494999999449191947449999005544440000000000000000000000000000000000000000000000000000000000000000000000000000000000
49999499549999494919194704959474047779400565645000000000000000000000000000000000000000000000000000000000000000000000000000000000
07779940007779940495947400777744004444940055554500000000000000000000000000000000000000000000000000000000000000000000000000000000
00444400004444400077774400444440010004940100054500000000000000000000000000000000000000000000000000000000000000000000000000000000
00011000001001000044444000100100000010700000106000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0202020204020202020202020202020202020202020202040202020202020402020202020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0213141414141414141414141415020302020202020202020202020202020202020202030202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0223241819191919191919191a31141414150202020213141405060506141414141502020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0423242836362916172929292a24242424311414141432242426161716171a24242502020202020202020202020202020302020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0223242836291617272829082919191919191a24242424242424261617272824242502020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
02231138393a2627182907362929082907292919191919190819192616170a1a243115020402020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
022324241224241238393939092929292929082907292929292929192627282a242425020202020202020202030202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
02333434343434342224242428292929292929292929292929292929191929291a2425020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
02020202020204023334222428292929292929292929292929292929290829293a2425020203020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020202020202020202022324282929292929292929292929082929292929292a242431150202020202020202020202020302020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020202020213141414143224282929292916171617161729292907292929292a242424250202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020202020223242412242424280729291617161716172729292929292929292a122411250202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020202020233221124242424282929292627261617271829292929290829393a242424250202020204020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202023334222424242829292919191a262718292929292929292a2424242421350202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
02020302020202022324241228292929292929191929292929290729293a2424242135020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020202020202020223242424282908292929290729292929292929292a242421343502030202020202020202020302020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020202020202021332242424282929292929292929290829292929292a242425020202020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020202020203022324181a24281617292929292929292929292929292a242425020202020204020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020202020202022324383a242a2627282929082929292929072929292a242431141502020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020202020202022324242424381919390909393939392929292929393a122424242502020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
02020202020202332224241224242424282a24242424383939393a2424242411213502020202020203020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
02020204020202022324242424242424383a2412242424242424242421343434350202020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202333434343422242424242424112424242134343435020202030202020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020233343434343434343434343502020202020202020202020204020202020202020202020203020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202030202020202040202020202020202020202020203020202020402020202020202020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020202020202020202020202020202020202020202020202020202020203020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020202040202020202020202020202020202020203020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020302020202020202020202020202020202020202020202020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020202020202020202020203020202020202020202020202020202020202020202020202020202020202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00040000091500b150141501c1501b100241000010000100001000010000100001000010000100001000010000300005000050000000000000000000000000000000000000000000000000000000000000000000

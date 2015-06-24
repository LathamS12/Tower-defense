
clear
set obs 20
gen id = _n

gen health = .
gen damage = .

forvalues i = 1/20	{
	replace health = `i' * 5 if id == `i'
	replace damage = 100-health if id == `i'
}
# delimit ;
	
	graph bar (mean) health damage, over(id, axis(off)) stack 
		bar(1, fcolor(lime)) 
		bar(2, fcolor(red)) ;


	graph export "C:\Users\Scott\Desktop\Tower-defense-Modifications\scotts-art\healthbar.png", replace ;
		
		
		
/*
	loc full "lime"
	loc most "yellow"
	loc half "orange"
	loc low "blue"
	loc danger "red"

	loc outline_width = "medium"
	loc line_color = "black"

	graph hbar (mean) health*, 
		legend(off)
		bargap(25)
		
		bar(1, fcolor(`full') lwidth(`outline_width') lcolor(`line_color'))
		bar(2, fcolor(`most') lwidth(`outline_width') lcolor(`line_color'))
		bar(3, fcolor(`most') lwidth(`outline_width') lcolor(`line_color'))
		bar(4, fcolor(`most') lwidth(`outline_width') lcolor(`line_color'))
		bar(5, fcolor(`most') lwidth(`outline_width') lcolor(`line_color'))
		bar(6, fcolor(`most') lwidth(`outline_width') lcolor(`line_color')) 
		bar(7, fcolor(`most') lwidth(`outline_width') lcolor(`line_color'))
		bar(8, fcolor(`most') lwidth(`outline_width') lcolor(`line_color'))
		bar(9, fcolor(`most') lwidth(`outline_width') lcolor(`line_color'))
		bar(10, fcolor(`half') lwidth(`outline_width') lcolor(`line_color'))
		bar(11, fcolor(`half') lwidth(`outline_width') lcolor(`line_color'))
		bar(12, fcolor(`half') lwidth(`outline_width') lcolor(`line_color'))
		bar(13, fcolor(`half') lwidth(`outline_width') lcolor(`line_color'))
		bar(14, fcolor(`half') lwidth(`outline_width') lcolor(`line_color'))
		bar(15, fcolor(`half') lwidth(`outline_width') lcolor(`line_color'))
		bar(16, fcolor(`low') lwidth(`outline_width') lcolor(`line_color'))
		bar(17, fcolor(`low') lwidth(`outline_width') lcolor(`line_color'))
		bar(18, fcolor(`low') lwidth(`outline_width') lcolor(`line_color'))
		bar(19, fcolor(`low') lwidth(`outline_width') lcolor(`line_color'))
		bar(20, fcolor(`danger') lwidth(`outline_width') lcolor(`line_color'));
	
	# delimit cr	
	
	graph export "C:\Users\Scott\Desktop\Tower-defense-Modifications\scotts-art\health-sprites.png", replace

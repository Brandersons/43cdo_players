#define qty2(a) a, a
#define qty3(a) a, a, a
#define qty4(a) a, a, a, a
#define qty5(a) a, a, a, a, a
#define qty6(a) a, a, a, a, a, a

#define mag_xx(a,b) class _xx_##a {magazine = a; count = b;}
#define weap_xx(a,b) class _xx_##a {weapon = a; count = b;}
#define item_xx(a,b) class _xx_##a {name = a; count = b;}
#define bag_xx(a,b) class _xx_##a {backpack = a; count = b;}
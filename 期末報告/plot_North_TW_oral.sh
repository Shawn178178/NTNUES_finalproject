gmt begin oral_mapview pdf
	gmt basemap -JM13c -R119.8/122.3/21.8/25.5 -Ba0.1f0.1g0.1 -V
	
	gmt grdinfo oral.d -R119.8/122.3/21.8/25.5 -Goral.grd
	gmt makecpt -Crainbow -T0/35/3 -Z
	gmt colorbar -Dx14c/10c+w15c/1c+v+jML+ml -Bxa10f+l"Percent" -By+l%
	gmt blockmean oral.d -I0.2m -R119.8/122.3/21.8/25.5 > oral.bm
	gmt surface oral.bm -Goral.grd -I0.5m -R119.8/122.3/21.8/25.5 -T0 -Vn
	gmt grdinfo oral.grd
	gmt grdimage oral.grd -C
	gmt coast -Df -W0.5 -Slightblue
	gmt plot oral.d -Sd0.3c -Gred
gmt end show
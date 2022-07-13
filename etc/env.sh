if [ $RPT_DOMAIN ]; then 
	str=`grep -n rpt_proxy ${WEBTOBDIR}/config/http.m | awk '{print $1}' FS=":"`; 
	end=$(($str+10)); 
	sed -i -e "${str},${end}s:^#::" ${WEBTOBDIR}/config/http.m;
	sed -i "s+%RPT_DOMAIN%+${RPT_DOMAIN}+g" ${WEBTOBDIR}/config/http.m 
fi 


if [ $PDF_DOMAIN ]; then 
	str=`grep -n pdf_proxy ${WEBTOBDIR}/config/http.m | awk '{print $1}' FS=":"`; 
	end=$(($str+10)); 
	sed -i -e "${str},${end}s:^#::" ${WEBTOBDIR}/config/http.m;
	sed -i "s+%PDF_DOMAIN%+${PDF_DOMAIN}+g" ${WEBTOBDIR}/config/http.m 
fi 


if [ $ELS_DOMAIN ]; then 
	str=`grep -n els_proxy ${WEBTOBDIR}/config/http.m | awk '{print $1}' FS=":"`; 
	end=$(($str+10)); 
	sed -i -e "${str},${end}s:^#::" ${WEBTOBDIR}/config/http.m;
	sed -i "s+%ELS_DOMAIN%+${ELS_DOMAIN}+g" ${WEBTOBDIR}/config/http.m 
fi 
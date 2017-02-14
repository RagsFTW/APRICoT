#!/bin/bash
#APRICoT - A Password Recon, Integrity, and COmplexity Tool
#Aaron Ragusa
#2-13-2017

input=/root/Desktop/Scripts/rockyou.txt
inputlines=$(cat $input)

count=$(cat $input | wc -l)
#Character Count Variables
char1=0
char2=0
char3=0
char4=0
char5=0
char6=0
char7=0
char8=0
char9=0
char10=0
char11=0
char12=0
char13=0
char14=0
char15=0
char16=0
char17=0
char18=0
char19=0
char20=0
char21=0
char22=0
char23=0
char24=0
char25=0
char26=0
char27=0
char28=0
char29=0
char30=0
char31=0
char32=0

#Common Word Variables
con_password=0
con_admin=0
con_login=0
con_letmein=0
con_123=0
con_1234=0
con_12345=0
con_123456=0
con_1234567=0
con_12345678=0
con_123456789=0
con_1234567890=0
con_qwe=0
con_qwer=0
con_qwert=0
con_qwerty=0
con_qwertyu=0
con_qwertyui=0
con_qwertyuio=0
con_qwertyuiop=0
con_football=0
con_baseball=0
con_welcome=0
con_abc123=0
con_111111=0
con_1qaz2wsx=0
con_dragon=0
con_master=0
con_monkey=0
con_princess=0
con_solo=0
con_starwars=0

#Month Variables
jan=0
feb=0
mar=0
apr=0
may=0
jun=0
jul=0
aug=0
sep=0
oct=0
nov=0
dec=0

#Year Variables
conyear19=0
conyear20=0
end19=0
end20=0
start19=0
start20=0

#Complexity Variables

for line in $inputlines; do
	#Character Count
        if [[ $line =~ ^.{1}$ ]]; then ((char1=char1+1))
        fi
        if [[ $line =~ ^.{2}$ ]]; then ((char2=char2+1))
        fi
        if [[ $line =~ ^.{3}$ ]]; then ((char3=char3+1))
        fi
        if [[ $line =~ ^.{4}$ ]]; then ((char4=char4+1))
        fi
        if [[ $line =~ ^.{5}$ ]]; then ((char5=char5+1))
        fi
        if [[ $line =~ ^.{6}$ ]]; then ((char6=char6+1))
        fi
        if [[ $line =~ ^.{7}$ ]]; then ((char7=char7+1))
        fi
	if [[ $line =~ ^.{8}$ ]]; then ((char8=char8+1))
	fi
        if [[ $line =~ ^.{9}$ ]]; then ((char9=char9+1))
        fi
        if [[ $line =~ ^.{10}$ ]]; then ((char10=char10+1))
        fi
        if [[ $line =~ ^.{11}$ ]]; then ((char11=char11+1))
        fi
        if [[ $line =~ ^.{12}$ ]]; then ((char12=char12+1))
        fi
        if [[ $line =~ ^.{13}$ ]]; then ((char13=char13+1))
        fi
        if [[ $line =~ ^.{14}$ ]]; then ((char14=char14+1))
        fi
        if [[ $line =~ ^.{15}$ ]]; then ((char15=char15+1))
        fi
        if [[ $line =~ ^.{16}$ ]]; then ((char16=char16+1))
        fi
        if [[ $line =~ ^.{17}$ ]]; then ((char17=char17+1))
        fi
        if [[ $line =~ ^.{18}$ ]]; then ((char18=char18+1))
        fi
        if [[ $line =~ ^.{19}$ ]]; then ((char19=char19+1))
        fi
        if [[ $line =~ ^.{20}$ ]]; then ((char20=char20+1))
        fi
        if [[ $line =~ ^.{21}$ ]]; then ((char21=char21+1))
        fi
        if [[ $line =~ ^.{22}$ ]]; then ((char22=char22+1))
        fi
        if [[ $line =~ ^.{23}$ ]]; then ((char23=char23+1))
        fi
        if [[ $line =~ ^.{24}$ ]]; then ((char24=char24+1))
        fi
        if [[ $line =~ ^.{25}$ ]]; then ((char25=char25+1))
        fi
        if [[ $line =~ ^.{26}$ ]]; then ((char26=char26+1))
        fi
        if [[ $line =~ ^.{27}$ ]]; then ((char27=char27+1))
        fi
        if [[ $line =~ ^.{28}$ ]]; then ((char28=char28+1))
        fi
        if [[ $line =~ ^.{29}$ ]]; then ((char29=char29+1))
        fi
        if [[ $line =~ ^.{30}$ ]]; then ((char30=char30+1))
        fi
        if [[ $line =~ ^.{31}$ ]]; then ((char31=char31+1))
        fi
        if [[ $line =~ ^.{32}$ ]]; then ((char32=char32+1))
        fi
	#Common Words and SplashData Top 25 (2016)
	if [[ $line =~ [Pp][Aa@][Ss5$][Ss5$] ]]; then ((con_password=con_password+1))
	fi
	if [[ $line =~ [Aa@][Dd][Mm][Iil1!|][Nn] ]]; then ((con_admin=con_admin+1))
	fi
	if [[ $line =~ [Ll][Oo0][Gg][Iil1!|][Nn] ]]; then ((con_login=con_login+1))
	fi
        if [[ $line =~ [Ll1!|I][Ee3][Tt7][Mm][Ee3][Iil1!|][Nn] ]]; then ((con_letmein=con_letmein+1))
        fi
	if [[ $line =~ [1][2][3] ]]; then ((con_123=con_123+1))
	fi
        if [[ $line =~ [1][2][3][4] ]]; then ((con_1234=con_1234+1))
        fi
        if [[ $line =~ [1][2][3][4][5] ]]; then ((con_12345=con_12345+1))
        fi
        if [[ $line =~ [1][2][3][4][5][6] ]]; then ((con_123456=con_123456+1))
        fi
        if [[ $line =~ [1][2][3][4][5][6][7] ]]; then ((con_1234567=con_1234567+1))
        fi
        if [[ $line =~ [1][2][3][4][5][6][7][8] ]]; then ((con_12345678=con_12345678+1))
        fi
        if [[ $line =~ [1][2][3][4][5][6][7][8][9] ]]; then ((con_123456789=con_123456789+1))
        fi
        if [[ $line =~ [1][2][3][4][5][6][7][8][9][0] ]]; then ((con_1234567890=con_1234567890+1))
        fi
        if [[ $line =~ [Qq][Ww][Ee3] ]]; then ((con_qwe=con_qwe+1))
        fi
        if [[ $line =~ [Qq][Ww][Ee3][Rr] ]]; then ((con_qwer=con_qwer+1))
        fi
        if [[ $line =~ [Qq][Ww][Ee3][Rr][Tt7] ]]; then ((con_qwert=con_qwert+1))
        fi
        if [[ $line =~ [Qq][Ww][Ee3][Rr][Tt7][Yy] ]]; then ((con_qwerty=con_qwerty+1))
        fi
        if [[ $line =~ [Qq][Ww][Ee3][Rr][Tt7][Yy][Uu] ]]; then ((con_qwertyu=con_qwertyu+1))
        fi
        if [[ $line =~ [Qq][Ww][Ee3][Rr][Tt7][Yy][Uu][Iil1!|] ]]; then ((con_qwertyui=con_qwertyui+1))
        fi
        if [[ $line =~ [Qq][Ww][Ee3][Rr][Tt7][Yy][Uu][Iil1!|][Oo0] ]]; then ((con_qwertyuio=con_qwertyuio+1))
        fi
        if [[ $line =~ [Qq][Ww][Ee3][Rr][Tt7][Yy][Uu][Iil1!|][Oo0][Pp] ]]; then ((con_qwertyuiop=con_qwertyuiop+1))
        fi
        if [[ $line =~ [Ff][Oo0][Oo0][Tt7][Bb][Aa@][LlI1!|][LlI1!|] ]]; then ((con_football=con_football+1))
        fi
        if [[ $line =~ [Bb][Aa@][Ss5$][Ee3][Bb][Aa@][LlI1!|][LlI1!|] ]]; then ((con_baseball=con_baseball+1))
        fi
        if [[ $line =~ [Ww][Ee3][LlI1!|][Cc][Oo0][Mm][Ee3] ]]; then ((con_welcome=con_welcome+1))
        fi
        if [[ $line =~ [Aa@][Bb][Cc][1][2][3] ]]; then ((con_abc123=con_abc123+1))
        fi
        if [[ $line =~ [1][1][1][1][1][1] ]]; then ((con_111111=con_111111+1))
        fi
        if [[ $line =~ [1][Qq][Aa@][Zz][2][Ww][Ss5$][Xx] ]]; then ((con_1qaz2wsx=con_1qaz2wsx+1))
        fi
        if [[ $line =~ [Dd][Rr][Aa@][Gg][Oo0][Nn] ]]; then ((con_dragon=con_dragon+1))
        fi
        if [[ $line =~ [Mm][Aa@][Ss5$][Tt7][Ee3][Rr] ]]; then ((con_master=con_master+1))
        fi
        if [[ $line =~ [Mm][Oo0][Nn][Kk][Ee3][Yy] ]]; then ((con_monkey=con_monkey+1))
        fi
        if [[ $line =~ [Pp][Rr][Iil1!|][Nn][Cc][Ee3][Ss5$][Ss5$] ]]; then ((con_princess=con_princess+1))
        fi
        if [[ $line =~ [Ss5$][Oo0][LlI1!|][Oo0] ]]; then ((con_solo=con_solo+1))
        fi
        if [[ $line =~ [Ss5$][Tt7][Aa@][Rr][Ww][Aa@][Rr][Ss5$] ]]; then ((con_starwars=con_starwars+1))
        fi
	#Months
	if [[ $line =~ [Jj][Aa@][Nn] ]]; then ((jan=jan+1))
	fi
        if [[ $line =~ [Ff][Ee3][Bb] ]]; then ((feb=feb+1))
        fi
        if [[ $line =~ [Mm][Aa@][Rr] ]]; then ((mar=mar+1))
        fi
        if [[ $line =~ [Aa@][Pp][Rr] ]]; then ((apr=apr+1))
        fi
        if [[ $line =~ [Mm][Aa@][Yy] ]]; then ((may=may+1))
        fi
        if [[ $line =~ [Jj][Uu][Nn] ]]; then ((jun=jun+1))
        fi
        if [[ $line =~ [Jj][Uu][Ll1!I|] ]]; then ((jul=jul+1))
        fi
        if [[ $line =~ [Aa@][Uu][Gg] ]]; then ((aug=aug+1))
        fi
        if [[ $line =~ [Ss5$][Ee3][Pp] ]]; then ((sep=sep+1))
        fi
        if [[ $line =~ [Oo0][Cc][Tt7] ]]; then ((oct=oct+1))
        fi
        if [[ $line =~ [Nn][Oo0][Vv] ]]; then ((nov=nov+1))
        fi
        if [[ $line =~ [Dd][Ee3][Cc] ]]; then ((dec=dec+1))
        fi
	#Years
        if [[ $line =~ 19[0-9][0-9] ]]; then ((conyear19=conyear19+1))
        fi
        if [[ $line =~ 20[0-9][0-9] ]]; then ((conyear20=conyear20+1))
        fi
        if [[ $line =~ 19[0-9][0-9]$ ]]; then ((end19=end19+1))
        fi
        if [[ $line =~ 20[0-9][0-9]$ ]]; then ((end20=end20+1))
        fi
        if [[ $line =~ ^19[0-9][0-9] ]]; then ((start19=start19+1))
        fi
        if [[ $line =~ ^20[0-9][0-9] ]]; then ((start20=start20+1))
        fi

done

#Output All The Things!

echo There are $count passwords in the list.
echo ******Character Count******
echo 1 \= $char1
echo 2 \= $char2
echo 3 \= $char3
echo 4 \= $char4
echo 5 \= $char5
echo 6 \= $char6
echo 7 \= $char7
echo 8 \= $char8
echo 9 \= $char9
echo 10 \= $char10
echo 11 \= $char11
echo 12 \= $char12
echo 13 \= $char13
echo 14 \= $char14
echo 15 \= $char15
echo 16 \= $char16
echo 17 \= $char17
echo 18 \= $char18
echo 19 \= $char19
echo 20 \= $char20
echo 21 \= $char21
echo 22 \= $char22
echo 23 \= $char23
echo 24 \= $char24
echo 25 \= $char25
echo 26 \= $char26
echo 27 \= $char27
echo 28 \= $char28
echo 29 \= $char29
echo 30 \= $char30
echo 31 \= $char31
echo 32 \= $char32
echo ******Contains Variations Of Common Passwords And SplashData\'s Top 25 - 2016******
echo password \= $con_password
echo login \= $con_login
echo admin \= $con_admin
echo letmein \= $con_letmein
echo 123 \= $con_123
echo 1234 \= $con_1234
echo 12345 \= $con_12345
echo 123456 \= $con_123456
echo 1234567 \= $con_1234567
echo 12345678 \= $con_12345678
echo 123456789 \= $con_123456789
echo 1234567890 \= $con_1234567890
echo qwe \= $con_qwe
echo qwer \= $con_qwer
echo qwert \= $con_qwert
echo qwerty \= $con_qwerty
echo qwertyu \= $con_qwertyu
echo qwertyui \= $con_qwertyui
echo qwertyuio \= $con_qwertyuio
echo qwertyuiop \= $con_qwertyuiop
echo football \= $con_football
echo baseball \= $con_baseball
echo welcome \= $con_welcome
echo abc123 \= $con_abc123
echo 111111 \= $con_111111
echo 1qaz2wsx \= $con_1qaz2wsx
echo dragon \= $con_dragon
echo master \= $con_master
echo monkey \= $con_monkey
echo princess \= $con_princess
echo solo \= $con_solo
echo starwars \= $con_starwars
echo ******Contains A Variation Of A Month Abbreviation******
echo Jan \= $jan
echo Feb \= $feb
echo Mar \= $mar
echo Apr \= $apr
echo May \= $may
echo Jun \= $jun
echo Jul \= $jul
echo Aug \= $aug
echo Sep \= $sep
echo Oct \= $oct
echo Nov \= $nov
echo Dec \= $dec
echo ******Contains A Year******
echo Contains 19?? \= $conyear19
echo Contains 20?? \= $conyear20
echo Year is last 4 characters \(19??\) \= $end19
echo Year is last 4 characters \(20??\) \= $end20
echo Year is first 4 characters \(19??\) \= $start19
echo Year is first 4 characters \(20??\) \= $start20
echo All done!

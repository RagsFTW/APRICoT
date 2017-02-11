#!/bin/bash
#Password Analysis Tool
#Aaron Ragusa
#1-27-2017

input=/home/pi/Scripts/linkedin.txt
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

for line in $input; do
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
	if [[ $line =~ [p][a][s][s] ]]; then ((con_password=con_password+1))
	fi
done

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
echo password \= $con_password

#APRICot - A Password Recon, Integrity, and COmplexity Tool
#Python 3.5.x
#Nick Frichette (deriving previous work of Aaron Ragusa)
#2/24/2017 
import re

#Creating counter and dictionary obj
count = 0
dict = {}

#Instantiating password length counters
for i in range(1,32):
    dict['length'+str(i)] = 0

#Creating Common Word Variables
dict['con_password']=0
dict['con_admin']=0
dict['con_login']=0
dict['con_letmein']=0
dict['con_123']=0
dict['con_1234']=0
dict['con_12345']=0
dict['con_123456']=0
dict['con_1234567']=0
dict['con_12345678']=0
dict['con_123456789']=0
dict['con_1234567890']=0
dict['con_qwe']=0
dict['con_qwer']=0
dict['con_qwert']=0
dict['con_qwerty']=0
dict['con_qwertyu']=0
dict['con_qwertyui']=0
dict['con_qwertyuio']=0
dict['con_qwertyuiop']=0
dict['con_football']=0
dict['con_baseball']=0
dict['con_welcome']=0
dict['con_abc123']=0
dict['con_111111']=0
dict['con_1qaz2wsx']=0
dict['con_dragon']=0
dict['con_master']=0
dict['con_monkey']=0
dict['con_princess']=0
dict['con_solo']=0
dict['con_starwars']=0

#Month Variables
dict['jan']=0
dict['feb']=0
dict['mar']=0
dict['apr']=0
dict['may']=0
dict['jun']=0
dict['jul']=0
dict['aug']=0
dict['sep']=0
dict['oct']=0
dict['nov']=0
dict['dec']=0

#Year Variables
dict['conyear19']=0
dict['conyear20']=0
dict['end19']=0
dict['end20']=0
dict['start19']=0
dict['start20']=0

#Complexity Variables
with open('passwords.lst','r') as file:
    for line in file:
        #This regular expression will remove the \n
        password = re.sub('\n$','',line)
        count += 1
        
        #Get the character count
        dict['length'+str(len(password))] += 1
        
        #Get the Common Words
        if re.search('[Pp][Aa@][Ss5$][Ss5$]',password):
            dict['con_password'] += 1
        if re.search('[Aa@][Dd][Mm][Iil1!|][Nn]',password):
            dict['con_admin'] += 1
        if re.search('[Ll][Oo0][Gg][Iil1!|][Nn]',password):
            dict['con_login'] += 1
        if re.search('[Ll1!|I][Ee3][Tt7][Mm][Ee3][Iil1!|][Nn]',password):
            dict['con_letmein'] += 1
        if re.search('[1][2][3]',password):
            dict['con_123'] += 1
        if re.search('[1][2][3][4]',password):
            dict['con_1234'] += 1
        if re.search('[1][2][3][4][5]',password):
            dict['con_12345'] += 1
        if re.search('[1][2][3][4][5][6]',password):
            dict['con_123456'] += 1
        if re.search('[1][2][3][4][5][6][7]',password):
            dict['con_1234567'] += 1
        if re.search('[1][2][3][4][5][6][7][8]',password):
            dict['con_12345678'] += 1
        if re.search('[1][2][3][4][5][6][7][8][9]',password):
            dict['con_123456789'] += 1
        if re.search('[1][2][3][4][5][6][7][8][9][0]',password):
            dict['con_1234567890'] += 1
        if re.search('[Qq][Ww][Ee3]',password):
            dict['con_qwe'] += 1
        if re.search('[Qq][Ww][Ee3][Rr]',password):
            dict['con_qwer'] += 1
        if re.search('[Qq][Ww][Ee3][Rr][Tt7]',password):
            dict['con_qwert'] += 1
        if re.search('[Qq][Ww][Ee3][Rr][Tt7][Yy]',password):
            dict['con_qwerty'] += 1
        if re.search('[Qq][Ww][Ee3][Rr][Tt7][Yy][Uu]',password):
            dict['con_qwertyu'] += 1
        if re.search('[Qq][Ww][Ee3][Rr][Tt7][Yy][Uu][Iil1!|]',password):
            dict['con_qwertyui'] += 1
        if re.search('[Qq][Ww][Ee3][Rr][Tt7][Yy][Uu][Iil1!|][Oo0]',password):
            dict['con_qwertyuio'] += 1
        if re.search('[Qq][Ww][Ee3][Rr][Tt7][Yy][Uu][Iil1!|][Oo0][Pp]',password):
            dict['con_qwertyuiop'] += 1
        if re.search('[Ff][Oo0][Oo0][Tt7][Bb][Aa@][LlI1!|][LlI1!|]',password):
            dict['con_football'] += 1
        if re.search('[Bb][Aa@][Ss5$][Ee3][Bb][Aa@][LlI1!|][LlI1!|]',password):
            dict['con_baseball'] += 1
        if re.search('[Ww][Ee3][LlI1!|][Cc][Oo0][Mm][Ee3]',password):
            dict['con_welcome'] += 1
        if re.search('[Aa@][Bb][Cc][1][2][3]',password):
            dict['con_abc123'] += 1
        if re.search('[1][1][1][1][1][1]',password):
            dict['con_111111'] += 1
        if re.search('[1][Qq][Aa@][Zz][2][Ww][Ss5$][Xx]',password):
            dict['con_1qaz2wsx'] += 1
        if re.search('Dd][Rr][Aa@][Gg][Oo0][Nn]',password):
            dict['con_dragon'] += 1
        if re.search('[Mm][Aa@][Ss5$][Tt7][Ee3][Rr]',password):
            dict['con_master'] += 1
        if re.search('[Mm][Oo0][Nn][Kk][Ee3][Yy]',password):
            dict['con_monkey'] += 1
        if re.search('[Pp][Rr][Iil1!|][Nn][Cc][Ee3][Ss5$][Ss5$]',password):
            dict['con_princess'] += 1
        if re.search('[Ss5$][Oo0][LlI1!|][Oo0]',password):
            dict['con_solo'] += 1
        if re.search('[Ss5$][Tt7][Aa@][Rr][Ww][Aa@][Rr][Ss5$]',password):
            dict['con_starwars'] += 1
        
        #Months
        if re.search('[Jj][Aa@][Nn]',password):
            dict['jan'] += 1
        if re.search('[Ff][Ee3][Bb]',password):
            dict['feb'] += 1
        if re.search('[Mm][Aa@][Rr]',password):
            dict['mar'] += 1
        if re.search('[Aa@][Pp][Rr]',password):
            dict['apr'] += 1
        if re.search('[Mm][Aa@][Yy]',password):
            dict['may'] += 1
        if re.search('[Jj][Uu][Nn]',password):
            dict['jun'] += 1
        if re.search('[Jj][Uu][Ll1!I|]',password):
            dict['jul'] += 1
        if re.search('[Aa@][Uu][Gg]',password):
            dict['aug'] += 1
        if re.search('[Ss5$][Ee3][Pp]',password):
            dict['sep'] += 1
        if re.search('[Oo0][Cc][Tt7]',password):
            dict['oct'] += 1
        if re.search('[Nn][Oo0][Vv]',password):
            dict['nov'] += 1
        if re.search('[Dd][Ee3][Cc]',password):
            dict['dec'] += 1
            
        #Years
        if re.search('19[0-9][0-9]',password):
            dict['conyear19'] += 1
        if re.search('20[0-9][0-9]',password):
            dict['conyear20'] += 1
        if re.search('19[0-9][0-9]$',password):
            dict['end19'] += 1
        if re.search('20[0-9][0-9]$',password):
            dict['end20'] += 1
        if re.search('^19[0-9][0-9]',password):
            dict['start19'] += 1
        if re.search('^20[0-9][0-9]',password):
            dict['start20'] += 1
        
#Output All The Things

#Count
print('There are', count, 'passwords in the list')

#Character Count
print('******Characater Count******')
for i in range(1,32):
    print(str(i)+':',str(dict['length'+str(i)]))

#Contains Common Passwords
print('******Contains Variations of Common Passwords******')
print('password:',dict['con_password'])
print('login:',dict['con_login'])
print('admin:',dict['con_admin'])
print('letmein:',dict['con_letmein'])
print('123:',dict['con_123'])
print('1234:',dict['con_1234'])
print('12345:',dict['con_12345'])
print('123456:',dict['con_123456'])
print('1234567:',dict['con_1234567'])
print('12345678:',dict['con_12345678'])
print('123456789:',dict['con_123456789'])
print('1234567890:',dict['con_1234567890'])
print('qwe:',dict['con_qwe'])
print('qwer:',dict['con_qwer'])
print('qwert:',dict['con_qwert'])
print('qwerty:',dict['con_qwerty'])
print('qwertyu:',dict['con_qwertyu'])
print('qwertyui:',dict['con_qwertyui'])
print('qwertyuio:',dict['con_qwertyuio'])
print('qwertyuiop:',dict['con_qwertyuiop'])
print('football:',dict['con_football'])
print('baseball:',dict['con_baseball'])
print('welcome:',dict['con_welcome'])
print('abc123:',dict['con_abc123'])
print('111111:',dict['con_111111'])
print('1qaz2wsx:',dict['con_1qaz2wsx'])
print('dragon:',dict['con_dragon'])
print('master:',dict['con_master'])
print('monkey:',dict['con_monkey'])
print('princess:',dict['con_princess'])
print('solo:',dict['con_solo'])
print('starwars:',dict['con_starwars'])

#Contains Month
print('Jan:',dict['jan'])
print('Feb:',dict['feb'])
print('Mar:',dict['mar'])
print('Apr:',dict['apr'])
print('May:',dict['may'])
print('Jun:',dict['jun'])
print('Jul:',dict['jul'])
print('Aug:',dict['aug'])
print('Sep:',dict['sep'])
print('Oct:',dict['oct'])
print('Nov:',dict['nov'])
print('Dec:',dict['dec'])

#Contains a Year
print('Contains 19??:',dict['conyear19'])
print('Contains 20??:',dict['conyear20'])
print('Year 19?? is last:',dict['end19'])
print('Year 20?? is last:',dict['end20'])
print('Year 19??: is first',dict['start19'])
print('Year 20??: is first',dict['start20'])

#Done
print('Done')
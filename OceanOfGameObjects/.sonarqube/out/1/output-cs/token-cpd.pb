±
qC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.DataAccessLayer\DBConfig\Config.cs
	namespace 	
OceanOfGameObjects
 
. 
DataAccessLayer ,
., -
DBConfig- 5
{		 
public

 

class

 
Config

 
:

 
IConfig

 !
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
Config 
( 
IConfiguration $
configuration% 2
)2 3
{ 	
_configuration 
= 
configuration *
;* +
} 	
public 
string 
GetConnection #
(# $
)$ %
{ 	
return 
this 
. 
_configuration &
.& '
GetConnectionString' :
(: ;
$str; N
)N O
;O P
} 	
} 
} ‚
rC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.DataAccessLayer\DBConfig\IConfig.cs
	namespace 	
OceanOfGameObjects
 
. 
DataAccessLayer ,
., -
DBConfig- 5
{ 
public		 

	interface		 
IConfig		 
{

 
public 
string 
GetConnection #
(# $
)$ %
;% &
} 
} µ
ÉC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.DataAccessLayer\Interfaces\IOceanOfGameObjectsDAL.cs
	namespace 	
OceanOfGameObjects
 
. 
DataAccessLayer ,
., -

Interfaces- 7
{		 
public

 

	interface

 "
IOceanOfGameObjectsDAL

 +
{ 
public 
IEnumerable 
< 
GameObjectModel *
>* +
FetchAllItemFromDB, >
(> ?
)? @
;@ A
public 
GameObjectModel 
FetchItemByIDFromDB 2
(2 3
int3 6
id7 9
)9 :
;: ;
GameObjectModel *
FetchItemByIDAndCategoryFromDB 6
(6 7
int7 :
id; =
,= >
string? E
categoryF N
)N O
;O P
GameObjectModel !
FetchItemByNameFromDB -
(- .
string. 4
name5 9
)9 :
;: ;
IEnumerable 
< 
GameObjectModel #
># $%
FetchItemByCategoryFromDB% >
(> ?
string? E
categoryF N
)N O
;O P
IEnumerable 
< 
GameObjectModel #
># $!
FetchItemByTypeFromDB% :
(: ;
string; A
typeB F
)F G
;G H
IEnumerable 
< 
GameObjectModel #
># $!
FetchItemByDateFromDB% :
(: ;
DateTime; C
dateD H
)H I
;I J
} 
} ´
âC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.DataAccessLayer\Interfaces\IOceanOfObjectModelInsertDAL.cs
	namespace 	
OceanOfGameObjects
 
. 
DataAccessLayer ,
{ 
public 

	interface (
IOceanOfObjectModelInsertDAL 1
{ 
public 
void  
InsertSingleItemInDB (
(( )!
GameObjectModelInsert) >
objectModel? J
)J K
;K L
} 
}		 â]
wC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.DataAccessLayer\OceanOfGameObjectsDAL.cs
	namespace 	
OceanOfGameObjects
 
. 
DataAccessLayer ,
{ 
public 

class !
OceanOfGameObjectsDAL &
:' ("
IOceanOfGameObjectsDAL) ?
{ 
private 
readonly 
IConfig  
_config! (
;( )
public !
OceanOfGameObjectsDAL $
($ %
IConfig% ,
config- 3
)3 4
{ 	
_config 
= 
config 
; 
} 	
public 
IEnumerable 
< 
GameObjectModel *
>* +
FetchAllItemFromDB, >
(> ?
)? @
{ 	
List 
< 
GameObjectModel  
>  !
gameObjectModels" 2
=3 4
null5 9
;9 :
using 
( 
SqlConnection  

connection! +
=, -
new. 1
(1 2
this2 6
.6 7
_config7 >
.> ?
GetConnection? L
(L M
)M N
)N O
)O P
{ 

SqlCommand 
cmd 
=  
new! $
($ %
)% &
{ 

Connection 
=  

connection! +
,+ ,
CommandType   
=    !
CommandType  " -
.  - .
Text  . 2
,  2 3
CommandText!! 
=!!  !
$str!!" }
}"" 
;"" 

connection## 
.## 
Open## 
(##  
)##  !
;##! "
SqlDataReader$$ 
reader$$ $
=$$% &
cmd$$' *
.$$* +
ExecuteReader$$+ 8
($$8 9
)$$9 :
;$$: ;
gameObjectModels%%  
=%%! "
new%%# &
List%%' +
<%%+ ,
GameObjectModel%%, ;
>%%; <
(%%< =
)%%= >
;%%> ?
while'' 
('' 
reader'' 
.'' 
Read'' "
(''" #
)''# $
)''$ %
{(( 
gameObjectModels)) $
.))$ %
Add))% (
())( )
new))) ,
GameObjectModel))- <
{** 
Gameid++ 
=++  
reader++! '
.++' (
GetInt32++( 0
(++0 1
$num++1 2
)++2 3
,++3 4
Name,, 
=,, 
reader,, %
.,,% &
	GetString,,& /
(,,/ 0
$num,,0 1
),,1 2
,,,2 3
Category--  
=--! "
reader--# )
.--) *
	GetString--* 3
(--3 4
$num--4 5
)--5 6
,--6 7
Type.. 
=.. 
reader.. %
...% &
	GetString..& /
(../ 0
$num..0 1
)..1 2
,..2 3
Size// 
=// 
reader// %
.//% &
	GetDouble//& /
(/// 0
$num//0 1
)//1 2
,//2 3
URL00 
=00 
reader00 $
.00$ %
	GetString00% .
(00. /
$num00/ 0
)000 1
,001 2
UploadedDate11 $
=11% &
reader11' -
.11- .
GetDateTime11. 9
(119 :
$num11: ;
)11; <
}22 
)22 
;22 
}33 
reader55 
.55 
Close55 
(55 
)55 
;55 

connection66 
.66 
Close66  
(66  !
)66! "
;66" #
}77 
return:: 
gameObjectModels:: #
;::# $
};; 	
public== 
GameObjectModel== 
FetchItemByIDFromDB== 2
(==2 3
int==3 6
id==7 9
)==9 :
{>> 	
GameObjectModel?? 
gameObjectModel?? +
=??, -
null??. 2
;??2 3
usingAA 
(AA 
SqlConnectionAA  

connectionAA! +
=AA, -
newAA. 1
(AA1 2
thisAA2 6
.AA6 7
_configAA7 >
.AA> ?
GetConnectionAA? L
(AAL M
)AAM N
)AAN O
)AAO P
{BB 

SqlCommandCC 
cmdCC 
=CC  
newCC! $
(CC$ %
)CC% &
{DD 

ConnectionEE 
=EE  

connectionEE! +
,EE+ ,
CommandTypeFF 
=FF  !
CommandTypeFF" -
.FF- .
TextFF. 2
,FF2 3
CommandTextGG 
=GG  !
$str	GG" ç
+
GGé è
id
GGê í
}HH 
;HH 

connectionII 
.II 
OpenII 
(II  
)II  !
;II! "
SqlDataReaderJJ 
readerJJ $
=JJ% &
cmdJJ' *
.JJ* +
ExecuteReaderJJ+ 8
(JJ8 9
)JJ9 :
;JJ: ;
whileLL 
(LL 
readerLL 
.LL 
ReadLL "
(LL" #
)LL# $
)LL$ %
{MM 
gameObjectModelNN #
=NN$ %
newNN& )
GameObjectModelNN* 9
{OO 
GameidPP 
=PP  
readerPP! '
.PP' (
GetInt32PP( 0
(PP0 1
$numPP1 2
)PP2 3
,PP3 4
NameQQ 
=QQ 
readerQQ %
.QQ% &
	GetStringQQ& /
(QQ/ 0
$numQQ0 1
)QQ1 2
,QQ2 3
CategoryRR  
=RR! "
readerRR# )
.RR) *
	GetStringRR* 3
(RR3 4
$numRR4 5
)RR5 6
,RR6 7
TypeSS 
=SS 
readerSS %
.SS% &
	GetStringSS& /
(SS/ 0
$numSS0 1
)SS1 2
,SS2 3
SizeTT 
=TT 
readerTT %
.TT% &
	GetDoubleTT& /
(TT/ 0
$numTT0 1
)TT1 2
,TT2 3
URLUU 
=UU 
readerUU $
.UU$ %
	GetStringUU% .
(UU. /
$numUU/ 0
)UU0 1
,UU1 2
UploadedDateVV $
=VV% &
readerVV' -
.VV- .
GetDateTimeVV. 9
(VV9 :
$numVV: ;
)VV; <
}WW 
;WW 
}XX 
readerZZ 
.ZZ 
CloseZZ 
(ZZ 
)ZZ 
;ZZ 

connection[[ 
.[[ 
Close[[  
([[  !
)[[! "
;[[" #
}\\ 
return^^ 
gameObjectModel^^ "
;^^" #
}__ 	
publicaa 
GameObjectModelaa *
FetchItemByIDAndCategoryFromDBaa =
(aa= >
intaa> A
idaaB D
,aaD E
stringaaF L
categoryaaM U
)aaU V
{bb 	
GameObjectModelcc 
gameObjectModelcc +
=cc, -
nullcc. 2
;cc2 3
usingee 
(ee 
SqlConnectionee  

connectionee! +
=ee, -
newee. 1
(ee1 2
thisee2 6
.ee6 7
_configee7 >
.ee> ?
GetConnectionee? L
(eeL M
)eeM N
)eeN O
)eeO P
{ff 

SqlCommandgg 
cmdgg 
=gg  
newgg! $
(gg$ %
)gg% &
{hh 

Connectionii 
=ii  

connectionii! +
,ii+ ,
CommandTypejj 
=jj  !
CommandTypejj" -
.jj- .
Textjj. 2
,jj2 3
CommandTextkk 
=kk  !
$strkk" ~
+	kk Ä
$strll" 4
+ll5 6
idll7 9
+ll: ;
$strll< N
+llO P
$strllQ \
,ll\ ]
}nn 
;nn 
cmdpp 
.pp 

Parameterspp 
.pp 
Addpp "
(pp" #
newpp# &
SqlParameterpp' 3
(pp3 4
$strpp4 ?
,pp? @
	SqlDbTypeppA J
.ppJ K
VarCharppK R
)ppR S
)ppS T
.ppT U
ValueppU Z
=pp[ \
categorypp] e
;ppe f

connectionqq 
.qq 
Openqq 
(qq  
)qq  !
;qq! "
SqlDataReaderrr 
readerrr $
=rr% &
cmdrr' *
.rr* +
ExecuteReaderrr+ 8
(rr8 9
)rr9 :
;rr: ;
whilett 
(tt 
readertt 
.tt 
Readtt "
(tt" #
)tt# $
)tt$ %
{uu 
gameObjectModelvv #
=vv$ %
newvv& )
GameObjectModelvv* 9
{ww 
Gameidxx 
=xx  
readerxx! '
.xx' (
GetInt32xx( 0
(xx0 1
$numxx1 2
)xx2 3
,xx3 4
Nameyy 
=yy 
readeryy %
.yy% &
	GetStringyy& /
(yy/ 0
$numyy0 1
)yy1 2
,yy2 3
Categoryzz  
=zz! "
readerzz# )
.zz) *
	GetStringzz* 3
(zz3 4
$numzz4 5
)zz5 6
,zz6 7
Type{{ 
={{ 
reader{{ %
.{{% &
	GetString{{& /
({{/ 0
$num{{0 1
){{1 2
,{{2 3
Size|| 
=|| 
reader|| %
.||% &
	GetDouble||& /
(||/ 0
$num||0 1
)||1 2
,||2 3
URL}} 
=}} 
reader}} $
.}}$ %
	GetString}}% .
(}}. /
$num}}/ 0
)}}0 1
,}}1 2
UploadedDate~~ $
=~~% &
reader~~' -
.~~- .
GetDateTime~~. 9
(~~9 :
$num~~: ;
)~~; <
} 
; 
}
ÄÄ 
reader
ÇÇ 
.
ÇÇ 
Close
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 

connection
ÉÉ 
.
ÉÉ 
Close
ÉÉ  
(
ÉÉ  !
)
ÉÉ! "
;
ÉÉ" #
}
ÑÑ 
return
ÜÜ 
gameObjectModel
ÜÜ "
;
ÜÜ" #
}
áá 	
public
ââ 
GameObjectModel
ââ #
FetchItemByNameFromDB
ââ 4
(
ââ4 5
string
ââ5 ;
name
ââ< @
)
ââ@ A
{
ää 	
throw
ãã 
new
ãã %
NotImplementedException
ãã -
(
ãã- .
)
ãã. /
;
ãã/ 0
}
åå 	
public
éé 
IEnumerable
éé 
<
éé 
GameObjectModel
éé *
>
éé* +'
FetchItemByCategoryFromDB
éé, E
(
ééE F
string
ééF L
category
ééM U
)
ééU V
{
èè 	
throw
êê 
new
êê %
NotImplementedException
êê -
(
êê- .
)
êê. /
;
êê/ 0
}
ëë 	
public
ìì 
IEnumerable
ìì 
<
ìì 
GameObjectModel
ìì *
>
ìì* +#
FetchItemByTypeFromDB
ìì, A
(
ììA B
string
ììB H
type
ììI M
)
ììM N
{
îî 	
throw
ïï 
new
ïï %
NotImplementedException
ïï -
(
ïï- .
)
ïï. /
;
ïï/ 0
}
ññ 	
public
òò 
IEnumerable
òò 
<
òò 
GameObjectModel
òò *
>
òò* +#
FetchItemByDateFromDB
òò, A
(
òòA B
DateTime
òòB J
date
òòK O
)
òòO P
{
ôô 	
throw
öö 
new
öö %
NotImplementedException
öö -
(
öö- .
)
öö. /
;
öö/ 0
}
õõ 	
}
úú 
}ùù ê
}C:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.DataAccessLayer\OceanOfObjectModelInsertDAL.cs
	namespace 	
OceanOfGameObjects
 
. 
DataAccessLayer ,
{ 
public 

class '
OceanOfObjectModelInsertDAL ,
:- .(
IOceanOfObjectModelInsertDAL/ K
{ 
private 
readonly 
IConfig  
_config! (
;( )
public '
OceanOfObjectModelInsertDAL *
(* +
IConfig+ 2
config3 9
)9 :
{ 	
_config 
= 
config 
; 
} 	
public 
void  
InsertSingleItemInDB (
(( )!
GameObjectModelInsert) >
objectModel? J
)J K
{ 	
using 
( 
SqlConnection  

connection! +
=, -
new. 1
(1 2
_config2 9
.9 :
GetConnection: G
(G H
)H I
)I J
)J K
{ 

SqlCommand 
cmd 
=  
new! $
($ %
)% &
{ 

Connection 
=  

connection! +
,+ ,
CommandType 
=  !
CommandType" -
.- .
Text. 2
,2 3
CommandText 
=  !
$str" }
}   
;   

connection!! 
.!! 
Open!! 
(!!  
)!!  !
;!!! "
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", 3
,""3 4
objectModel""5 @
.""@ A
Name""A E
)""E F
;""F G
cmd## 
.## 

Parameters## 
.## 
AddWithValue## +
(##+ ,
$str##, 7
,##7 8
objectModel##9 D
.##D E
Category##E M
)##M N
;##N O
cmd$$ 
.$$ 

Parameters$$ 
.$$ 
AddWithValue$$ +
($$+ ,
$str$$, 3
,$$3 4
objectModel$$5 @
.$$@ A
Type$$A E
)$$E F
;$$F G
cmd%% 
.%% 

Parameters%% 
.%% 
AddWithValue%% +
(%%+ ,
$str%%, 3
,%%3 4
objectModel%%5 @
.%%@ A
Size%%A E
)%%E F
;%%F G
cmd&& 
.&& 

Parameters&& 
.&& 
AddWithValue&& +
(&&+ ,
$str&&, 2
,&&2 3
objectModel&&4 ?
.&&? @
URL&&@ C
)&&C D
;&&D E
cmd'' 
.'' 

Parameters'' 
.'' 
AddWithValue'' +
(''+ ,
$str'', ;
,''; <
objectModel''= H
.''H I
UploadedDate''I U
)''U V
;''V W
cmd(( 
.(( 
ExecuteNonQuery(( #
(((# $
)(($ %
;((% &

connection)) 
.)) 
Close))  
())  !
)))! "
;))" #
}** 
}++ 	
},, 
}-- 
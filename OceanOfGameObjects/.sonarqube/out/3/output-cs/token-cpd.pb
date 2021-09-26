¹
†C:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Controllers\Interfaces\IOceanOfGameObjectsController.cs
	namespace 	
OceanOfGameObjects
 
. 
Controllers (
{ 
public 

	interface )
IOceanOfGameObjectsController 2
{ 
public 
IEnumerable 
< 
GameObjectModel *
>* +

GetAllItem, 6
(6 7
)7 8
;8 9
public

 
GameObjectModel

 
GetItemById

 *
(

* +
int

+ .
id

/ 1
)

1 2
;

2 3
} 
} ×F
zC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Controllers\OceanOfGameObjectsController.cs
	namespace 	
OceanOfGameObjects
 
. 
Controllers (
{ 
[ 
	Authorize 
] 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class (
OceanOfGameObjectsController -
:. /
ControllerBase0 >
,> ?)
IOceanOfGameObjectsController@ ]
{ 
private 
readonly 
ILogger  
<  !(
OceanOfGameObjectsController! =
>= >
_logger? F
;F G
private 
readonly +
IOceanOfGameObjectBusinessLogic 8+
_oceanOfGameObjectBusinessLogic9 X
;X Y
public (
OceanOfGameObjectsController +
(+ ,
ILogger, 3
<3 4(
OceanOfGameObjectsController4 P
>P Q
loggerR X
,X Y+
IOceanOfGameObjectBusinessLogicZ y+
oceanOfGameObjectBusinessLogic	z ˜
)
˜ ™
{ 	
_logger 
= 
logger 
; +
_oceanOfGameObjectBusinessLogic +
=, -*
oceanOfGameObjectBusinessLogic. L
;L M
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
IEnumerable 
< 
GameObjectModel *
>* +

GetAllItem, 6
(6 7
)7 8
{   	
_logger!! 
.!! 
LogInformation!! "
(!!" #
$str!!# P
)!!P Q
;!!Q R
var"" 
res"" 
="" +
_oceanOfGameObjectBusinessLogic"" 7
.""7 8
GetAllItemFromDB""8 H
(""H I
)""I J
;""J K
_logger## 
.## 
LogInformation## "
(##" #
$str### \
)##\ ]
;##] ^
_logger$$ 
.$$ 
LogInformation$$ "
($$" #
$str$$# =
,$$= >
res$$? B
.$$B C
Count$$C H
($$H I
)$$I J
)$$J K
;$$K L
return%% 
res%% 
;%% 
}&& 	
[)) 	
HttpGet))	 
])) 
[** 	
Route**	 
(** 
$str** !
)**! "
]**" #
public++ 
GameObjectModel++ 
GetItemById++ *
(++* +
[+++ ,
	FromRoute++, 5
]++5 6
int++7 :
id++; =
)++= >
{,, 	
_logger-- 
.-- 
LogInformation-- "
(--" #
$str--# L
)--L M
;--M N
var.. 
res.. 
=.. +
_oceanOfGameObjectBusinessLogic.. 5
...5 6
GetItemByIDFromDB..6 G
(..G H
id..H J
)..J K
;..K L
_logger// 
.// 
LogInformation// "
(//" #
$str//# X
)//X Y
;//Y Z
return00 
res00 
;00 
}11 	
[33 	
HttpGet33	 
]33 
[44 	
Route44	 
(44 
$str44 %
)44% &
]44& '
public55 
GameObjectModel55 
GetItemByName55 ,
(55, -
[55- .
	FromRoute55. 7
]557 8
string559 ?
name55@ D
)55D E
{66 	
_logger77 
.77 
LogInformation77 "
(77" #
$str77# N
)77N O
;77O P
var88 
res88 
=88 +
_oceanOfGameObjectBusinessLogic88 5
.885 6
GetItemByNameFromDB886 I
(88I J
name88J N
)88N O
;88O P
_logger99 
.99 
LogInformation99 "
(99" #
$str99# Z
)99Z [
;99[ \
return:: 
res:: 
;:: 
};; 	
[== 	
HttpGet==	 
]== 
[>> 	
Route>>	 
(>> 
$str>> -
)>>- .
]>>. /
public?? 
IEnumerable?? 
<?? 
GameObjectModel?? *
>??* +"
GetItemByIdAndCategory??, B
(??B C
[??C D
	FromRoute??D M
]??M N
string??O U
category??V ^
)??^ _
{@@ 	
_loggerAA 
.AA 
LogInformationAA "
(AA" #
$strAA# R
)AAR S
;AAS T
varBB 
resBB 
=BB +
_oceanOfGameObjectBusinessLogicBB 5
.BB5 6#
GetItemByCategoryFromDBBB6 M
(BBM N
categoryBBN V
)BBV W
;BBW X
_loggerCC 
.CC 
LogInformationCC "
(CC" #
$strCC# c
)CCc d
;CCd e
_loggerDD 
.DD 
LogInformationDD "
(DD" #
$strDD# =
,DD= >
resDD? B
.DDB C
CountDDC H
(DDH I
)DDI J
)DDJ K
;DDK L
returnEE 
resEE 
;EE 
}FF 	
[HH 	
HttpGetHH	 
]HH 
[II 	
RouteII	 
(II 
$strII %
)II% &
]II& '
publicJJ 
IEnumerableJJ 
<JJ 
GameObjectModelJJ *
>JJ* +
GetItemByTypeJJ, 9
(JJ9 :
[JJ: ;
	FromRouteJJ; D
]JJD E
stringJJF L
typeJJM Q
)JJQ R
{KK 	
_loggerLL 
.LL 
LogInformationLL "
(LL" #
$strLL# N
)LLN O
;LLO P
varMM 
resMM 
=MM +
_oceanOfGameObjectBusinessLogicMM 5
.MM5 6
GetItemByTypeFromDBMM6 I
(MMI J
typeMMJ N
)MMN O
;MMO P
_loggerNN 
.NN 
LogInformationNN "
(NN" #
$strNN# _
)NN_ `
;NN` a
_loggerOO 
.OO 
LogInformationOO "
(OO" #
$strOO# =
,OO= >
resOO? B
.OOB C
CountOOC H
(OOH I
)OOI J
)OOJ K
;OOK L
returnPP 
resPP 
;PP 
}QQ 	
[SS 	
HttpGetSS	 
]SS 
[TT 	
RouteTT	 
(TT 
$strTT %
)TT% &
]TT& '
publicUU 
IEnumerableUU 
<UU 
GameObjectModelUU *
>UU* +
GetItemByDateUU, 9
(UU9 :
[UU: ;
	FromRouteUU; D
]UUD E
DateTimeUUF N
dateUUO S
)UUS T
{VV 	
_loggerWW 
.WW 
LogInformationWW "
(WW" #
$strWW# N
)WWN O
;WWO P
varXX 
resXX 
=XX +
_oceanOfGameObjectBusinessLogicXX 5
.XX5 6
GetItemByDateFromDBXX6 I
(XXI J
dateXXJ N
)XXN O
;XXO P
_loggerYY 
.YY 
LogInformationYY "
(YY" #
$strYY# _
)YY_ `
;YY` a
_loggerZZ 
.ZZ 
LogInformationZZ "
(ZZ" #
$strZZ# =
,ZZ= >
resZZ? B
.ZZB C
CountZZC H
(ZZH I
)ZZI J
)ZZJ K
;ZZK L
return[[ 
res[[ 
;[[ 
}\\ 	
[^^ 	
HttpGet^^	 
]^^ 
[__ 	
Route__	 
(__ 
$str__ 
)__  
]__  !
public`` 
IEnumerable`` 
<`` 
GameObjectModel`` *
>``* +
GetLatestItem``, 9
(``9 :
)``: ;
{aa 	
_loggerbb 
.bb 
LogInformationbb "
(bb" #
$strbb# O
)bbO P
;bbP Q
varcc 
rescc 
=cc +
_oceanOfGameObjectBusinessLogiccc 5
.cc5 6
GetItemByDateFromDBcc6 I
(ccI J
DateTimeccJ R
.ccR S
NowccS V
.ccV W
AddDaysccW ^
(cc^ _
-cc_ `
$numcc` a
)cca b
)ccb c
;ccc d
_loggerdd 
.dd 
LogInformationdd "
(dd" #
$strdd# `
)dd` a
;dda b
_loggeree 
.ee 
LogInformationee "
(ee" #
$stree# =
,ee= >
resee? B
.eeB C
CounteeC H
(eeH I
)eeI J
)eeJ K
;eeK L
returnff 
resff 
;ff 
}gg 	
}ii 
}jj ë
€C:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Controllers\OceanOfGameObjectsDeleteController.cs
	namespace 	
OceanOfGameObjects
 
. 
Controllers (
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class .
"OceanOfGameObjectsDeleteController 3
:3 4
ControllerBase5 C
{ 
private 
readonly +
IOceanOfGameObjectBusinessLogic 8+
_oceanOfGameObjectBusinessLogic9 X
;X Y
public .
"OceanOfGameObjectsDeleteController 1
(1 2+
IOceanOfGameObjectBusinessLogic2 Q*
oceanOfGameObjectBusinessLogicR p
)p q
{ 	+
_oceanOfGameObjectBusinessLogic +
=, -*
oceanOfGameObjectBusinessLogic. L
;L M
} 	
[ 	

HttpDelete	 
] 
[ 	
Route	 
( 
$str $
)$ %
]% &
public 
IActionResult 
DeleteByName )
() *
[* +
	FromRoute+ 4
]4 5
string6 <
name= A
)A B
{ 	+
_oceanOfGameObjectBusinessLogic +
.+ ,

InsertItem, 6
(6 7
null7 ;
); <
;< =
return 
Ok 
( 
) 
; 
} 	
[!! 	

HttpDelete!!	 
]!! 
["" 	
Route""	 
("" 
$str"" ,
)"", -
]""- .
public## 
IActionResult## 
DeleteByCategory## -
(##- .
[##. /
	FromRoute##/ 8
]##8 9
string##: @
category##A I
)##I J
{$$ 	+
_oceanOfGameObjectBusinessLogic&& +
.&&+ ,

InsertItem&&, 6
(&&6 7
null&&7 ;
)&&; <
;&&< =
return(( 
Ok(( 
((( 
)(( 
;(( 
})) 	
[,, 	

HttpDelete,,	 
],, 
[-- 	
Route--	 
(-- 
$str-- 
)-- 
]-- 
public.. 
void.. 
DeleteAllItems.. "
(.." #
)..# $
{// 	
}11 	
}22 
}33 ¹
€C:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Controllers\OceanOfGameObjectsInsertController.cs
	namespace 	
OceanOfGameObjects
 
. 
Controllers (
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class .
"OceanOfGameObjectsInsertController 3
:4 5
ControllerBase6 D
{ 
private 
readonly +
IOceanOfGameObjectBusinessLogic 8+
_oceanOfGameObjectBusinessLogic9 X
;X Y
public .
"OceanOfGameObjectsInsertController 1
(1 2+
IOceanOfGameObjectBusinessLogic2 Q*
oceanOfGameObjectBusinessLogicR p
)p q
{ 	+
_oceanOfGameObjectBusinessLogic +
=, -*
oceanOfGameObjectBusinessLogic. L
;L M
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
IActionResult 
InsertOneItem *
(* +
[+ ,
FromBody, 4
]4 5!
GameObjectModelInsert6 K
objectModelL W
)W X
{ 	+
_oceanOfGameObjectBusinessLogic +
.+ ,

InsertItem, 6
(6 7
objectModel7 B
)B C
;C D
return 
Ok 
( 
) 
; 
} 	
[!! 	
HttpPost!!	 
]!! 
["" 	
Route""	 
("" 
$str"" 
)""  
]""  !
public## 
void## 
InsertMultipleItem## &
(##& '
[##' (
FromBody##( 0
]##0 1
List##2 6
<##6 7
GameObjectModel##7 F
>##F G
objectModelList##H W
)##W X
{$$ 	
throw%% 
new%% #
NotImplementedException%% -
(%%- .
)%%. /
;%%/ 0
}&& 	
}'' 
}(( Å
€C:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Controllers\OceanOfGameObjectsUpdateController.cs
	namespace

 	
OceanOfGameObjects


 
.

 
Controllers

 (
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class .
"OceanOfGameObjectsUpdateController 3
:3 4
ControllerBase5 C
{ 
private 
readonly +
IOceanOfGameObjectBusinessLogic 8+
_oceanOfGameObjectBusinessLogic9 X
;X Y
public .
"OceanOfGameObjectsUpdateController 1
(1 2+
IOceanOfGameObjectBusinessLogic2 Q*
oceanOfGameObjectBusinessLogicR p
)p q
{ 	+
_oceanOfGameObjectBusinessLogic +
=, -*
oceanOfGameObjectBusinessLogic. L
;L M
} 	
[ 	
	HttpPatch	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
IActionResult 
UpdateOneItem *
(* +
[+ ,
FromBody, 4
]4 5!
GameObjectModelInsert6 K
objectModelL W
)W X
{ 	+
_oceanOfGameObjectBusinessLogic +
.+ ,

InsertItem, 6
(6 7
objectModel7 B
)B C
;C D
return 
Ok 
( 
) 
; 
} 	
[   	
	HttpPatch  	 
]   
[!! 	
Route!!	 
(!! 
$str!! 
)!!  
]!!  !
public"" 
void"" 
UpdateMultipleItem"" &
(""& '
[""' (
FromBody""( 0
]""0 1
List""2 6
<""6 7
GameObjectModel""7 F
>""F G
objectModelList""H W
)""W X
{## 	
}%% 	
}&& 
}'' 
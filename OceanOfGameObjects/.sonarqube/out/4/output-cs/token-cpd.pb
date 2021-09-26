∏
yC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects\Extention\ExceptionMiddlewareExtensions.cs
	namespace 	
OceanOfGameObjects
 
. 
Middlewares (
.( ) 
ExceptionMiddlewares) =
{ 
public		 

static		 
class		 )
ExceptionMiddlewareExtensions		 5
{

 
public 
static 
void .
"ConfigureCustomExceptionMiddleware =
(= >
this> B
IApplicationBuilderC V
appW Z
)Z [
{ 	
app 
. 
UseMiddleware 
< 
ExceptionMiddleware 1
>1 2
(2 3
)3 4
;4 5
} 	
} 
} Ê
qC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects\Middlewares\ExceptionMiddleware.cs
	namespace 	
OceanOfGameObjects
 
. 
Middlewares (
.( ) 
ExceptionMiddlewares) =
{ 
public 

class 
ExceptionMiddleware $
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
private 
readonly 
ILogger  
<  !(
OceanOfGameObjectsController! =
>= >
_logger? F
;F G
public 
ExceptionMiddleware "
(" #
RequestDelegate# 2
next3 7
,7 8
ILogger9 @
<@ A(
OceanOfGameObjectsControllerA ]
>] ^
logger_ e
)e f
{ 	
_logger 
= 
logger 
; 
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
httpContext2 =
)= >
{ 	
try 
{ 
await 
_next 
( 
httpContext '
)' (
;( )
} 
catch 
( 
	Exception 
ex 
)  
{ 
_logger   
.   
LogError    
(    !
$"  ! #
$str  # 9
{  9 :
ex  : <
}  < =
"  = >
)  > ?
;  ? @
await!!  
HandleExceptionAsync!! *
(!!* +
httpContext!!+ 6
,!!6 7
ex!!8 :
)!!: ;
;!!; <
}"" 
}## 	
private%% 
async%% 
Task%%  
HandleExceptionAsync%% /
(%%/ 0
HttpContext%%0 ;
context%%< C
,%%C D
	Exception%%E N
	exception%%O X
)%%X Y
{&& 	
context'' 
.'' 
Response'' 
.'' 
ContentType'' (
='') *
$str''+ =
;''= >
context(( 
.(( 
Response(( 
.(( 

StatusCode(( '
=((( )
Constant((+ 3
.((3 4
UNKNOWN_ERROR((4 A
;((A B
var** 
message** 
=** 
	exception** #
switch**$ *
{++ $
AccessViolationException,, (
=>,,) +
Constant,,, 4
.,,4 5
ACCESS_VOILATION,,5 E
,,,E F#
NotImplementedException-- '
=>--( *
Constant--+ 3
.--3 4
NOT_IMPLEMENTATION--4 F
,--F G
_.. 
=>.. 
Constant.. 
... !
INTERNAL_SERVER_ERROR.. 3
}// 
;// 
await11 
context11 
.11 
Response11 "
.11" #

WriteAsync11# -
(11- .
new11. 1
ErrorDetails112 >
(11> ?
)11? @
{22 

StatusCode33 
=33 
context33 $
.33$ %
Response33% -
.33- .

StatusCode33. 8
,338 9
Message44 
=44 
message44 !
}55 
.55 
ToString55 
(55 
)55 
)55 
;55 
}66 	
}77 
}88 ö8
YC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects\Program.cs
	namespace

 	
OceanOfGameObjects


 
{ 
public 

class 
Program 
{ 
public 
static	 
void 
Main 
( 
string  
[  !
]! "
args# '
)' (
{ 	
ConfigureLogging 
( 
) 
; 

CreateHost 
( 
args 
) 
; 
} 
private 	
static
 
void 

CreateHost  
(  !
string! '
[' (
]( )
args* .
). /
{ 
try 
{ 
CreateHostBuilder 
( 
args 
) 
. 
Build !
(! "
)" #
.# $
Run$ '
(' (
)( )
;) *
} 
catch 
(	 

System
 
. 
	Exception 
ex 
) 
{ 
Log 
. 
Fatal 
( 
$" 
$str  
{  !
Assembly! )
.) * 
GetExecutingAssembly* >
(> ?
)? @
.@ A
GetNameA H
(H I
)I J
.J K
NameK O
}O P
"P Q
,Q R
exS U
)U V
;V W
throw 	
;	 

} 
}   
public"" 
static""	 
IHostBuilder"" 
CreateHostBuilder"" .
("". /
string""/ 5
[""5 6
]""6 7
args""8 <
)""< =
=>""> @
Host## 
.##  
CreateDefaultBuilder## 
(## 
args## !
)##! "
.$$ $
ConfigureWebHostDefaults$$ 
($$ 

webBuilder$$ (
=>$$) +
{%% 

webBuilder&& 
.&& 

UseStartup&& 
<&& 
Startup&& "
>&&" #
(&&# $
)&&$ %
;&&% &
}'' 
)'' 
.(( %
ConfigureAppConfiguration(( 
((( 
configuration(( ,
=>((- /
{)) 
configuration** 
.** 
AddJsonFile** 
(** 
$str** 1
,**1 2
optional**3 ;
:**; <
false**= B
,**B C
reloadOnChange**D R
:**R S
true**T X
)**X Y
;**Y Z
configuration++ 
.++ 
AddJsonFile++ 
(++ 
$",, 
$str,, 
{,, 
Environment,,  
.,,  !"
GetEnvironmentVariable,,! 7
(,,7 8
$str,,8 P
),,P Q
},,Q R
$str,,R W
",,W X
,,,X Y
optional-- 
:-- 
true-- 
)-- 
;-- 
}.. 
).. 
.// 

UseSerilog// 
(// 
)// 
;// 
private11 	
static11
 
void11 
ConfigureLogging11 &
(11& '
)11' (
{22 
var33 
environment33 
=33 
Environment33  
.33  !"
GetEnvironmentVariable33! 7
(337 8
$str338 P
)33P Q
;33Q R
var44 
configuration44 
=44 
new44  
ConfigurationBuilder44 /
(44/ 0
)440 1
.55 
AddJsonFile55 
(55 
$str55 #
,55# $
optional55% -
:55- .
false55/ 4
,554 5
reloadOnChange556 D
:55D E
true55F J
)55J K
.66 
AddJsonFile66 
(66 
$"77 
$str77 
{77 
Environment77 
.77  "
GetEnvironmentVariable77  6
(776 7
$str777 O
)77O P
}77P Q
$str77Q V
"77V W
,77W X
optional88 
:88 
true88 
)88 
.99 
Build99 

(99
 
)99 
;99 
Log;; 
.;; 
Logger;; 
=;; 
new;; 
LoggerConfiguration;; '
(;;' (
);;( )
.<< 
Enrich<< 
.<< 
FromLogContext<< 
(<< 
)<< 
.== 
Enrich== 
.== 
WithMachineName== 
(== 
)== 
.>> 
WriteTo>> 
.>> 
Debug>> 
(>> 
)>> 
.?? 
WriteTo?? 
.?? 
Console?? 
(?? 
)?? 
.@@ 
WriteTo@@ 
.@@ 
Elasticsearch@@ 
(@@  
ConfigureElasticSink@@ /
(@@/ 0
configuration@@0 =
,@@= >
environment@@? J
)@@J K
)@@K L
.AA 
EnrichAA 
.AA 
WithPropertyAA 
(AA 
$strAA &
,AA& '
environmentAA( 3
)AA3 4
.BB 
ReadFromBB 
.BB 
ConfigurationBB 
(BB 
configurationBB )
)BB) *
.CC 
CreateLoggerCC 
(CC 
)CC 
;CC 
}EE 
privateGG 	
staticGG
 $
ElasticsearchSinkOptionsGG ) 
ConfigureElasticSinkGG* >
(GG> ?
IConfigurationRootGG? Q
configurationGGR _
,GG_ `
stringGGa g
environmentGGh s
)GGs t
{HH 
returnII 	
newII
 $
ElasticsearchSinkOptionsII &
(II& '
newII' *
UriII+ .
(II. /
configurationII/ <
[II< =
$strII= W
]IIW X
)IIX Y
)IIY Z
{JJ  
AutoRegisterTemplateKK 
=KK 
trueKK 
,KK  
IndexFormatLL 
=LL 
$"LL 
{LL 
AssemblyLL 
.LL  
GetExecutingAssemblyLL 2
(LL2 3
)LL3 4
.LL4 5
GetNameLL5 <
(LL< =
)LL= >
.LL> ?
NameLL? C
.LLC D
ToLowerLLD K
(LLK L
)LLL M
.LLM N
ReplaceLLN U
(LLU V
$strLLV Y
,LLY Z
$strLL[ ^
)LL^ _
}LL_ `
$strLL` a
{LLa b
environmentLLb m
?LLm n
.LLn o
ToLowerLLo v
(LLv w
)LLw x
.LLx y
Replace	LLy Ä
(
LLÄ Å
$str
LLÅ Ñ
,
LLÑ Ö
$str
LLÜ â
)
LLâ ä
}
LLä ã
$str
LLã å
{
LLå ç
DateTime
LLç ï
.
LLï ñ
UtcNow
LLñ ú
:
LLú ù
$str
LLù §
}
LL§ •
"
LL• ¶
}MM 
;MM 
}NN 
}OO 
}PP ±8
YC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects\Startup.cs
	namespace 	
OceanOfGameObjects
 
{ 
public 

class 
Startup 
{   
public!! 
Startup!! 
(!! 
IConfiguration!! %
configuration!!& 3
)!!3 4
{"" 	
Configuration## 
=## 
configuration## )
;##) *
}$$ 	
public&& 
IConfiguration&& 
Configuration&& +
{&&, -
get&&. 1
;&&1 2
}&&3 4
public)) 
void)) 
ConfigureServices)) %
())% &
IServiceCollection))& 8
services))9 A
)))A B
{** 	
ServicePointManager,, 
.,,  
SecurityProtocol,,  0
=,,1 2 
SecurityProtocolType,,3 G
.,,G H
Tls12,,H M
;,,M N$
IdentityModelEventSource-- $
.--$ %
ShowPII--% ,
=--- .
true--/ 3
;--3 4
services.. 
... 
AddTransient.. !
<..! "+
IOceanOfGameObjectBusinessLogic.." A
,..A B*
OceanOfGameObjectBusinessLogic..C a
>..a b
(..b c
)..c d
;..d e
services// 
.// 
AddTransient// !
<//! ""
IOceanOfGameObjectsDAL//" 8
,//8 9!
OceanOfGameObjectsDAL//: O
>//O P
(//P Q
)//Q R
;//R S
services00 
.00 
AddSingleton00 !
<00! "
IConfig00" )
,00) *
Config00+ 1
>001 2
(002 3
)003 4
;004 5
services11 
.11 
AddTransient11 !
<11! "(
IOceanOfObjectModelInsertDAL11" >
,11> ?'
OceanOfObjectModelInsertDAL11@ [
>11[ \
(11\ ]
)11] ^
;11^ _
services22 
.22 
AddControllers22 #
(22# $
)22$ %
;22% &
services44 
.44 
AddAuthentication44 &
(44& '
JwtBearerDefaults44' 8
.448 9 
AuthenticationScheme449 M
)44M N
.55 &
AddMicrosoftIdentityWebApi55 +
(55+ ,
Configuration55, 9
,559 :
$str55; D
)55D E
;55E F
services66 
.66 
AddSwaggerGen66 "
(66" #
c66# $
=>66% '
{77 
c88 
.88 

SwaggerDoc88 
(88 
$str88 !
,88! "
new88# &
OpenApiInfo88' 2
{883 4
Title885 :
=88; <
$str88= Q
,88Q R
Version88S Z
=88[ \
$str88] a
,88a b
}88c d
)88d e
;88e f
c:: 
.:: !
AddSecurityDefinition:: '
(::' (
$str::( 0
,::0 1
new::2 5!
OpenApiSecurityScheme::6 K
{;; 
Type<< 
=<< 
SecuritySchemeType<< -
.<<- .
OAuth2<<. 4
,<<4 5
Flows== 
=== 
new== 
OpenApiOAuthFlows==  1
(==1 2
)==2 3
{>> 
Implicit??  
=??! "
new??# &
OpenApiOAuthFlow??' 7
(??7 8
)??8 9
{@@ 
AuthorizationUrlAA ,
=AA- .
newAA/ 2
UriAA3 6
(AA6 7
$str	AA7 ï
)
AAï ñ
,
AAñ ó
TokenUrlBB $
=BB% &
newBB' *
UriBB+ .
(BB. /
$str	BB/ â
)
BBâ ä
,
BBä ã
ScopesCC "
=CC# $
newCC% (

DictionaryCC) 3
<CC3 4
stringCC4 :
,CC: ;
stringCC< B
>CCB C
{CCD E
{DD 
$"EE 
$strEE W
"EEW X
,EEX Y
$strFF ,
}GG 
}JJ 
}KK 
}LL 
}MM 
)MM 
;MM 
cNN 
.NN "
AddSecurityRequirementNN (
(NN( )
newNN) ,&
OpenApiSecurityRequirementNN- G
(NNG H
)NNH I
{NNJ K
{OO 
newPP !
OpenApiSecuritySchemePP -
{PP. /
	ReferenceQQ !
=QQ" #
newQQ$ '
OpenApiReferenceQQ( 8
{QQ9 :
TypeRR  $
=RR% &
ReferenceTypeRR' 4
.RR4 5
SecuritySchemeRR5 C
,RRC D
IdSS$ &
=SS' (
$strSS) 1
}TT 
,TT 
SchemeUU "
=UU# $
$strUU% -
,UU- .
NameVV  
=VV! "
$strVV# +
,VV+ ,
InWW 
=WW  
ParameterLocationWW! 2
.WW2 3
HeaderWW3 9
}XX 
,XX 
newYY 
ListYY 
<YY 
stringYY %
>YY& '
(YY( )
)YY) *
}ZZ 
}[[ 
)[[ 
;[[ 
}\\ 
)\\ 
;\\ 
}__ 	
publicbb 
voidbb 
	Configurebb 
(bb 
IApplicationBuilderbb 1
appbb2 5
,bb5 6
IWebHostEnvironmentbb7 J
envbbK N
)bbN O
{cc 	
ifff 
(ff 
envff 
.ff 
IsDevelopmentff !
(ff! "
)ff" #
)ff# $
{gg 
apphh 
.hh %
UseDeveloperExceptionPagehh -
(hh- .
)hh. /
;hh/ 0
appii 
.ii 

UseSwaggerii 
(ii 
)ii  
;ii  !
appjj 
.jj 
UseSwaggerUIjj  
(jj  !
cjj! "
=>jj# %
{kk 
cll 
.ll 
SwaggerEndpointll %
(ll% &
$strll& @
,ll@ A
$strllB Y
)llY Z
;llZ [
cmm 
.mm 
OAuthClientIdmm #
(mm# $
$strmm$ J
)mmJ K
;mmK L
cnn 
.nn :
.OAuthUseBasicAuthenticationWithAccessCodeGrantnn D
(nnD E
)nnE F
;nnF G
}oo 
)pp 
;pp 
}rr 
apptt 
.tt .
"ConfigureCustomExceptionMiddlewarett 2
(tt2 3
)tt3 4
;tt4 5
appvv 
.vv 
UseHttpsRedirectionvv #
(vv# $
)vv$ %
;vv% &
appxx 
.xx 

UseRoutingxx 
(xx 
)xx 
;xx 
appyy 
.yy 
UseAuthenticationyy !
(yy! "
)yy" #
;yy# $
appzz 
.zz 
UseAuthorizationzz  
(zz  !
)zz! "
;zz" #
app|| 
.|| 
UseEndpoints|| 
(|| 
	endpoints|| &
=>||' )
{}} 
	endpoints~~ 
.~~ 
MapControllers~~ (
(~~( )
)~~) *
;~~* +
} 
) 
; 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ 
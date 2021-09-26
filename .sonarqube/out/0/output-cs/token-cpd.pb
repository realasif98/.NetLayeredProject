ë
`C:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Model\Constant.cs
	namespace 	
OceanOfGameObjects
 
. 
Model "
{ 
public		 

static		 
class		 
Constant		  
{

 
public 
const 
string 
MinDateTime '
=( )
$str* 6
;6 7
public 
const 
int 
UNKNOWN_ERROR &
=' (
$num) ,
;, -
public 
const 
string 
ACCESS_VOILATION ,
=- .
$str/ b
;b c
public 
const 
string 
NOT_IMPLEMENTATION .
=/ 0
$str1 S
;S T
public 
const 
string !
INTERNAL_SERVER_ERROR 1
=2 3
$str4 g
;g h
} 
} ¸
pC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Model\CustomDatetimeValidation.cs
	namespace 	
OceanOfGameObjects
 
. 
Model "
{		 
public

 

class

 $
CustomDatetimeValidation

 )
:

* +
ValidationAttribute

, ?
{ 
public 
DateTime 
MinDatetime #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
Maximum 
{ 
get  
;  !
set" %
;% &
}' (
public $
CustomDatetimeValidation '
(' (
)( )
{ 	
this 
. 
MinDatetime 
= 
new "
DateTime# +
(+ ,
$num, 0
,0 1
$num2 3
,3 4
$num5 6
)6 7
;7 8
} 	
public 
override 
bool 
IsValid $
($ %
object% +
value, 1
)1 2
{ 	
DateTime 
dt 
= 
( 
DateTime #
)# $
value$ )
;) *
return 
dt 
> 
MinDatetime #
;# $
} 	
} 
} ‘
dC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Model\ErrorDetails.cs
	namespace 	
OceanOfGameObjects
 
. 
Model "
{		 
public

 

class

 
ErrorDetails

 
{ 
public 
int 

StatusCode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
override 
string 
ToString '
(' (
)( )
{ 	
return 
JsonSerializer !
.! "
	Serialize" +
(+ ,
this, 0
)0 1
;1 2
} 	
} 
} Œ
nC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Model\Models\GameObjectModel.cs
	namespace 	
OceanOfGameObjects
 
. 
Model "
{		 
public

 

class

 
GameObjectModel

  
:

! "!
GameObjectModelInsert

# 8
{ 
public 
int 
Gameid 
{ 
get 
;  
set! $
;$ %
}& '
} 
} Ž
tC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.Model\Models\GameObjectModelInsert.cs
	namespace 	
OceanOfGameObjects
 
. 
Model "
{		 
public

 

class

 !
GameObjectModelInsert

 &
{ 
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
Category 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
double 
Size 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
URL 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Required	 
] 
[ 	$
CustomDatetimeValidation	 !
(! "
ErrorMessage" .
=/ 0
$str1 ^
+_ `
Constanta i
.i j
MinDateTimej u
)u v
]v w
public 
DateTime 
UploadedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} 
°
äC:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.BusinessLogic\Interfaces\IOceanOfGameObjectBusinessLogic.cs
	namespace 	
OceanOfGameObjects
 
. 
BusinessLogic *
{		 
public

 

	interface

 +
IOceanOfGameObjectBusinessLogic

 4
{ 
public 
IEnumerable 
< 
GameObjectModel *
>* +
GetAllItemFromDB, <
(< =
)= >
;> ?
public 
GameObjectModel 
GetItemByIDFromDB 0
(0 1
int1 4
id5 7
)7 8
;8 9
GameObjectModel (
GetItemByIDAndCategoryFromDB 4
(4 5
int5 8
id9 ;
,; <
string= C
categoryD L
)L M
;M N
void 

InsertItem 
( !
GameObjectModelInsert -
objectModel. 9
)9 :
;: ;
GameObjectModel 
GetItemByNameFromDB +
(+ ,
string, 2
name3 7
)7 8
;8 9
IEnumerable 
< 
GameObjectModel #
># $#
GetItemByCategoryFromDB% <
(< =
string= C
categoryD L
)L M
;M N
IEnumerable 
< 
GameObjectModel #
># $
GetItemByTypeFromDB% 8
(8 9
string9 ?
type@ D
)D E
;E F
IEnumerable 
< 
GameObjectModel #
># $
GetItemByDateFromDB% 8
(8 9
DateTime9 A
dateB F
)F G
;G H
} 
} › 
~C:\Users\mohammadasif\Documents\Projects\OceanOfGameObjects\OceanOfGameObjects.BusinessLogic\OceanOfGameObjectBusinessLogic.cs
	namespace

 	
OceanOfGameObjects


 
.

 
BusinessLogic

 *
{ 
public 

class *
OceanOfGameObjectBusinessLogic /
:0 1+
IOceanOfGameObjectBusinessLogic2 Q
{ 
private 
readonly "
IOceanOfGameObjectsDAL /"
_oceanOfGameObjectsDAL0 F
;F G
private 
readonly (
IOceanOfObjectModelInsertDAL 5!
_objectModelInsertDAL6 K
;K L
public *
OceanOfGameObjectBusinessLogic -
(- ."
IOceanOfGameObjectsDAL. D!
oceanOfGameObjectsDALE Z
,Z [(
IOceanOfObjectModelInsertDAL\ x!
objectModelInsertDAL	y ç
)
ç é
{ 	"
_oceanOfGameObjectsDAL "
=# $!
oceanOfGameObjectsDAL% :
;: ;!
_objectModelInsertDAL !
=" # 
objectModelInsertDAL$ 8
;8 9
} 	
public 
IEnumerable 
< 
GameObjectModel *
>* +
GetAllItemFromDB, <
(< =
)= >
{ 	
return "
_oceanOfGameObjectsDAL )
.) *
FetchAllItemFromDB* <
(< =
)= >
;> ?
} 	
public 
GameObjectModel 
GetItemByIDFromDB 0
(0 1
int1 4
id5 7
)7 8
{ 	
return "
_oceanOfGameObjectsDAL )
.) *
FetchItemByIDFromDB* =
(= >
id> @
)@ A
;A B
}   	
public"" 
GameObjectModel"" (
GetItemByIDAndCategoryFromDB"" ;
(""; <
int""< ?
id""@ B
,""B C
string""D J
category""K S
)""S T
{## 	
return$$ "
_oceanOfGameObjectsDAL$$ )
.$$) **
FetchItemByIDAndCategoryFromDB$$* H
($$H I
id$$I K
,$$K L
category$$M U
)$$U V
;$$V W
}%% 	
public'' 
GameObjectModel'' 
GetItemByNameFromDB'' 2
(''2 3
string''3 9
name'': >
)''> ?
{(( 	
return)) "
_oceanOfGameObjectsDAL)) )
.))) *!
FetchItemByNameFromDB))* ?
())? @
name))@ D
)))D E
;))E F
}** 	
public,, 
IEnumerable,, 
<,, 
GameObjectModel,, *
>,,* +#
GetItemByCategoryFromDB,,, C
(,,C D
string,,D J
category,,K S
),,S T
{-- 	
return.. "
_oceanOfGameObjectsDAL.. )
...) *%
FetchItemByCategoryFromDB..* C
(..C D
category..D L
)..L M
;..M N
}// 	
public11 
IEnumerable11 
<11 
GameObjectModel11 *
>11* +
GetItemByTypeFromDB11, ?
(11? @
string11@ F
type11G K
)11K L
{22 	
return33 "
_oceanOfGameObjectsDAL33 )
.33) *!
FetchItemByTypeFromDB33* ?
(33? @
type33@ D
)33D E
;33E F
}44 	
public66 
IEnumerable66 
<66 
GameObjectModel66 *
>66* +
GetItemByDateFromDB66, ?
(66? @
DateTime66@ H
date66I M
)66M N
{77 	
return88 "
_oceanOfGameObjectsDAL88 )
.88) *!
FetchItemByDateFromDB88* ?
(88? @
date88@ D
)88D E
;88E F
}99 	
public== 
void== 

InsertItem== 
(== !
GameObjectModelInsert== 4
objectModel==5 @
)==@ A
{>> 	
throw?? 
new?? #
NotImplementedException?? -
(??- .
)??. /
;??/ 0
}@@ 	
}AA 
}BB 
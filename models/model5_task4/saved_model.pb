 Á

Ç
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
®
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Á
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.22v2.9.1-132-g18960c44ad38	

Adam/ecc_conv_1/FGN_out/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/ecc_conv_1/FGN_out/bias/v

2Adam/ecc_conv_1/FGN_out/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_out/bias/v*
_output_shapes	
:*
dtype0

 Adam/ecc_conv_1/FGN_out/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/ecc_conv_1/FGN_out/kernel/v

4Adam/ecc_conv_1/FGN_out/kernel/v/Read/ReadVariableOpReadVariableOp Adam/ecc_conv_1/FGN_out/kernel/v*
_output_shapes
:	*
dtype0

Adam/ecc_conv/FGN_out/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv/FGN_out/bias/v

0Adam/ecc_conv/FGN_out/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_out/bias/v*
_output_shapes	
: *
dtype0

Adam/ecc_conv/FGN_out/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 */
shared_name Adam/ecc_conv/FGN_out/kernel/v

2Adam/ecc_conv/FGN_out/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_out/kernel/v*
_output_shapes
:	 *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

: *
dtype0

Adam/ecc_conv_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/ecc_conv_1/bias/v
}
*Adam/ecc_conv_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/bias/v*
_output_shapes
: *
dtype0

Adam/ecc_conv_1/root_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *.
shared_nameAdam/ecc_conv_1/root_kernel/v

1Adam/ecc_conv_1/root_kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/root_kernel/v*
_output_shapes

:  *
dtype0

Adam/ecc_conv/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/ecc_conv/bias/v
y
(Adam/ecc_conv/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/bias/v*
_output_shapes
: *
dtype0

Adam/ecc_conv/root_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_nameAdam/ecc_conv/root_kernel/v

/Adam/ecc_conv/root_kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/root_kernel/v*
_output_shapes

: *
dtype0

Adam/ecc_conv_1/FGN_out/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/ecc_conv_1/FGN_out/bias/m

2Adam/ecc_conv_1/FGN_out/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_out/bias/m*
_output_shapes	
:*
dtype0

 Adam/ecc_conv_1/FGN_out/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/ecc_conv_1/FGN_out/kernel/m

4Adam/ecc_conv_1/FGN_out/kernel/m/Read/ReadVariableOpReadVariableOp Adam/ecc_conv_1/FGN_out/kernel/m*
_output_shapes
:	*
dtype0

Adam/ecc_conv/FGN_out/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv/FGN_out/bias/m

0Adam/ecc_conv/FGN_out/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_out/bias/m*
_output_shapes	
: *
dtype0

Adam/ecc_conv/FGN_out/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 */
shared_name Adam/ecc_conv/FGN_out/kernel/m

2Adam/ecc_conv/FGN_out/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_out/kernel/m*
_output_shapes
:	 *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

: *
dtype0

Adam/ecc_conv_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/ecc_conv_1/bias/m
}
*Adam/ecc_conv_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/bias/m*
_output_shapes
: *
dtype0

Adam/ecc_conv_1/root_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *.
shared_nameAdam/ecc_conv_1/root_kernel/m

1Adam/ecc_conv_1/root_kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/root_kernel/m*
_output_shapes

:  *
dtype0

Adam/ecc_conv/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/ecc_conv/bias/m
y
(Adam/ecc_conv/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/bias/m*
_output_shapes
: *
dtype0

Adam/ecc_conv/root_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_nameAdam/ecc_conv/root_kernel/m

/Adam/ecc_conv/root_kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/root_kernel/m*
_output_shapes

: *
dtype0
n
accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator
g
accumulator/Read/ReadVariableOpReadVariableOpaccumulator*
_output_shapes
:*
dtype0
r
accumulator_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_1
k
!accumulator_1/Read/ReadVariableOpReadVariableOpaccumulator_1*
_output_shapes
:*
dtype0
r
accumulator_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_2
k
!accumulator_2/Read/ReadVariableOpReadVariableOpaccumulator_2*
_output_shapes
:*
dtype0
r
accumulator_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_3
k
!accumulator_3/Read/ReadVariableOpReadVariableOpaccumulator_3*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

ecc_conv_1/FGN_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameecc_conv_1/FGN_out/bias

+ecc_conv_1/FGN_out/bias/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_out/bias*
_output_shapes	
:*
dtype0

ecc_conv_1/FGN_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	**
shared_nameecc_conv_1/FGN_out/kernel

-ecc_conv_1/FGN_out/kernel/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_out/kernel*
_output_shapes
:	*
dtype0

ecc_conv/FGN_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameecc_conv/FGN_out/bias
|
)ecc_conv/FGN_out/bias/Read/ReadVariableOpReadVariableOpecc_conv/FGN_out/bias*
_output_shapes	
: *
dtype0

ecc_conv/FGN_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *(
shared_nameecc_conv/FGN_out/kernel

+ecc_conv/FGN_out/kernel/Read/ReadVariableOpReadVariableOpecc_conv/FGN_out/kernel*
_output_shapes
:	 *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

: *
dtype0
v
ecc_conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameecc_conv_1/bias
o
#ecc_conv_1/bias/Read/ReadVariableOpReadVariableOpecc_conv_1/bias*
_output_shapes
: *
dtype0

ecc_conv_1/root_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameecc_conv_1/root_kernel

*ecc_conv_1/root_kernel/Read/ReadVariableOpReadVariableOpecc_conv_1/root_kernel*
_output_shapes

:  *
dtype0
r
ecc_conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameecc_conv/bias
k
!ecc_conv/bias/Read/ReadVariableOpReadVariableOpecc_conv/bias*
_output_shapes
: *
dtype0

ecc_conv/root_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_nameecc_conv/root_kernel
}
(ecc_conv/root_kernel/Read/ReadVariableOpReadVariableOpecc_conv/root_kernel*
_output_shapes

: *
dtype0

NoOpNoOp
áO
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*O
valueOBO BO
õ
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
* 
×
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kwargs_keys
kernel_network_layers
root_kernel
bias*
×
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!kwargs_keys
"kernel_network_layers
#root_kernel
$bias*

%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
¦
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias*
J
0
1
32
43
#4
$5
56
67
18
29*
J
0
1
32
43
#4
$5
56
67
18
29*
* 
°
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

<trace_0
=trace_1* 

>trace_0
?trace_1* 
* 

@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratemm#m$m1m2m3m4m 5m¡6m¢v£v¤#v¥$v¦1v§2v¨3v©4vª5v«6v¬*

Eserving_default* 
 
0
1
32
43*
 
0
1
32
43*
* 

Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 
* 

M0*
ic
VARIABLE_VALUEecc_conv/root_kernel;layer_with_weights-0/root_kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEecc_conv/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
#0
$1
52
63*
 
#0
$1
52
63*
* 

Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

Strace_0* 

Ttrace_0* 
* 

U0*
ke
VARIABLE_VALUEecc_conv_1/root_kernel;layer_with_weights-1/root_kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEecc_conv_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

[trace_0* 

\trace_0* 

10
21*

10
21*
* 

]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

btrace_0* 

ctrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEecc_conv/FGN_out/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEecc_conv/FGN_out/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEecc_conv_1/FGN_out/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEecc_conv_1/FGN_out/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*
.
d0
e1
f2
g3
h4
i5*
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

M0*
* 
* 
* 
* 
* 
¦
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

3kernel
4bias*
* 

U0*
* 
* 
* 
* 
* 
¦
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

5kernel
6bias*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
v	variables
w	keras_api
	xtotal
	ycount*
H
z	variables
{	keras_api
	|total
	}count
~
_fn_kwargs*
F
	variables
	keras_api

thresholds
accumulator*
G
	variables
	keras_api

thresholds
accumulator*
G
	variables
	keras_api

thresholds
accumulator*
G
	variables
	keras_api

thresholds
accumulator*

30
41*

30
41*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*
* 
* 

50
61*

50
61*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*
* 
* 

x0
y1*

v	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

|0
}1*

z	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*

	variables*
* 
a[
VARIABLE_VALUEaccumulator_3:keras_api/metrics/2/accumulator/.ATTRIBUTES/VARIABLE_VALUE*

0*

	variables*
* 
a[
VARIABLE_VALUEaccumulator_2:keras_api/metrics/3/accumulator/.ATTRIBUTES/VARIABLE_VALUE*

0*

	variables*
* 
a[
VARIABLE_VALUEaccumulator_1:keras_api/metrics/4/accumulator/.ATTRIBUTES/VARIABLE_VALUE*

0*

	variables*
* 
_Y
VARIABLE_VALUEaccumulator:keras_api/metrics/5/accumulator/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

VARIABLE_VALUEAdam/ecc_conv/root_kernel/mWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/ecc_conv/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/ecc_conv_1/root_kernel/mWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/ecc_conv_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/ecc_conv/FGN_out/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/ecc_conv/FGN_out/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/ecc_conv_1/FGN_out/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/ecc_conv_1/FGN_out/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/ecc_conv/root_kernel/vWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/ecc_conv/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/ecc_conv_1/root_kernel/vWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/ecc_conv_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/ecc_conv/FGN_out/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/ecc_conv/FGN_out/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/ecc_conv_1/FGN_out/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/ecc_conv_1/FGN_out/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
serving_default_args_0Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
{
serving_default_args_0_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
s
serving_default_args_0_2Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
a
serving_default_args_0_3Placeholder*
_output_shapes
:*
dtype0	*
shape:
{
serving_default_args_0_4Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
÷
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_0_1serving_default_args_0_2serving_default_args_0_3serving_default_args_0_4ecc_conv/FGN_out/kernelecc_conv/FGN_out/biasecc_conv/root_kernelecc_conv/biasecc_conv_1/FGN_out/kernelecc_conv_1/FGN_out/biasecc_conv_1/root_kernelecc_conv_1/biasdense/kernel
dense/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_883617
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
´
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(ecc_conv/root_kernel/Read/ReadVariableOp!ecc_conv/bias/Read/ReadVariableOp*ecc_conv_1/root_kernel/Read/ReadVariableOp#ecc_conv_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp+ecc_conv/FGN_out/kernel/Read/ReadVariableOp)ecc_conv/FGN_out/bias/Read/ReadVariableOp-ecc_conv_1/FGN_out/kernel/Read/ReadVariableOp+ecc_conv_1/FGN_out/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp!accumulator_3/Read/ReadVariableOp!accumulator_2/Read/ReadVariableOp!accumulator_1/Read/ReadVariableOpaccumulator/Read/ReadVariableOp/Adam/ecc_conv/root_kernel/m/Read/ReadVariableOp(Adam/ecc_conv/bias/m/Read/ReadVariableOp1Adam/ecc_conv_1/root_kernel/m/Read/ReadVariableOp*Adam/ecc_conv_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp2Adam/ecc_conv/FGN_out/kernel/m/Read/ReadVariableOp0Adam/ecc_conv/FGN_out/bias/m/Read/ReadVariableOp4Adam/ecc_conv_1/FGN_out/kernel/m/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_out/bias/m/Read/ReadVariableOp/Adam/ecc_conv/root_kernel/v/Read/ReadVariableOp(Adam/ecc_conv/bias/v/Read/ReadVariableOp1Adam/ecc_conv_1/root_kernel/v/Read/ReadVariableOp*Adam/ecc_conv_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp2Adam/ecc_conv/FGN_out/kernel/v/Read/ReadVariableOp0Adam/ecc_conv/FGN_out/bias/v/Read/ReadVariableOp4Adam/ecc_conv_1/FGN_out/kernel/v/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_out/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_884186
Ó	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameecc_conv/root_kernelecc_conv/biasecc_conv_1/root_kernelecc_conv_1/biasdense/kernel
dense/biasecc_conv/FGN_out/kernelecc_conv/FGN_out/biasecc_conv_1/FGN_out/kernelecc_conv_1/FGN_out/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountaccumulator_3accumulator_2accumulator_1accumulatorAdam/ecc_conv/root_kernel/mAdam/ecc_conv/bias/mAdam/ecc_conv_1/root_kernel/mAdam/ecc_conv_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/ecc_conv/FGN_out/kernel/mAdam/ecc_conv/FGN_out/bias/m Adam/ecc_conv_1/FGN_out/kernel/mAdam/ecc_conv_1/FGN_out/bias/mAdam/ecc_conv/root_kernel/vAdam/ecc_conv/bias/vAdam/ecc_conv_1/root_kernel/vAdam/ecc_conv_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/ecc_conv/FGN_out/kernel/vAdam/ecc_conv/FGN_out/bias/v Adam/ecc_conv_1/FGN_out/kernel/vAdam/ecc_conv_1/FGN_out/bias/v*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_884325Á
ó/
ã
D__inference_ecc_conv_layer_call_and_return_conditional_losses_883934
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_09
&fgn_out_matmul_readvariableop_resource:	 6
'fgn_out_biasadd_readvariableop_resource:	 0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢FGN_out/BiasAdd/ReadVariableOp¢FGN_out/MatMul/ReadVariableOp¢MatMul/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿh
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Shape_1Shapeinputs_0*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0~
FGN_out/MatMulMatMul
inputs_2_0%FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : 
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:z
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskX
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿ¥
GatherV2GatherV2inputs_0strided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...ac´
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¸
NoOpNoOp^BiasAdd/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2

L
0__inference_global_sum_pool_layer_call_fn_884004

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_883424W
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes

: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
õ/
å
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_883999
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_09
&fgn_out_matmul_readvariableop_resource:	6
'fgn_out_biasadd_readvariableop_resource:	0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢FGN_out/BiasAdd/ReadVariableOp¢FGN_out/MatMul/ReadVariableOp¢MatMul/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿh
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Shape_1Shapeinputs_0*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0~
FGN_out/MatMulMatMul
inputs_2_0%FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : 
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:z
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskX
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿ¥
GatherV2GatherV2inputs_0strided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...ac´
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¸
NoOpNoOp^BiasAdd/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2
È
g
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_883424

inputs
identity`
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿl
SumSuminputsSum/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(K
IdentityIdentitySum:output:0*
T0*
_output_shapes

: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
©«
Ì
"__inference__traced_restore_884325
file_prefix7
%assignvariableop_ecc_conv_root_kernel: .
 assignvariableop_1_ecc_conv_bias: ;
)assignvariableop_2_ecc_conv_1_root_kernel:  0
"assignvariableop_3_ecc_conv_1_bias: 1
assignvariableop_4_dense_kernel: +
assignvariableop_5_dense_bias:=
*assignvariableop_6_ecc_conv_fgn_out_kernel:	 7
(assignvariableop_7_ecc_conv_fgn_out_bias:	 ?
,assignvariableop_8_ecc_conv_1_fgn_out_kernel:	9
*assignvariableop_9_ecc_conv_1_fgn_out_bias:	'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: /
!assignvariableop_19_accumulator_3:/
!assignvariableop_20_accumulator_2:/
!assignvariableop_21_accumulator_1:-
assignvariableop_22_accumulator:A
/assignvariableop_23_adam_ecc_conv_root_kernel_m: 6
(assignvariableop_24_adam_ecc_conv_bias_m: C
1assignvariableop_25_adam_ecc_conv_1_root_kernel_m:  8
*assignvariableop_26_adam_ecc_conv_1_bias_m: 9
'assignvariableop_27_adam_dense_kernel_m: 3
%assignvariableop_28_adam_dense_bias_m:E
2assignvariableop_29_adam_ecc_conv_fgn_out_kernel_m:	 ?
0assignvariableop_30_adam_ecc_conv_fgn_out_bias_m:	 G
4assignvariableop_31_adam_ecc_conv_1_fgn_out_kernel_m:	A
2assignvariableop_32_adam_ecc_conv_1_fgn_out_bias_m:	A
/assignvariableop_33_adam_ecc_conv_root_kernel_v: 6
(assignvariableop_34_adam_ecc_conv_bias_v: C
1assignvariableop_35_adam_ecc_conv_1_root_kernel_v:  8
*assignvariableop_36_adam_ecc_conv_1_bias_v: 9
'assignvariableop_37_adam_dense_kernel_v: 3
%assignvariableop_38_adam_dense_bias_v:E
2assignvariableop_39_adam_ecc_conv_fgn_out_kernel_v:	 ?
0assignvariableop_40_adam_ecc_conv_fgn_out_bias_v:	 G
4assignvariableop_41_adam_ecc_conv_1_fgn_out_kernel_v:	A
2assignvariableop_42_adam_ecc_conv_1_fgn_out_bias_v:	
identity_44¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Æ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*ì
valueâBß,B;layer_with_weights-0/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/3/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/4/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/5/accumulator/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÈ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ý
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Æ
_output_shapes³
°::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp%assignvariableop_ecc_conv_root_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_ecc_conv_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp)assignvariableop_2_ecc_conv_1_root_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_ecc_conv_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp*assignvariableop_6_ecc_conv_fgn_out_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp(assignvariableop_7_ecc_conv_fgn_out_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp,assignvariableop_8_ecc_conv_1_fgn_out_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp*assignvariableop_9_ecc_conv_1_fgn_out_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp!assignvariableop_19_accumulator_3Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp!assignvariableop_20_accumulator_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp!assignvariableop_21_accumulator_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_accumulatorIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_ecc_conv_root_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_ecc_conv_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_25AssignVariableOp1assignvariableop_25_adam_ecc_conv_1_root_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_ecc_conv_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp%assignvariableop_28_adam_dense_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_29AssignVariableOp2assignvariableop_29_adam_ecc_conv_fgn_out_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_ecc_conv_fgn_out_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_ecc_conv_1_fgn_out_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_32AssignVariableOp2assignvariableop_32_adam_ecc_conv_1_fgn_out_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_33AssignVariableOp/assignvariableop_33_adam_ecc_conv_root_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_ecc_conv_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_35AssignVariableOp1assignvariableop_35_adam_ecc_conv_1_root_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_ecc_conv_1_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_dense_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp%assignvariableop_38_adam_dense_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_39AssignVariableOp2assignvariableop_39_adam_ecc_conv_fgn_out_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_40AssignVariableOp0assignvariableop_40_adam_ecc_conv_fgn_out_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_ecc_conv_1_fgn_out_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_ecc_conv_1_fgn_out_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: î
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
|
Æ	
!__inference__wrapped_model_883287

args_0
args_0_1	
args_0_2
args_0_3	
args_0_4H
5model_ecc_conv_fgn_out_matmul_readvariableop_resource:	 E
6model_ecc_conv_fgn_out_biasadd_readvariableop_resource:	 ?
-model_ecc_conv_matmul_readvariableop_resource: <
.model_ecc_conv_biasadd_readvariableop_resource: J
7model_ecc_conv_1_fgn_out_matmul_readvariableop_resource:	G
8model_ecc_conv_1_fgn_out_biasadd_readvariableop_resource:	A
/model_ecc_conv_1_matmul_readvariableop_resource:  >
0model_ecc_conv_1_biasadd_readvariableop_resource: <
*model_dense_matmul_readvariableop_resource: 9
+model_dense_biasadd_readvariableop_resource:
identity¢"model/dense/BiasAdd/ReadVariableOp¢!model/dense/MatMul/ReadVariableOp¢%model/ecc_conv/BiasAdd/ReadVariableOp¢-model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp¢,model/ecc_conv/FGN_out/MatMul/ReadVariableOp¢$model/ecc_conv/MatMul/ReadVariableOp¢'model/ecc_conv_1/BiasAdd/ReadVariableOp¢/model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp¢.model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp¢&model/ecc_conv_1/MatMul/ReadVariableOpJ
model/ecc_conv/ShapeShapeargs_0*
T0*
_output_shapes
:u
"model/ecc_conv/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿw
$model/ecc_conv/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$model/ecc_conv/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model/ecc_conv/strided_sliceStridedSlicemodel/ecc_conv/Shape:output:0+model/ecc_conv/strided_slice/stack:output:0-model/ecc_conv/strided_slice/stack_1:output:0-model/ecc_conv/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskL
model/ecc_conv/Shape_1Shapeargs_0*
T0*
_output_shapes
:w
$model/ecc_conv/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&model/ecc_conv/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&model/ecc_conv/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
model/ecc_conv/strided_slice_1StridedSlicemodel/ecc_conv/Shape_1:output:0-model/ecc_conv/strided_slice_1/stack:output:0/model/ecc_conv/strided_slice_1/stack_1:output:0/model/ecc_conv/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask£
,model/ecc_conv/FGN_out/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_fgn_out_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
model/ecc_conv/FGN_out/MatMulMatMulargs_0_44model/ecc_conv/FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¡
-model/ecc_conv/FGN_out/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_fgn_out_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0¼
model/ecc_conv/FGN_out/BiasAddBiasAdd'model/ecc_conv/FGN_out/MatMul:product:05model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
model/ecc_conv/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ`
model/ecc_conv/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : Í
model/ecc_conv/Reshape/shapePack'model/ecc_conv/Reshape/shape/0:output:0'model/ecc_conv/strided_slice_1:output:0'model/ecc_conv/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:§
model/ecc_conv/ReshapeReshape'model/ecc_conv/FGN_out/BiasAdd:output:0%model/ecc_conv/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
$model/ecc_conv/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&model/ecc_conv/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&model/ecc_conv/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¾
model/ecc_conv/strided_slice_2StridedSliceargs_0_1-model/ecc_conv/strided_slice_2/stack:output:0/model/ecc_conv/strided_slice_2/stack_1:output:0/model/ecc_conv/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_masku
$model/ecc_conv/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        w
&model/ecc_conv/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&model/ecc_conv/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¾
model/ecc_conv/strided_slice_3StridedSliceargs_0_1-model/ecc_conv/strided_slice_3/stack:output:0/model/ecc_conv/strided_slice_3/stack_1:output:0/model/ecc_conv/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskg
model/ecc_conv/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿÐ
model/ecc_conv/GatherV2GatherV2args_0'model/ecc_conv/strided_slice_3:output:0%model/ecc_conv/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
model/ecc_conv/einsum/EinsumEinsum model/ecc_conv/GatherV2:output:0model/ecc_conv/Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...acð
!model/ecc_conv/UnsortedSegmentSumUnsortedSegmentSum%model/ecc_conv/einsum/Einsum:output:0'model/ecc_conv/strided_slice_2:output:0%model/ecc_conv/strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$model/ecc_conv/MatMul/ReadVariableOpReadVariableOp-model_ecc_conv_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
model/ecc_conv/MatMulMatMulargs_0,model/ecc_conv/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
model/ecc_conv/addAddV2*model/ecc_conv/UnsortedSegmentSum:output:0model/ecc_conv/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%model/ecc_conv/BiasAdd/ReadVariableOpReadVariableOp.model_ecc_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
model/ecc_conv/BiasAddBiasAddmodel/ecc_conv/add:z:0-model/ecc_conv/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
model/ecc_conv/ReluRelumodel/ecc_conv/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
model/ecc_conv_1/ShapeShape!model/ecc_conv/Relu:activations:0*
T0*
_output_shapes
:w
$model/ecc_conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿy
&model/ecc_conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&model/ecc_conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
model/ecc_conv_1/strided_sliceStridedSlicemodel/ecc_conv_1/Shape:output:0-model/ecc_conv_1/strided_slice/stack:output:0/model/ecc_conv_1/strided_slice/stack_1:output:0/model/ecc_conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
model/ecc_conv_1/Shape_1Shape!model/ecc_conv/Relu:activations:0*
T0*
_output_shapes
:y
&model/ecc_conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿr
(model/ecc_conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(model/ecc_conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 model/ecc_conv_1/strided_slice_1StridedSlice!model/ecc_conv_1/Shape_1:output:0/model/ecc_conv_1/strided_slice_1/stack:output:01model/ecc_conv_1/strided_slice_1/stack_1:output:01model/ecc_conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask§
.model/ecc_conv_1/FGN_out/MatMul/ReadVariableOpReadVariableOp7model_ecc_conv_1_fgn_out_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
model/ecc_conv_1/FGN_out/MatMulMatMulargs_0_46model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOpReadVariableOp8model_ecc_conv_1_fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Â
 model/ecc_conv_1/FGN_out/BiasAddBiasAdd)model/ecc_conv_1/FGN_out/MatMul:product:07model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 model/ecc_conv_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 model/ecc_conv_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : Õ
model/ecc_conv_1/Reshape/shapePack)model/ecc_conv_1/Reshape/shape/0:output:0)model/ecc_conv_1/strided_slice_1:output:0)model/ecc_conv_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:­
model/ecc_conv_1/ReshapeReshape)model/ecc_conv_1/FGN_out/BiasAdd:output:0'model/ecc_conv_1/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  w
&model/ecc_conv_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       y
(model/ecc_conv_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       y
(model/ecc_conv_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Æ
 model/ecc_conv_1/strided_slice_2StridedSliceargs_0_1/model/ecc_conv_1/strided_slice_2/stack:output:01model/ecc_conv_1/strided_slice_2/stack_1:output:01model/ecc_conv_1/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskw
&model/ecc_conv_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(model/ecc_conv_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       y
(model/ecc_conv_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Æ
 model/ecc_conv_1/strided_slice_3StridedSliceargs_0_1/model/ecc_conv_1/strided_slice_3/stack:output:01model/ecc_conv_1/strided_slice_3/stack_1:output:01model/ecc_conv_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maski
model/ecc_conv_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿñ
model/ecc_conv_1/GatherV2GatherV2!model/ecc_conv/Relu:activations:0)model/ecc_conv_1/strided_slice_3:output:0'model/ecc_conv_1/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í
model/ecc_conv_1/einsum/EinsumEinsum"model/ecc_conv_1/GatherV2:output:0!model/ecc_conv_1/Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...acø
#model/ecc_conv_1/UnsortedSegmentSumUnsortedSegmentSum'model/ecc_conv_1/einsum/Einsum:output:0)model/ecc_conv_1/strided_slice_2:output:0'model/ecc_conv_1/strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&model/ecc_conv_1/MatMul/ReadVariableOpReadVariableOp/model_ecc_conv_1_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0¦
model/ecc_conv_1/MatMulMatMul!model/ecc_conv/Relu:activations:0.model/ecc_conv_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
model/ecc_conv_1/addAddV2,model/ecc_conv_1/UnsortedSegmentSum:output:0!model/ecc_conv_1/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'model/ecc_conv_1/BiasAdd/ReadVariableOpReadVariableOp0model_ecc_conv_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0 
model/ecc_conv_1/BiasAddBiasAddmodel/ecc_conv_1/add:z:0/model/ecc_conv_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
model/ecc_conv_1/ReluRelu!model/ecc_conv_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
+model/global_sum_pool/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿµ
model/global_sum_pool/SumSum#model/ecc_conv_1/Relu:activations:04model/global_sum_pool/Sum/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
model/dense/MatMulMatMul"model/global_sum_pool/Sum:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:e
model/dense/SigmoidSigmoidmodel/dense/BiasAdd:output:0*
T0*
_output_shapes

:]
IdentityIdentitymodel/dense/Sigmoid:y:0^NoOp*
T0*
_output_shapes

:ó
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp&^model/ecc_conv/BiasAdd/ReadVariableOp.^model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp-^model/ecc_conv/FGN_out/MatMul/ReadVariableOp%^model/ecc_conv/MatMul/ReadVariableOp(^model/ecc_conv_1/BiasAdd/ReadVariableOp0^model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp/^model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp'^model/ecc_conv_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2N
%model/ecc_conv/BiasAdd/ReadVariableOp%model/ecc_conv/BiasAdd/ReadVariableOp2^
-model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp-model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp2\
,model/ecc_conv/FGN_out/MatMul/ReadVariableOp,model/ecc_conv/FGN_out/MatMul/ReadVariableOp2L
$model/ecc_conv/MatMul/ReadVariableOp$model/ecc_conv/MatMul/ReadVariableOp2R
'model/ecc_conv_1/BiasAdd/ReadVariableOp'model/ecc_conv_1/BiasAdd/ReadVariableOp2b
/model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp/model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp2`
.model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp.model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp2P
&model/ecc_conv_1/MatMul/ReadVariableOp&model/ecc_conv_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameargs_0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameargs_0:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameargs_0:B>

_output_shapes
:
 
_user_specified_nameargs_0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameargs_0
Û
©
&__inference_model_layer_call_fn_883675
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
unknown:	 
	unknown_0:	 
	unknown_1: 
	unknown_2: 
	unknown_3:	
	unknown_4:	
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_883557f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2
á	
ò
A__inference_dense_layer_call_and_return_conditional_losses_883437

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:M
SigmoidSigmoidBiasAdd:output:0*
T0*
_output_shapes

:Q
IdentityIdentitySigmoid:y:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

: 
 
_user_specified_nameinputs
°
Ð
A__inference_model_layer_call_and_return_conditional_losses_883557

inputs
inputs_1	
inputs_2
inputs_3	
inputs_4"
ecc_conv_883532:	 
ecc_conv_883534:	 !
ecc_conv_883536: 
ecc_conv_883538: $
ecc_conv_1_883541:	 
ecc_conv_1_883543:	#
ecc_conv_1_883545:  
ecc_conv_1_883547: 
dense_883551: 
dense_883553:
identity¢dense/StatefulPartitionedCall¢ ecc_conv/StatefulPartitionedCall¢"ecc_conv_1/StatefulPartitionedCallÅ
 ecc_conv/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4ecc_conv_883532ecc_conv_883534ecc_conv_883536ecc_conv_883538*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_ecc_conv_layer_call_and_return_conditional_losses_883350ô
"ecc_conv_1/StatefulPartitionedCallStatefulPartitionedCall)ecc_conv/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3inputs_4ecc_conv_1_883541ecc_conv_1_883543ecc_conv_1_883545ecc_conv_1_883547*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_883408å
global_sum_pool/PartitionedCallPartitionedCall+ecc_conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_883424
dense/StatefulPartitionedCallStatefulPartitionedCall(global_sum_pool/PartitionedCall:output:0dense_883551dense_883553*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_883437l
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:®
NoOpNoOp^dense/StatefulPartitionedCall!^ecc_conv/StatefulPartitionedCall#^ecc_conv_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2D
 ecc_conv/StatefulPartitionedCall ecc_conv/StatefulPartitionedCall2H
"ecc_conv_1/StatefulPartitionedCall"ecc_conv_1/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿq
ð
A__inference_model_layer_call_and_return_conditional_losses_883869
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0B
/ecc_conv_fgn_out_matmul_readvariableop_resource:	 ?
0ecc_conv_fgn_out_biasadd_readvariableop_resource:	 9
'ecc_conv_matmul_readvariableop_resource: 6
(ecc_conv_biasadd_readvariableop_resource: D
1ecc_conv_1_fgn_out_matmul_readvariableop_resource:	A
2ecc_conv_1_fgn_out_biasadd_readvariableop_resource:	;
)ecc_conv_1_matmul_readvariableop_resource:  8
*ecc_conv_1_biasadd_readvariableop_resource: 6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢ecc_conv/BiasAdd/ReadVariableOp¢'ecc_conv/FGN_out/BiasAdd/ReadVariableOp¢&ecc_conv/FGN_out/MatMul/ReadVariableOp¢ecc_conv/MatMul/ReadVariableOp¢!ecc_conv_1/BiasAdd/ReadVariableOp¢)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp¢(ecc_conv_1/FGN_out/MatMul/ReadVariableOp¢ ecc_conv_1/MatMul/ReadVariableOpF
ecc_conv/ShapeShapeinputs_0*
T0*
_output_shapes
:o
ecc_conv/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿq
ecc_conv/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
ecc_conv/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
ecc_conv/strided_sliceStridedSliceecc_conv/Shape:output:0%ecc_conv/strided_slice/stack:output:0'ecc_conv/strided_slice/stack_1:output:0'ecc_conv/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskH
ecc_conv/Shape_1Shapeinputs_0*
T0*
_output_shapes
:q
ecc_conv/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 ecc_conv/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 ecc_conv/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ecc_conv/strided_slice_1StridedSliceecc_conv/Shape_1:output:0'ecc_conv/strided_slice_1/stack:output:0)ecc_conv/strided_slice_1/stack_1:output:0)ecc_conv/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
&ecc_conv/FGN_out/MatMul/ReadVariableOpReadVariableOp/ecc_conv_fgn_out_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
ecc_conv/FGN_out/MatMulMatMul
inputs_2_0.ecc_conv/FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'ecc_conv/FGN_out/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_fgn_out_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0ª
ecc_conv/FGN_out/BiasAddBiasAdd!ecc_conv/FGN_out/MatMul:product:0/ecc_conv/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
ecc_conv/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
ecc_conv/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : µ
ecc_conv/Reshape/shapePack!ecc_conv/Reshape/shape/0:output:0!ecc_conv/strided_slice_1:output:0!ecc_conv/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
ecc_conv/ReshapeReshape!ecc_conv/FGN_out/BiasAdd:output:0ecc_conv/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
ecc_conv/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 ecc_conv/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 ecc_conv/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¤
ecc_conv/strided_slice_2StridedSliceinputs'ecc_conv/strided_slice_2/stack:output:0)ecc_conv/strided_slice_2/stack_1:output:0)ecc_conv/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_masko
ecc_conv/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        q
 ecc_conv/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 ecc_conv/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¤
ecc_conv/strided_slice_3StridedSliceinputs'ecc_conv/strided_slice_3/stack:output:0)ecc_conv/strided_slice_3/stack_1:output:0)ecc_conv/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maska
ecc_conv/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿÀ
ecc_conv/GatherV2GatherV2inputs_0!ecc_conv/strided_slice_3:output:0ecc_conv/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
ecc_conv/einsum/EinsumEinsumecc_conv/GatherV2:output:0ecc_conv/Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...acØ
ecc_conv/UnsortedSegmentSumUnsortedSegmentSumecc_conv/einsum/Einsum:output:0!ecc_conv/strided_slice_2:output:0ecc_conv/strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
ecc_conv/MatMul/ReadVariableOpReadVariableOp'ecc_conv_matmul_readvariableop_resource*
_output_shapes

: *
dtype0}
ecc_conv/MatMulMatMulinputs_0&ecc_conv/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
ecc_conv/addAddV2$ecc_conv/UnsortedSegmentSum:output:0ecc_conv/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
ecc_conv/BiasAdd/ReadVariableOpReadVariableOp(ecc_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
ecc_conv/BiasAddBiasAddecc_conv/add:z:0'ecc_conv/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
ecc_conv/ReluReluecc_conv/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
ecc_conv_1/ShapeShapeecc_conv/Relu:activations:0*
T0*
_output_shapes
:q
ecc_conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿs
 ecc_conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 ecc_conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ecc_conv_1/strided_sliceStridedSliceecc_conv_1/Shape:output:0'ecc_conv_1/strided_slice/stack:output:0)ecc_conv_1/strided_slice/stack_1:output:0)ecc_conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
ecc_conv_1/Shape_1Shapeecc_conv/Relu:activations:0*
T0*
_output_shapes
:s
 ecc_conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿl
"ecc_conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"ecc_conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ecc_conv_1/strided_slice_1StridedSliceecc_conv_1/Shape_1:output:0)ecc_conv_1/strided_slice_1/stack:output:0+ecc_conv_1/strided_slice_1/stack_1:output:0+ecc_conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
(ecc_conv_1/FGN_out/MatMul/ReadVariableOpReadVariableOp1ecc_conv_1_fgn_out_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
ecc_conv_1/FGN_out/MatMulMatMul
inputs_2_00ecc_conv_1/FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOpReadVariableOp2ecc_conv_1_fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
ecc_conv_1/FGN_out/BiasAddBiasAdd#ecc_conv_1/FGN_out/MatMul:product:01ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
ecc_conv_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
ecc_conv_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : ½
ecc_conv_1/Reshape/shapePack#ecc_conv_1/Reshape/shape/0:output:0#ecc_conv_1/strided_slice_1:output:0#ecc_conv_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
ecc_conv_1/ReshapeReshape#ecc_conv_1/FGN_out/BiasAdd:output:0!ecc_conv_1/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  q
 ecc_conv_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       s
"ecc_conv_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       s
"ecc_conv_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
ecc_conv_1/strided_slice_2StridedSliceinputs)ecc_conv_1/strided_slice_2/stack:output:0+ecc_conv_1/strided_slice_2/stack_1:output:0+ecc_conv_1/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskq
 ecc_conv_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"ecc_conv_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       s
"ecc_conv_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
ecc_conv_1/strided_slice_3StridedSliceinputs)ecc_conv_1/strided_slice_3/stack:output:0+ecc_conv_1/strided_slice_3/stack_1:output:0+ecc_conv_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskc
ecc_conv_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿÙ
ecc_conv_1/GatherV2GatherV2ecc_conv/Relu:activations:0#ecc_conv_1/strided_slice_3:output:0!ecc_conv_1/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ »
ecc_conv_1/einsum/EinsumEinsumecc_conv_1/GatherV2:output:0ecc_conv_1/Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...acà
ecc_conv_1/UnsortedSegmentSumUnsortedSegmentSum!ecc_conv_1/einsum/Einsum:output:0#ecc_conv_1/strided_slice_2:output:0!ecc_conv_1/strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 ecc_conv_1/MatMul/ReadVariableOpReadVariableOp)ecc_conv_1_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0
ecc_conv_1/MatMulMatMulecc_conv/Relu:activations:0(ecc_conv_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
ecc_conv_1/addAddV2&ecc_conv_1/UnsortedSegmentSum:output:0ecc_conv_1/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!ecc_conv_1/BiasAdd/ReadVariableOpReadVariableOp*ecc_conv_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
ecc_conv_1/BiasAddBiasAddecc_conv_1/add:z:0)ecc_conv_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
ecc_conv_1/ReluReluecc_conv_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
%global_sum_pool/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿ£
global_sum_pool/SumSumecc_conv_1/Relu:activations:0.global_sum_pool/Sum/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense/MatMulMatMulglobal_sum_pool/Sum:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:Y
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*
_output_shapes

:W
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*
_output_shapes

:·
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^ecc_conv/BiasAdd/ReadVariableOp(^ecc_conv/FGN_out/BiasAdd/ReadVariableOp'^ecc_conv/FGN_out/MatMul/ReadVariableOp^ecc_conv/MatMul/ReadVariableOp"^ecc_conv_1/BiasAdd/ReadVariableOp*^ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp)^ecc_conv_1/FGN_out/MatMul/ReadVariableOp!^ecc_conv_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2B
ecc_conv/BiasAdd/ReadVariableOpecc_conv/BiasAdd/ReadVariableOp2R
'ecc_conv/FGN_out/BiasAdd/ReadVariableOp'ecc_conv/FGN_out/BiasAdd/ReadVariableOp2P
&ecc_conv/FGN_out/MatMul/ReadVariableOp&ecc_conv/FGN_out/MatMul/ReadVariableOp2@
ecc_conv/MatMul/ReadVariableOpecc_conv/MatMul/ReadVariableOp2F
!ecc_conv_1/BiasAdd/ReadVariableOp!ecc_conv_1/BiasAdd/ReadVariableOp2V
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp2T
(ecc_conv_1/FGN_out/MatMul/ReadVariableOp(ecc_conv_1/FGN_out/MatMul/ReadVariableOp2D
 ecc_conv_1/MatMul/ReadVariableOp ecc_conv_1/MatMul/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2
ù

+__inference_ecc_conv_1_layer_call_fn_883951
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
unknown:	
	unknown_0:	
	unknown_1:  
	unknown_2: 
identity¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0unknown	unknown_0	unknown_1	unknown_2*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_883408o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2
ÿq
ð
A__inference_model_layer_call_and_return_conditional_losses_883772
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0B
/ecc_conv_fgn_out_matmul_readvariableop_resource:	 ?
0ecc_conv_fgn_out_biasadd_readvariableop_resource:	 9
'ecc_conv_matmul_readvariableop_resource: 6
(ecc_conv_biasadd_readvariableop_resource: D
1ecc_conv_1_fgn_out_matmul_readvariableop_resource:	A
2ecc_conv_1_fgn_out_biasadd_readvariableop_resource:	;
)ecc_conv_1_matmul_readvariableop_resource:  8
*ecc_conv_1_biasadd_readvariableop_resource: 6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢ecc_conv/BiasAdd/ReadVariableOp¢'ecc_conv/FGN_out/BiasAdd/ReadVariableOp¢&ecc_conv/FGN_out/MatMul/ReadVariableOp¢ecc_conv/MatMul/ReadVariableOp¢!ecc_conv_1/BiasAdd/ReadVariableOp¢)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp¢(ecc_conv_1/FGN_out/MatMul/ReadVariableOp¢ ecc_conv_1/MatMul/ReadVariableOpF
ecc_conv/ShapeShapeinputs_0*
T0*
_output_shapes
:o
ecc_conv/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿq
ecc_conv/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
ecc_conv/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
ecc_conv/strided_sliceStridedSliceecc_conv/Shape:output:0%ecc_conv/strided_slice/stack:output:0'ecc_conv/strided_slice/stack_1:output:0'ecc_conv/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskH
ecc_conv/Shape_1Shapeinputs_0*
T0*
_output_shapes
:q
ecc_conv/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 ecc_conv/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 ecc_conv/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ecc_conv/strided_slice_1StridedSliceecc_conv/Shape_1:output:0'ecc_conv/strided_slice_1/stack:output:0)ecc_conv/strided_slice_1/stack_1:output:0)ecc_conv/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
&ecc_conv/FGN_out/MatMul/ReadVariableOpReadVariableOp/ecc_conv_fgn_out_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
ecc_conv/FGN_out/MatMulMatMul
inputs_2_0.ecc_conv/FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'ecc_conv/FGN_out/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_fgn_out_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0ª
ecc_conv/FGN_out/BiasAddBiasAdd!ecc_conv/FGN_out/MatMul:product:0/ecc_conv/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
ecc_conv/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
ecc_conv/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : µ
ecc_conv/Reshape/shapePack!ecc_conv/Reshape/shape/0:output:0!ecc_conv/strided_slice_1:output:0!ecc_conv/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
ecc_conv/ReshapeReshape!ecc_conv/FGN_out/BiasAdd:output:0ecc_conv/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
ecc_conv/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 ecc_conv/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 ecc_conv/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¤
ecc_conv/strided_slice_2StridedSliceinputs'ecc_conv/strided_slice_2/stack:output:0)ecc_conv/strided_slice_2/stack_1:output:0)ecc_conv/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_masko
ecc_conv/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        q
 ecc_conv/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 ecc_conv/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¤
ecc_conv/strided_slice_3StridedSliceinputs'ecc_conv/strided_slice_3/stack:output:0)ecc_conv/strided_slice_3/stack_1:output:0)ecc_conv/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maska
ecc_conv/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿÀ
ecc_conv/GatherV2GatherV2inputs_0!ecc_conv/strided_slice_3:output:0ecc_conv/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
ecc_conv/einsum/EinsumEinsumecc_conv/GatherV2:output:0ecc_conv/Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...acØ
ecc_conv/UnsortedSegmentSumUnsortedSegmentSumecc_conv/einsum/Einsum:output:0!ecc_conv/strided_slice_2:output:0ecc_conv/strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
ecc_conv/MatMul/ReadVariableOpReadVariableOp'ecc_conv_matmul_readvariableop_resource*
_output_shapes

: *
dtype0}
ecc_conv/MatMulMatMulinputs_0&ecc_conv/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
ecc_conv/addAddV2$ecc_conv/UnsortedSegmentSum:output:0ecc_conv/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
ecc_conv/BiasAdd/ReadVariableOpReadVariableOp(ecc_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
ecc_conv/BiasAddBiasAddecc_conv/add:z:0'ecc_conv/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
ecc_conv/ReluReluecc_conv/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
ecc_conv_1/ShapeShapeecc_conv/Relu:activations:0*
T0*
_output_shapes
:q
ecc_conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿs
 ecc_conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 ecc_conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ecc_conv_1/strided_sliceStridedSliceecc_conv_1/Shape:output:0'ecc_conv_1/strided_slice/stack:output:0)ecc_conv_1/strided_slice/stack_1:output:0)ecc_conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
ecc_conv_1/Shape_1Shapeecc_conv/Relu:activations:0*
T0*
_output_shapes
:s
 ecc_conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿl
"ecc_conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"ecc_conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ecc_conv_1/strided_slice_1StridedSliceecc_conv_1/Shape_1:output:0)ecc_conv_1/strided_slice_1/stack:output:0+ecc_conv_1/strided_slice_1/stack_1:output:0+ecc_conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
(ecc_conv_1/FGN_out/MatMul/ReadVariableOpReadVariableOp1ecc_conv_1_fgn_out_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
ecc_conv_1/FGN_out/MatMulMatMul
inputs_2_00ecc_conv_1/FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOpReadVariableOp2ecc_conv_1_fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
ecc_conv_1/FGN_out/BiasAddBiasAdd#ecc_conv_1/FGN_out/MatMul:product:01ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
ecc_conv_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
ecc_conv_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : ½
ecc_conv_1/Reshape/shapePack#ecc_conv_1/Reshape/shape/0:output:0#ecc_conv_1/strided_slice_1:output:0#ecc_conv_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
ecc_conv_1/ReshapeReshape#ecc_conv_1/FGN_out/BiasAdd:output:0!ecc_conv_1/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  q
 ecc_conv_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       s
"ecc_conv_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       s
"ecc_conv_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
ecc_conv_1/strided_slice_2StridedSliceinputs)ecc_conv_1/strided_slice_2/stack:output:0+ecc_conv_1/strided_slice_2/stack_1:output:0+ecc_conv_1/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskq
 ecc_conv_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"ecc_conv_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       s
"ecc_conv_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
ecc_conv_1/strided_slice_3StridedSliceinputs)ecc_conv_1/strided_slice_3/stack:output:0+ecc_conv_1/strided_slice_3/stack_1:output:0+ecc_conv_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskc
ecc_conv_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿÙ
ecc_conv_1/GatherV2GatherV2ecc_conv/Relu:activations:0#ecc_conv_1/strided_slice_3:output:0!ecc_conv_1/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ »
ecc_conv_1/einsum/EinsumEinsumecc_conv_1/GatherV2:output:0ecc_conv_1/Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...acà
ecc_conv_1/UnsortedSegmentSumUnsortedSegmentSum!ecc_conv_1/einsum/Einsum:output:0#ecc_conv_1/strided_slice_2:output:0!ecc_conv_1/strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 ecc_conv_1/MatMul/ReadVariableOpReadVariableOp)ecc_conv_1_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0
ecc_conv_1/MatMulMatMulecc_conv/Relu:activations:0(ecc_conv_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
ecc_conv_1/addAddV2&ecc_conv_1/UnsortedSegmentSum:output:0ecc_conv_1/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!ecc_conv_1/BiasAdd/ReadVariableOpReadVariableOp*ecc_conv_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
ecc_conv_1/BiasAddBiasAddecc_conv_1/add:z:0)ecc_conv_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
ecc_conv_1/ReluReluecc_conv_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
%global_sum_pool/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿ£
global_sum_pool/SumSumecc_conv_1/Relu:activations:0.global_sum_pool/Sum/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense/MatMulMatMulglobal_sum_pool/Sum:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:Y
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*
_output_shapes

:W
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*
_output_shapes

:·
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^ecc_conv/BiasAdd/ReadVariableOp(^ecc_conv/FGN_out/BiasAdd/ReadVariableOp'^ecc_conv/FGN_out/MatMul/ReadVariableOp^ecc_conv/MatMul/ReadVariableOp"^ecc_conv_1/BiasAdd/ReadVariableOp*^ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp)^ecc_conv_1/FGN_out/MatMul/ReadVariableOp!^ecc_conv_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2B
ecc_conv/BiasAdd/ReadVariableOpecc_conv/BiasAdd/ReadVariableOp2R
'ecc_conv/FGN_out/BiasAdd/ReadVariableOp'ecc_conv/FGN_out/BiasAdd/ReadVariableOp2P
&ecc_conv/FGN_out/MatMul/ReadVariableOp&ecc_conv/FGN_out/MatMul/ReadVariableOp2@
ecc_conv/MatMul/ReadVariableOpecc_conv/MatMul/ReadVariableOp2F
!ecc_conv_1/BiasAdd/ReadVariableOp!ecc_conv_1/BiasAdd/ReadVariableOp2V
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp2T
(ecc_conv_1/FGN_out/MatMul/ReadVariableOp(ecc_conv_1/FGN_out/MatMul/ReadVariableOp2D
 ecc_conv_1/MatMul/ReadVariableOp ecc_conv_1/MatMul/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2
¬W
°
__inference__traced_save_884186
file_prefix3
/savev2_ecc_conv_root_kernel_read_readvariableop,
(savev2_ecc_conv_bias_read_readvariableop5
1savev2_ecc_conv_1_root_kernel_read_readvariableop.
*savev2_ecc_conv_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop6
2savev2_ecc_conv_fgn_out_kernel_read_readvariableop4
0savev2_ecc_conv_fgn_out_bias_read_readvariableop8
4savev2_ecc_conv_1_fgn_out_kernel_read_readvariableop6
2savev2_ecc_conv_1_fgn_out_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop,
(savev2_accumulator_3_read_readvariableop,
(savev2_accumulator_2_read_readvariableop,
(savev2_accumulator_1_read_readvariableop*
&savev2_accumulator_read_readvariableop:
6savev2_adam_ecc_conv_root_kernel_m_read_readvariableop3
/savev2_adam_ecc_conv_bias_m_read_readvariableop<
8savev2_adam_ecc_conv_1_root_kernel_m_read_readvariableop5
1savev2_adam_ecc_conv_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_fgn_out_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_fgn_out_bias_m_read_readvariableop?
;savev2_adam_ecc_conv_1_fgn_out_kernel_m_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_out_bias_m_read_readvariableop:
6savev2_adam_ecc_conv_root_kernel_v_read_readvariableop3
/savev2_adam_ecc_conv_bias_v_read_readvariableop<
8savev2_adam_ecc_conv_1_root_kernel_v_read_readvariableop5
1savev2_adam_ecc_conv_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_fgn_out_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_fgn_out_bias_v_read_readvariableop?
;savev2_adam_ecc_conv_1_fgn_out_kernel_v_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_out_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ã
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*ì
valueâBß,B;layer_with_weights-0/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/3/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/4/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/5/accumulator/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÅ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ó
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_ecc_conv_root_kernel_read_readvariableop(savev2_ecc_conv_bias_read_readvariableop1savev2_ecc_conv_1_root_kernel_read_readvariableop*savev2_ecc_conv_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop2savev2_ecc_conv_fgn_out_kernel_read_readvariableop0savev2_ecc_conv_fgn_out_bias_read_readvariableop4savev2_ecc_conv_1_fgn_out_kernel_read_readvariableop2savev2_ecc_conv_1_fgn_out_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop(savev2_accumulator_3_read_readvariableop(savev2_accumulator_2_read_readvariableop(savev2_accumulator_1_read_readvariableop&savev2_accumulator_read_readvariableop6savev2_adam_ecc_conv_root_kernel_m_read_readvariableop/savev2_adam_ecc_conv_bias_m_read_readvariableop8savev2_adam_ecc_conv_1_root_kernel_m_read_readvariableop1savev2_adam_ecc_conv_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop9savev2_adam_ecc_conv_fgn_out_kernel_m_read_readvariableop7savev2_adam_ecc_conv_fgn_out_bias_m_read_readvariableop;savev2_adam_ecc_conv_1_fgn_out_kernel_m_read_readvariableop9savev2_adam_ecc_conv_1_fgn_out_bias_m_read_readvariableop6savev2_adam_ecc_conv_root_kernel_v_read_readvariableop/savev2_adam_ecc_conv_bias_v_read_readvariableop8savev2_adam_ecc_conv_1_root_kernel_v_read_readvariableop1savev2_adam_ecc_conv_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop9savev2_adam_ecc_conv_fgn_out_kernel_v_read_readvariableop7savev2_adam_ecc_conv_fgn_out_bias_v_read_readvariableop;savev2_adam_ecc_conv_1_fgn_out_kernel_v_read_readvariableop9savev2_adam_ecc_conv_1_fgn_out_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*¿
_input_shapes­
ª: : : :  : : ::	 : :	:: : : : : : : : : ::::: : :  : : ::	 : :	:: : :  : : ::	 : :	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	 :!

_output_shapes	
: :%	!

_output_shapes
:	:!


_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	 :!

_output_shapes	
: :% !

_output_shapes
:	:!!

_output_shapes	
::$" 

_output_shapes

: : #

_output_shapes
: :$$ 

_output_shapes

:  : %

_output_shapes
: :$& 

_output_shapes

: : '

_output_shapes
::%(!

_output_shapes
:	 :!)

_output_shapes	
: :%*!

_output_shapes
:	:!+

_output_shapes	
::,

_output_shapes
: 
é/
ã
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_883408

inputs
inputs_1	
inputs_2
inputs_3	
inputs_49
&fgn_out_matmul_readvariableop_resource:	6
'fgn_out_biasadd_readvariableop_resource:	0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢FGN_out/BiasAdd/ReadVariableOp¢FGN_out/MatMul/ReadVariableOp¢MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿh
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0|
FGN_out/MatMulMatMulinputs_4%FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : 
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:z
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputs_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskX
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿ£
GatherV2GatherV2inputsstrided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...ac´
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¸
NoOpNoOp^BiasAdd/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
Ð
A__inference_model_layer_call_and_return_conditional_losses_883444

inputs
inputs_1	
inputs_2
inputs_3	
inputs_4"
ecc_conv_883351:	 
ecc_conv_883353:	 !
ecc_conv_883355: 
ecc_conv_883357: $
ecc_conv_1_883409:	 
ecc_conv_1_883411:	#
ecc_conv_1_883413:  
ecc_conv_1_883415: 
dense_883438: 
dense_883440:
identity¢dense/StatefulPartitionedCall¢ ecc_conv/StatefulPartitionedCall¢"ecc_conv_1/StatefulPartitionedCallÅ
 ecc_conv/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4ecc_conv_883351ecc_conv_883353ecc_conv_883355ecc_conv_883357*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_ecc_conv_layer_call_and_return_conditional_losses_883350ô
"ecc_conv_1/StatefulPartitionedCallStatefulPartitionedCall)ecc_conv/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3inputs_4ecc_conv_1_883409ecc_conv_1_883411ecc_conv_1_883413ecc_conv_1_883415*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_883408å
global_sum_pool/PartitionedCallPartitionedCall+ecc_conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_883424
dense/StatefulPartitionedCallStatefulPartitionedCall(global_sum_pool/PartitionedCall:output:0dense_883438dense_883440*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_883437l
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:®
NoOpNoOp^dense/StatefulPartitionedCall!^ecc_conv/StatefulPartitionedCall#^ecc_conv_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2D
 ecc_conv/StatefulPartitionedCall ecc_conv/StatefulPartitionedCall2H
"ecc_conv_1/StatefulPartitionedCall"ecc_conv_1/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
¥
$__inference_signature_wrapper_883617

args_0
args_0_1	
args_0_2
args_0_3	
args_0_4
unknown:	 
	unknown_0:	 
	unknown_1: 
	unknown_2: 
	unknown_3:	
	unknown_4:	
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallargs_0args_0_1args_0_2args_0_3args_0_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_883287f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameargs_0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
args_0_1:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
args_0_2:D@

_output_shapes
:
"
_user_specified_name
args_0_3:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
args_0_4
ç/
á
D__inference_ecc_conv_layer_call_and_return_conditional_losses_883350

inputs
inputs_1	
inputs_2
inputs_3	
inputs_49
&fgn_out_matmul_readvariableop_resource:	 6
'fgn_out_biasadd_readvariableop_resource:	 0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢FGN_out/BiasAdd/ReadVariableOp¢FGN_out/MatMul/ReadVariableOp¢MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿh
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0|
FGN_out/MatMulMatMulinputs_4%FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : 
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:z
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputs_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskX
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿ£
GatherV2GatherV2inputsstrided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *!
equation...ab,...abc->...ac´
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¸
NoOpNoOp^BiasAdd/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
g
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_884010

inputs
identity`
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
þÿÿÿÿÿÿÿÿl
SumSuminputsSum/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(K
IdentityIdentitySum:output:0*
T0*
_output_shapes

: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
á	
ò
A__inference_dense_layer_call_and_return_conditional_losses_884030

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:M
SigmoidSigmoidBiasAdd:output:0*
T0*
_output_shapes

:Q
IdentityIdentitySigmoid:y:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

: 
 
_user_specified_nameinputs


&__inference_dense_layer_call_fn_884019

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_883437f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs
Û
©
&__inference_model_layer_call_fn_883646
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
unknown:	 
	unknown_0:	 
	unknown_1: 
	unknown_2: 
	unknown_3:	
	unknown_4:	
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_883444f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2
õ

)__inference_ecc_conv_layer_call_fn_883886
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
unknown:	 
	unknown_0:	 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0unknown	unknown_0	unknown_1	unknown_2*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_ecc_conv_layer_call_and_return_conditional_losses_883350o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultô
9
args_0/
serving_default_args_0:0ÿÿÿÿÿÿÿÿÿ
=
args_0_11
serving_default_args_0_1:0	ÿÿÿÿÿÿÿÿÿ
9
args_0_2-
serving_default_args_0_2:0ÿÿÿÿÿÿÿÿÿ
0
args_0_3$
serving_default_args_0_3:0	
=
args_0_41
serving_default_args_0_4:0ÿÿÿÿÿÿÿÿÿ0
dense'
StatefulPartitionedCall:0tensorflow/serving/predict:õ

layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
ì
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kwargs_keys
kernel_network_layers
root_kernel
bias"
_tf_keras_layer
ì
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!kwargs_keys
"kernel_network_layers
#root_kernel
$bias"
_tf_keras_layer
¥
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
»
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias"
_tf_keras_layer
f
0
1
32
43
#4
$5
56
67
18
29"
trackable_list_wrapper
f
0
1
32
43
#4
$5
56
67
18
29"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ê
<trace_0
=trace_12
&__inference_model_layer_call_fn_883646
&__inference_model_layer_call_fn_883675À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z<trace_0z=trace_1

>trace_0
?trace_12É
A__inference_model_layer_call_and_return_conditional_losses_883772
A__inference_model_layer_call_and_return_conditional_losses_883869À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z>trace_0z?trace_1
óBð
!__inference__wrapped_model_883287args_0args_0_1args_0_2args_0_3args_0_4"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratemm#m$m1m2m3m4m 5m¡6m¢v£v¤#v¥$v¦1v§2v¨3v©4vª5v«6v¬"
	optimizer
,
Eserving_default"
signature_map
<
0
1
32
43"
trackable_list_wrapper
<
0
1
32
43"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
é
Ktrace_02Ì
)__inference_ecc_conv_layer_call_fn_883886
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zKtrace_0

Ltrace_02ç
D__inference_ecc_conv_layer_call_and_return_conditional_losses_883934
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zLtrace_0
 "
trackable_list_wrapper
'
M0"
trackable_list_wrapper
&:$ 2ecc_conv/root_kernel
: 2ecc_conv/bias
<
#0
$1
52
63"
trackable_list_wrapper
<
#0
$1
52
63"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
ë
Strace_02Î
+__inference_ecc_conv_1_layer_call_fn_883951
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zStrace_0

Ttrace_02é
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_883999
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zTtrace_0
 "
trackable_list_wrapper
'
U0"
trackable_list_wrapper
(:&  2ecc_conv_1/root_kernel
: 2ecc_conv_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
ô
[trace_02×
0__inference_global_sum_pool_layer_call_fn_884004¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z[trace_0

\trace_02ò
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_884010¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z\trace_0
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
­
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ê
btrace_02Í
&__inference_dense_layer_call_fn_884019¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zbtrace_0

ctrace_02è
A__inference_dense_layer_call_and_return_conditional_losses_884030¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zctrace_0
: 2dense/kernel
:2
dense/bias
*:(	 2ecc_conv/FGN_out/kernel
$:" 2ecc_conv/FGN_out/bias
,:*	2ecc_conv_1/FGN_out/kernel
&:$2ecc_conv_1/FGN_out/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
J
d0
e1
f2
g3
h4
i5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 B
&__inference_model_layer_call_fn_883646inputs/0inputsinputs_1inputs_2inputs/2"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 B
&__inference_model_layer_call_fn_883675inputs/0inputsinputs_1inputs_2inputs/2"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
»B¸
A__inference_model_layer_call_and_return_conditional_losses_883772inputs/0inputsinputs_1inputs_2inputs/2"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
»B¸
A__inference_model_layer_call_and_return_conditional_losses_883869inputs/0inputsinputs_1inputs_2inputs/2"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ðBí
$__inference_signature_wrapper_883617args_0args_0_1args_0_2args_0_3args_0_4"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
'
M0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bþ
)__inference_ecc_conv_layer_call_fn_883886inputs/0inputsinputs_1inputs_2inputs/2"
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
D__inference_ecc_conv_layer_call_and_return_conditional_losses_883934inputs/0inputsinputs_1inputs_2inputs/2"
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
»
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

3kernel
4bias"
_tf_keras_layer
 "
trackable_list_wrapper
'
U0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
+__inference_ecc_conv_1_layer_call_fn_883951inputs/0inputsinputs_1inputs_2inputs/2"
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_883999inputs/0inputsinputs_1inputs_2inputs/2"
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
»
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
äBá
0__inference_global_sum_pool_layer_call_fn_884004inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÿBü
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_884010inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
&__inference_dense_layer_call_fn_884019inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õBò
A__inference_dense_layer_call_and_return_conditional_losses_884030inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
N
v	variables
w	keras_api
	xtotal
	ycount"
_tf_keras_metric
^
z	variables
{	keras_api
	|total
	}count
~
_fn_kwargs"
_tf_keras_metric
\
	variables
	keras_api

thresholds
accumulator"
_tf_keras_metric
]
	variables
	keras_api

thresholds
accumulator"
_tf_keras_metric
]
	variables
	keras_api

thresholds
accumulator"
_tf_keras_metric
]
	variables
	keras_api

thresholds
accumulator"
_tf_keras_metric
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
x0
y1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
:  (2total
:  (2count
.
|0
}1"
trackable_list_wrapper
-
z	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
(
0"
trackable_list_wrapper
-
	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2accumulator
(
0"
trackable_list_wrapper
.
	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2accumulator
(
0"
trackable_list_wrapper
.
	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2accumulator
(
0"
trackable_list_wrapper
.
	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2accumulator
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
+:) 2Adam/ecc_conv/root_kernel/m
 : 2Adam/ecc_conv/bias/m
-:+  2Adam/ecc_conv_1/root_kernel/m
":  2Adam/ecc_conv_1/bias/m
#:! 2Adam/dense/kernel/m
:2Adam/dense/bias/m
/:-	 2Adam/ecc_conv/FGN_out/kernel/m
):' 2Adam/ecc_conv/FGN_out/bias/m
1:/	2 Adam/ecc_conv_1/FGN_out/kernel/m
+:)2Adam/ecc_conv_1/FGN_out/bias/m
+:) 2Adam/ecc_conv/root_kernel/v
 : 2Adam/ecc_conv/bias/v
-:+  2Adam/ecc_conv_1/root_kernel/v
":  2Adam/ecc_conv_1/bias/v
#:! 2Adam/dense/kernel/v
:2Adam/dense/bias/v
/:-	 2Adam/ecc_conv/FGN_out/kernel/v
):' 2Adam/ecc_conv/FGN_out/bias/v
1:/	2 Adam/ecc_conv_1/FGN_out/kernel/v
+:)2Adam/ecc_conv_1/FGN_out/bias/vþ
!__inference__wrapped_model_883287Ø
3456#$12£¢
¢

"
args_0/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
"
args_0/2ÿÿÿÿÿÿÿÿÿ
ª "$ª!

dense
dense
A__inference_dense_layer_call_and_return_conditional_losses_884030J12&¢#
¢

inputs 
ª "¢

0
 g
&__inference_dense_layer_call_fn_884019=12&¢#
¢

inputs 
ª "
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_883999Ó56#$£¢
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ 
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
"
inputs/2ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ö
+__inference_ecc_conv_1_layer_call_fn_883951Æ56#$£¢
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ 
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
"
inputs/2ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ 
D__inference_ecc_conv_layer_call_and_return_conditional_losses_883934Ó34£¢
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
"
inputs/2ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ô
)__inference_ecc_conv_layer_call_fn_883886Æ34£¢
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
"
inputs/2ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ 
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_884010O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "¢

0 
 v
0__inference_global_sum_pool_layer_call_fn_884004B/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª " 
A__inference_model_layer_call_and_return_conditional_losses_883772Ø
3456#$12«¢§
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
"
inputs/2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "¢

0
 
A__inference_model_layer_call_and_return_conditional_losses_883869Ø
3456#$12«¢§
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
"
inputs/2ÿÿÿÿÿÿÿÿÿ
p

 
ª "¢

0
 ö
&__inference_model_layer_call_fn_883646Ë
3456#$12«¢§
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
"
inputs/2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ö
&__inference_model_layer_call_fn_883675Ë
3456#$12«¢§
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
"
inputs/2ÿÿÿÿÿÿÿÿÿ
p

 
ª "É
$__inference_signature_wrapper_883617 
3456#$12ë¢ç
¢ 
ßªÛ
*
args_0 
args_0ÿÿÿÿÿÿÿÿÿ
.
args_0_1"
args_0_1ÿÿÿÿÿÿÿÿÿ	
*
args_0_2
args_0_2ÿÿÿÿÿÿÿÿÿ
!
args_0_3
args_0_3	
.
args_0_4"
args_0_4ÿÿÿÿÿÿÿÿÿ"$ª!

dense
dense
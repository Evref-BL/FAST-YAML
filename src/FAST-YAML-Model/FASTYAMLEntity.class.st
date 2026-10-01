"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `aliasOwner` | `FASTYAMLEntity` | `childrenNode` | `FASTYAMLAlias` | |
| `anchorOwner` | `FASTYAMLEntity` | `childrenNode` | `FASTYAMLAnchor` | |
| `blockMappingOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLBlockMapping` | |
| `blockMappingPairKeyOwner` | `FASTYAMLEntity` | `key` | `FASTYAMLBlockMappingPair` | |
| `blockMappingPairValueOwner` | `FASTYAMLEntity` | `value` | `FASTYAMLBlockMappingPair` | |
| `blockNodeOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLBlockNode` | |
| `blockSequenceItemOwner` | `FASTYAMLEntity` | `childrenNode` | `FASTYAMLBlockSequenceItem` | |
| `blockSequenceOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLBlockSequence` | |
| `documentOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLDocument` | |
| `doubleQuoteScalarOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLDoubleQuoteScalar` | |
| `flowMappingOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLFlowMapping` | |
| `flowNodeOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLFlowNode` | |
| `flowSequenceOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLFlowSequence` | |
| `genericParent` | `FASTYAMLEntity` | `genericChildren` | `FASTYAMLEntity` | |
| `plainScalarOwner` | `FASTYAMLEntity` | `childrenNode` | `FASTYAMLPlainScalar` | |
| `reservedDirectiveOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLReservedDirective` | |
| `singleQuoteScalarOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLSingleQuoteScalar` | |
| `streamOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLStream` | |
| `tagDirectiveOwner` | `FASTYAMLEntity` | `childrenNodes` | `FASTYAMLTagDirective` | |
| `yamlDirectiveOwner` | `FASTYAMLEntity` | `childrenNode` | `FASTYAMLYamlDirective` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericChildren` | `FASTYAMLEntity` | `genericParent` | `FASTYAMLEntity` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTYAMLEntity',
	#superclass : 'MooseEntity',
	#traits : 'FASTTEntity + TEntityMetaLevelDependency',
	#classTraits : 'FASTTEntity classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#aliasOwner => FMOne type: #FASTYAMLAlias opposite: #childrenNode',
		'#anchorOwner => FMOne type: #FASTYAMLAnchor opposite: #childrenNode',
		'#blockMappingOwner => FMOne type: #FASTYAMLBlockMapping opposite: #childrenNodes',
		'#blockMappingPairKeyOwner => FMOne type: #FASTYAMLBlockMappingPair opposite: #key',
		'#blockMappingPairValueOwner => FMOne type: #FASTYAMLBlockMappingPair opposite: #value',
		'#blockNodeOwner => FMOne type: #FASTYAMLBlockNode opposite: #childrenNodes',
		'#blockSequenceItemOwner => FMOne type: #FASTYAMLBlockSequenceItem opposite: #childrenNode',
		'#blockSequenceOwner => FMOne type: #FASTYAMLBlockSequence opposite: #childrenNodes',
		'#documentOwner => FMOne type: #FASTYAMLDocument opposite: #childrenNodes',
		'#doubleQuoteScalarOwner => FMOne type: #FASTYAMLDoubleQuoteScalar opposite: #childrenNodes',
		'#flowMappingOwner => FMOne type: #FASTYAMLFlowMapping opposite: #childrenNodes',
		'#flowNodeOwner => FMOne type: #FASTYAMLFlowNode opposite: #childrenNodes',
		'#flowSequenceOwner => FMOne type: #FASTYAMLFlowSequence opposite: #childrenNodes',
		'#genericChildren => FMMany type: #FASTYAMLEntity opposite: #genericParent',
		'#genericParent => FMOne type: #FASTYAMLEntity opposite: #genericChildren',
		'#plainScalarOwner => FMOne type: #FASTYAMLPlainScalar opposite: #childrenNode',
		'#reservedDirectiveOwner => FMOne type: #FASTYAMLReservedDirective opposite: #childrenNodes',
		'#singleQuoteScalarOwner => FMOne type: #FASTYAMLSingleQuoteScalar opposite: #childrenNodes',
		'#streamOwner => FMOne type: #FASTYAMLStream opposite: #childrenNodes',
		'#tagDirectiveOwner => FMOne type: #FASTYAMLTagDirective opposite: #childrenNodes',
		'#yamlDirectiveOwner => FMOne type: #FASTYAMLYamlDirective opposite: #childrenNode'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLEntity class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
	<abstract>
]

{ #category : 'testing' }
FASTYAMLEntity class >> isAbstract [

	<ignoreForCoverage>
	<generated>
	^ self == FASTYAMLEntity
]

{ #category : 'meta' }
FASTYAMLEntity class >> metamodel [

	<ignoreForCoverage>
	<generated>
	^ FASTYAMLModel metamodel
]

{ #category : 'adding' }
FASTYAMLEntity >> addGenericChild: anObject [

	<ignoreForCoverage>
	<generated>
	^ self genericChildren add: anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> aliasOwner [
	"Relation named: #aliasOwner type: #FASTYAMLAlias opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ aliasOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> aliasOwner: anObject [

	<ignoreForCoverage>
	<generated>
	aliasOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> anchorOwner [
	"Relation named: #anchorOwner type: #FASTYAMLAnchor opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ anchorOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> anchorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	anchorOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockMappingOwner [
	"Relation named: #blockMappingOwner type: #FASTYAMLBlockMapping opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ blockMappingOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockMappingOwner: anObject [

	<ignoreForCoverage>
	<generated>
	blockMappingOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockMappingPairKeyOwner [
	"Relation named: #blockMappingPairKeyOwner type: #FASTYAMLBlockMappingPair opposite: #key"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ blockMappingPairKeyOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockMappingPairKeyOwner: anObject [

	<ignoreForCoverage>
	<generated>
	blockMappingPairKeyOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockMappingPairValueOwner [
	"Relation named: #blockMappingPairValueOwner type: #FASTYAMLBlockMappingPair opposite: #value"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ blockMappingPairValueOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockMappingPairValueOwner: anObject [

	<ignoreForCoverage>
	<generated>
	blockMappingPairValueOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockNodeOwner [
	"Relation named: #blockNodeOwner type: #FASTYAMLBlockNode opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ blockNodeOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockNodeOwner: anObject [

	<ignoreForCoverage>
	<generated>
	blockNodeOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockSequenceItemOwner [
	"Relation named: #blockSequenceItemOwner type: #FASTYAMLBlockSequenceItem opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ blockSequenceItemOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockSequenceItemOwner: anObject [

	<ignoreForCoverage>
	<generated>
	blockSequenceItemOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockSequenceOwner [
	"Relation named: #blockSequenceOwner type: #FASTYAMLBlockSequence opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ blockSequenceOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> blockSequenceOwner: anObject [

	<ignoreForCoverage>
	<generated>
	blockSequenceOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> documentOwner [
	"Relation named: #documentOwner type: #FASTYAMLDocument opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ documentOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> documentOwner: anObject [

	<ignoreForCoverage>
	<generated>
	documentOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> doubleQuoteScalarOwner [
	"Relation named: #doubleQuoteScalarOwner type: #FASTYAMLDoubleQuoteScalar opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ doubleQuoteScalarOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> doubleQuoteScalarOwner: anObject [

	<ignoreForCoverage>
	<generated>
	doubleQuoteScalarOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> flowMappingOwner [
	"Relation named: #flowMappingOwner type: #FASTYAMLFlowMapping opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ flowMappingOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> flowMappingOwner: anObject [

	<ignoreForCoverage>
	<generated>
	flowMappingOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> flowNodeOwner [
	"Relation named: #flowNodeOwner type: #FASTYAMLFlowNode opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ flowNodeOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> flowNodeOwner: anObject [

	<ignoreForCoverage>
	<generated>
	flowNodeOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> flowSequenceOwner [
	"Relation named: #flowSequenceOwner type: #FASTYAMLFlowSequence opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ flowSequenceOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> flowSequenceOwner: anObject [

	<ignoreForCoverage>
	<generated>
	flowSequenceOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> genericChildren [
	"Relation named: #genericChildren type: #FASTYAMLEntity opposite: #genericParent"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ genericChildren
]

{ #category : 'accessing' }
FASTYAMLEntity >> genericChildren: anObject [

	<ignoreForCoverage>
	<generated>
	genericChildren value: anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> genericParent [
	"Relation named: #genericParent type: #FASTYAMLEntity opposite: #genericChildren"

	<ignoreForCoverage>
	<generated>
	<container>
	^ genericParent
]

{ #category : 'accessing' }
FASTYAMLEntity >> genericParent: anObject [

	<ignoreForCoverage>
	<generated>
	genericParent := anObject
]

{ #category : 'testing' }
FASTYAMLEntity >> hasImmediateSource [

	<ignoreForCoverage>
	<generated>
	^ false
]

{ #category : 'accessing' }
FASTYAMLEntity >> plainScalarOwner [
	"Relation named: #plainScalarOwner type: #FASTYAMLPlainScalar opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ plainScalarOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> plainScalarOwner: anObject [

	<ignoreForCoverage>
	<generated>
	plainScalarOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> reservedDirectiveOwner [
	"Relation named: #reservedDirectiveOwner type: #FASTYAMLReservedDirective opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ reservedDirectiveOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> reservedDirectiveOwner: anObject [

	<ignoreForCoverage>
	<generated>
	reservedDirectiveOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> singleQuoteScalarOwner [
	"Relation named: #singleQuoteScalarOwner type: #FASTYAMLSingleQuoteScalar opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ singleQuoteScalarOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> singleQuoteScalarOwner: anObject [

	<ignoreForCoverage>
	<generated>
	singleQuoteScalarOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> streamOwner [
	"Relation named: #streamOwner type: #FASTYAMLStream opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ streamOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> streamOwner: anObject [

	<ignoreForCoverage>
	<generated>
	streamOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> tagDirectiveOwner [
	"Relation named: #tagDirectiveOwner type: #FASTYAMLTagDirective opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ tagDirectiveOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> tagDirectiveOwner: anObject [

	<ignoreForCoverage>
	<generated>
	tagDirectiveOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> yamlDirectiveOwner [
	"Relation named: #yamlDirectiveOwner type: #FASTYAMLYamlDirective opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ yamlDirectiveOwner
]

{ #category : 'accessing' }
FASTYAMLEntity >> yamlDirectiveOwner: anObject [

	<ignoreForCoverage>
	<generated>
	yamlDirectiveOwner := anObject
]

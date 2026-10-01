"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `flowPairKeyOwner` | `FASTYAMLFlowNode` | `key` | `FASTYAMLFlowPair` | |
| `flowPairValueOwner` | `FASTYAMLFlowNode` | `value` | `FASTYAMLFlowPair` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTYAMLFlowNode` | `flowNodeOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLFlowNode',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTYAMLEntity opposite: #flowNodeOwner',
		'#flowPairKeyOwner => FMOne type: #FASTYAMLFlowPair opposite: #key',
		'#flowPairValueOwner => FMOne type: #FASTYAMLFlowPair opposite: #value'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLFlowNode class >> annotation [

	<ignoreForCoverage>
	<FMClass: #FlowNode super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTYAMLFlowNode >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTYAMLFlowNode >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTYAMLEntity opposite: #flowNodeOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTYAMLFlowNode >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

{ #category : 'accessing' }
FASTYAMLFlowNode >> flowPairKeyOwner [
	"Relation named: #flowPairKeyOwner type: #FASTYAMLFlowPair opposite: #key"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ flowPairKeyOwner
]

{ #category : 'accessing' }
FASTYAMLFlowNode >> flowPairKeyOwner: anObject [

	<ignoreForCoverage>
	<generated>
	flowPairKeyOwner := anObject
]

{ #category : 'accessing' }
FASTYAMLFlowNode >> flowPairValueOwner [
	"Relation named: #flowPairValueOwner type: #FASTYAMLFlowPair opposite: #value"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ flowPairValueOwner
]

{ #category : 'accessing' }
FASTYAMLFlowNode >> flowPairValueOwner: anObject [

	<ignoreForCoverage>
	<generated>
	flowPairValueOwner := anObject
]

"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTYAMLFlowMapping` | `flowMappingOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLFlowMapping',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTYAMLEntity opposite: #flowMappingOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLFlowMapping class >> annotation [

	<ignoreForCoverage>
	<FMClass: #FlowMapping super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTYAMLFlowMapping >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTYAMLFlowMapping >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTYAMLEntity opposite: #flowMappingOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTYAMLFlowMapping >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

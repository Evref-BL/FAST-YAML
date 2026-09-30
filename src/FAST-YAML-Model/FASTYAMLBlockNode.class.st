"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTYAMLBlockNode` | `blockNodeOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLBlockNode',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTYAMLEntity opposite: #blockNodeOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLBlockNode class >> annotation [

	<ignoreForCoverage>
	<FMClass: #BlockNode super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTYAMLBlockNode >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTYAMLBlockNode >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTYAMLEntity opposite: #blockNodeOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTYAMLBlockNode >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTYAMLReservedDirective` | `reservedDirectiveOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLReservedDirective',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTYAMLEntity opposite: #reservedDirectiveOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLReservedDirective class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ReservedDirective super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTYAMLReservedDirective >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTYAMLReservedDirective >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTYAMLEntity opposite: #reservedDirectiveOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTYAMLReservedDirective >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

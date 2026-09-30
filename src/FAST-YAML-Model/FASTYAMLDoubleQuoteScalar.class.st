"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTYAMLDoubleQuoteScalar` | `doubleQuoteScalarOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLDoubleQuoteScalar',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTYAMLEntity opposite: #doubleQuoteScalarOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLDoubleQuoteScalar class >> annotation [

	<ignoreForCoverage>
	<FMClass: #DoubleQuoteScalar super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTYAMLDoubleQuoteScalar >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTYAMLDoubleQuoteScalar >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTYAMLEntity opposite: #doubleQuoteScalarOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTYAMLDoubleQuoteScalar >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

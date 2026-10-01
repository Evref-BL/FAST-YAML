"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTYAMLSingleQuoteScalar` | `singleQuoteScalarOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLSingleQuoteScalar',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTYAMLEntity opposite: #singleQuoteScalarOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLSingleQuoteScalar class >> annotation [

	<ignoreForCoverage>
	<FMClass: #SingleQuoteScalar super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTYAMLSingleQuoteScalar >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTYAMLSingleQuoteScalar >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTYAMLEntity opposite: #singleQuoteScalarOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTYAMLSingleQuoteScalar >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

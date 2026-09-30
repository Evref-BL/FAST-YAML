"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTYAMLAlias` | `aliasOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLAlias',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTYAMLEntity opposite: #aliasOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLAlias class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Alias super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTYAMLAlias >> childrenNode [
	"Relation named: #childrenNode type: #FASTYAMLEntity opposite: #aliasOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTYAMLAlias >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

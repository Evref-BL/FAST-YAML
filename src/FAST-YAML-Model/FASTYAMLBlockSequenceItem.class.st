"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTYAMLBlockSequenceItem` | `blockSequenceItemOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLBlockSequenceItem',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTYAMLEntity opposite: #blockSequenceItemOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLBlockSequenceItem class >> annotation [

	<ignoreForCoverage>
	<FMClass: #BlockSequenceItem super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTYAMLBlockSequenceItem >> childrenNode [
	"Relation named: #childrenNode type: #FASTYAMLEntity opposite: #blockSequenceItemOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTYAMLBlockSequenceItem >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

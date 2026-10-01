"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTYAMLAnchor` | `anchorOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLAnchor',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTYAMLEntity opposite: #anchorOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLAnchor class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Anchor super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTYAMLAnchor >> childrenNode [
	"Relation named: #childrenNode type: #FASTYAMLEntity opposite: #anchorOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTYAMLAnchor >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

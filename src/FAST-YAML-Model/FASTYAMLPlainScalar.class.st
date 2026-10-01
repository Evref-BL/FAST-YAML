"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTYAMLPlainScalar` | `plainScalarOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLPlainScalar',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTYAMLEntity opposite: #plainScalarOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLPlainScalar class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PlainScalar super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTYAMLPlainScalar >> childrenNode [
	"Relation named: #childrenNode type: #FASTYAMLEntity opposite: #plainScalarOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTYAMLPlainScalar >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

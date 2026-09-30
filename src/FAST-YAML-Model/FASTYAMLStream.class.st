"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTYAMLStream` | `streamOwner` | `FASTYAMLEntity` | |

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `element` | `FamixTSourceAnchor` | `sourceAnchor` | `FamixTSourceEntity` | Enable the accessibility to the famix entity that this class is a source pointer for|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `source` | `String` | nil | Actual source code of the source entity|

"
Class {
	#name : 'FASTYAMLStream',
	#superclass : 'FASTYAMLEntity',
	#traits : 'FamixTHasImmediateSource',
	#classTraits : 'FamixTHasImmediateSource classTrait',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTYAMLEntity opposite: #streamOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLStream class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Stream super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTYAMLStream >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTYAMLStream >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTYAMLEntity opposite: #streamOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTYAMLStream >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

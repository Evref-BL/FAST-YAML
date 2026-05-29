"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericParent` | `FASTYAMLEntity` | `genericChildren` | `FASTYAMLEntity` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericChildren` | `FASTYAMLEntity` | `genericParent` | `FASTYAMLEntity` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTYAMLEntity',
	#superclass : 'MooseEntity',
	#traits : 'FASTTEntity',
	#classTraits : 'FASTTEntity classTrait',
	#instVars : [
		'#genericChildren => FMMany type: #FASTYAMLEntity opposite: #genericParent',
		'#genericParent => FMOne type: #FASTYAMLEntity opposite: #genericChildren'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FASTYAMLEntity class >> isAbstract [

	<generated>
	^ self == FASTYAMLEntity
]

{ #category : 'meta' }
FASTYAMLEntity class >> metamodel [

	<generated>
	^ FASTYAMLModel metamodel
]

{ #category : 'adding' }
FASTYAMLEntity >> addGenericChildren: anObject [
	<generated>
	^ self genericChildren add: anObject
]

{ #category : 'accessing' }
FASTYAMLEntity >> genericChildren [
	"Relation named: #genericChildren type: #FASTYAMLEntity opposite: #genericParent"

	<generated>
	<derived>
	^ genericChildren
]

{ #category : 'accessing' }
FASTYAMLEntity >> genericChildren: anObject [

	<generated>
	genericChildren value: anObject
]

{ #category : 'navigation' }
FASTYAMLEntity >> genericChildrenGroup [
	<generated>
	<navigation: 'GenericChildren'>
	^ MooseSpecializedGroup withAll: self genericChildren asSet
]

{ #category : 'accessing' }
FASTYAMLEntity >> genericParent [
	"Relation named: #genericParent type: #FASTYAMLEntity opposite: #genericChildren"

	<generated>
	<container>
	^ genericParent
]

{ #category : 'accessing' }
FASTYAMLEntity >> genericParent: anObject [

	<generated>
	genericParent := anObject
]

{ #category : 'navigation' }
FASTYAMLEntity >> genericParentGroup [
	<generated>
	<navigation: 'GenericParent'>
	^ MooseSpecializedGroup with: self genericParent
]

{ #category : 'testing' }
FASTYAMLEntity >> isQueryable [

	<generated>
	^ false
]

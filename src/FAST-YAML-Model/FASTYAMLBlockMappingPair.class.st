"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `key` | `FASTYAMLBlockMappingPair` | `blockMappingPairKeyOwner` | `FASTYAMLEntity` | |
| `value` | `FASTYAMLBlockMappingPair` | `blockMappingPairValueOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLBlockMappingPair',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#key => FMOne type: #FASTYAMLEntity opposite: #blockMappingPairKeyOwner',
		'#value => FMOne type: #FASTYAMLEntity opposite: #blockMappingPairValueOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLBlockMappingPair class >> annotation [

	<ignoreForCoverage>
	<FMClass: #BlockMappingPair super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTYAMLBlockMappingPair >> key [
	"Relation named: #key type: #FASTYAMLEntity opposite: #blockMappingPairKeyOwner"

	<ignoreForCoverage>
	<generated>
	^ key
]

{ #category : 'accessing' }
FASTYAMLBlockMappingPair >> key: anObject [

	<ignoreForCoverage>
	<generated>
	key := anObject
]

{ #category : 'accessing' }
FASTYAMLBlockMappingPair >> value [
	"Relation named: #value type: #FASTYAMLEntity opposite: #blockMappingPairValueOwner"

	<ignoreForCoverage>
	<generated>
	^ value
]

{ #category : 'accessing' }
FASTYAMLBlockMappingPair >> value: anObject [

	<ignoreForCoverage>
	<generated>
	value := anObject
]

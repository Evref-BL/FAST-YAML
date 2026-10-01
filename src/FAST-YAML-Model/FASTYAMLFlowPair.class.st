"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `key` | `FASTYAMLFlowPair` | `flowPairKeyOwner` | `FASTYAMLFlowNode` | |
| `value` | `FASTYAMLFlowPair` | `flowPairValueOwner` | `FASTYAMLFlowNode` | |



"
Class {
	#name : 'FASTYAMLFlowPair',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#key => FMOne type: #FASTYAMLFlowNode opposite: #flowPairKeyOwner',
		'#value => FMOne type: #FASTYAMLFlowNode opposite: #flowPairValueOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLFlowPair class >> annotation [

	<ignoreForCoverage>
	<FMClass: #FlowPair super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTYAMLFlowPair >> key [
	"Relation named: #key type: #FASTYAMLFlowNode opposite: #flowPairKeyOwner"

	<ignoreForCoverage>
	<generated>
	^ key
]

{ #category : 'accessing' }
FASTYAMLFlowPair >> key: anObject [

	<ignoreForCoverage>
	<generated>
	key := anObject
]

{ #category : 'accessing' }
FASTYAMLFlowPair >> value [
	"Relation named: #value type: #FASTYAMLFlowNode opposite: #flowPairValueOwner"

	<ignoreForCoverage>
	<generated>
	^ value
]

{ #category : 'accessing' }
FASTYAMLFlowPair >> value: anObject [

	<ignoreForCoverage>
	<generated>
	value := anObject
]

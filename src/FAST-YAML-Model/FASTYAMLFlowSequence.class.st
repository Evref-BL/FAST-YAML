"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTYAMLFlowSequence` | `flowSequenceOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLFlowSequence',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTYAMLEntity opposite: #flowSequenceOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLFlowSequence class >> annotation [

	<ignoreForCoverage>
	<FMClass: #FlowSequence super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTYAMLFlowSequence >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTYAMLFlowSequence >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTYAMLEntity opposite: #flowSequenceOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTYAMLFlowSequence >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

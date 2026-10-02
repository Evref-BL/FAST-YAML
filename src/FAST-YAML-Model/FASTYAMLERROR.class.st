"
## Relations
======================

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
	#name : 'FASTYAMLERROR',
	#superclass : 'FASTYAMLEntity',
	#traits : 'FamixTHasImmediateSource',
	#classTraits : 'FamixTHasImmediateSource classTrait',
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLERROR class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ERROR super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTYAMLERROR >> sourceText [

	"^ self source"
	
	^ self source ifNil: [
		  self parentNode
			  ifNotNil: [ :parent | parent sourceText ]
			  ifNil: [ '' ] ]
]

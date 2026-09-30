"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : 'FASTYAMLTEntityCreator',
	#category : 'FAST-YAML-Model-Model',
	#package : 'FAST-YAML-Model',
	#tag : 'Model'
}

{ #category : 'meta' }
FASTYAMLTEntityCreator classSide >> annotation [

	<ignoreForCoverage>
	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newAlias [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLAlias new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newAliasName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLAliasName new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newAnchor [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLAnchor new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newAnchorName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLAnchorName new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockMapping [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLBlockMapping new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockMappingPair [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLBlockMappingPair new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockNode [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLBlockNode new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLBlockScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockSequence [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLBlockSequence new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockSequenceItem [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLBlockSequenceItem new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBooleanScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLBooleanScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newComment [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLComment new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newDirectiveName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLDirectiveName new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newDirectiveParameter [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLDirectiveParameter new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newDocument [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLDocument new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newDoubleQuoteScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLDoubleQuoteScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newERROR [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLERROR new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newEscapeSequence [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLEscapeSequence new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFloatScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLFloatScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFlowMapping [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLFlowMapping new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFlowNode [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLFlowNode new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFlowPair [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLFlowPair new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFlowSequence [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLFlowSequence new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newIntegerScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLIntegerScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newNullScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLNullScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newPlainScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLPlainScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newReservedDirective [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLReservedDirective new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newSingleQuoteScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLSingleQuoteScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newStream [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLStream new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newStringScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLStringScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newTag [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLTag new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newTagDirective [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLTagDirective new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newTagHandle [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLTagHandle new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newTagPrefix [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLTagPrefix new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newTimestampScalar [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLTimestampScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newYamlDirective [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLYamlDirective new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newYamlVersion [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTYAMLYamlVersion new
]

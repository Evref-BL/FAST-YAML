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

	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-YAML-Model'>
	<generated>
	^ self
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newAlias [

	<generated>
	^ self add: FASTYAMLAlias new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newAliasName [

	<generated>
	^ self add: FASTYAMLAliasName new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newAnchor [

	<generated>
	^ self add: FASTYAMLAnchor new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newAnchorName [

	<generated>
	^ self add: FASTYAMLAnchorName new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockMapping [

	<generated>
	^ self add: FASTYAMLBlockMapping new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockMappingPair [

	<generated>
	^ self add: FASTYAMLBlockMappingPair new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockNode [

	<generated>
	^ self add: FASTYAMLBlockNode new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockScalar [

	<generated>
	^ self add: FASTYAMLBlockScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockSequence [

	<generated>
	^ self add: FASTYAMLBlockSequence new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBlockSequenceItem [

	<generated>
	^ self add: FASTYAMLBlockSequenceItem new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newBooleanScalar [

	<generated>
	^ self add: FASTYAMLBooleanScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newComment [

	<generated>
	^ self add: FASTYAMLComment new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newDirectiveName [

	<generated>
	^ self add: FASTYAMLDirectiveName new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newDirectiveParameter [

	<generated>
	^ self add: FASTYAMLDirectiveParameter new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newDocument [

	<generated>
	^ self add: FASTYAMLDocument new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newDoubleQuoteScalar [

	<generated>
	^ self add: FASTYAMLDoubleQuoteScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newERROR [

	<generated>
	^ self add: FASTYAMLERROR new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newEscapeSequence [

	<generated>
	^ self add: FASTYAMLEscapeSequence new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFloatScalar [

	<generated>
	^ self add: FASTYAMLFloatScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFlowMapping [

	<generated>
	^ self add: FASTYAMLFlowMapping new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFlowNode [

	<generated>
	^ self add: FASTYAMLFlowNode new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFlowPair [

	<generated>
	^ self add: FASTYAMLFlowPair new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newFlowSequence [

	<generated>
	^ self add: FASTYAMLFlowSequence new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newIntegerScalar [

	<generated>
	^ self add: FASTYAMLIntegerScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newNullScalar [

	<generated>
	^ self add: FASTYAMLNullScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newPlainScalar [

	<generated>
	^ self add: FASTYAMLPlainScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newReservedDirective [

	<generated>
	^ self add: FASTYAMLReservedDirective new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newSingleQuoteScalar [

	<generated>
	^ self add: FASTYAMLSingleQuoteScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newStream [

	<generated>
	^ self add: FASTYAMLStream new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newStringScalar [

	<generated>
	^ self add: FASTYAMLStringScalar new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newTag [

	<generated>
	^ self add: FASTYAMLTag new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newTagDirective [

	<generated>
	^ self add: FASTYAMLTagDirective new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newTagHandle [

	<generated>
	^ self add: FASTYAMLTagHandle new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newTagPrefix [

	<generated>
	^ self add: FASTYAMLTagPrefix new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newYamlDirective [

	<generated>
	^ self add: FASTYAMLYamlDirective new
]

{ #category : 'entity creation' }
FASTYAMLTEntityCreator >> newYamlVersion [

	<generated>
	^ self add: FASTYAMLYamlVersion new
]

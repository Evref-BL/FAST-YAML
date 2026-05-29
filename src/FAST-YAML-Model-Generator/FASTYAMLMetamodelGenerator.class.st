Class {
	#name : 'FASTYAMLMetamodelGenerator',
	#superclass : 'FamixMetamodelGenerator',
	#instVars : [
		'entity',
		'_ERROR',
		'tEntity',
		'alias',
		'aliasName',
		'anchor',
		'anchorName',
		'blockMapping',
		'blockMappingPair',
		'blockNode',
		'blockScalar',
		'blockSequence',
		'blockSequenceItem',
		'booleanScalar',
		'comment',
		'directiveName',
		'directiveParameter',
		'document',
		'doubleQuoteScalar',
		'escapeSequence',
		'floatScalar',
		'flowMapping',
		'flowNode',
		'flowPair',
		'flowSequence',
		'integerScalar',
		'nullScalar',
		'plainScalar',
		'reservedDirective',
		'singleQuoteScalar',
		'stream',
		'stringScalar',
		'tag',
		'tagDirective',
		'tagHandle',
		'tagPrefix',
		'yamlDirective',
		'yamlVersion'
	],
	#category : 'FAST-YAML-Model-Generator',
	#package : 'FAST-YAML-Model-Generator'
}

{ #category : 'accessing' }
FASTYAMLMetamodelGenerator class >> packageName [

	^ #'FAST-YAML-Model'
]

{ #category : 'accessing' }
FASTYAMLMetamodelGenerator class >> prefix [

	^ #FASTYAML
]

{ #category : 'accessing' }
FASTYAMLMetamodelGenerator class >> submetamodels [

	^ { FASTMetamodelGenerator }
]

{ #category : 'definition' }
FASTYAMLMetamodelGenerator >> defineClasses [
	super defineClasses.
	entity := builder newClassNamed: #Entity.
	_ERROR := builder newClassNamed: #ERROR.
	alias := builder newClassNamed: #Alias.
	aliasName := builder newClassNamed: #AliasName.
	anchor := builder newClassNamed: #Anchor.
	anchorName := builder newClassNamed: #AnchorName.
	blockMapping := builder newClassNamed: #BlockMapping.
	blockMappingPair := builder newClassNamed: #BlockMappingPair.
	blockNode := builder newClassNamed: #BlockNode.
	blockScalar := builder newClassNamed: #BlockScalar.
	blockSequence := builder newClassNamed: #BlockSequence.
	blockSequenceItem := builder newClassNamed: #BlockSequenceItem.
	booleanScalar := builder newClassNamed: #BooleanScalar.
	comment := builder newClassNamed: #Comment.
	directiveName := builder newClassNamed: #DirectiveName.
	directiveParameter := builder newClassNamed: #DirectiveParameter.
	document := builder newClassNamed: #Document.
	doubleQuoteScalar := builder newClassNamed: #DoubleQuoteScalar.
	escapeSequence := builder newClassNamed: #EscapeSequence.
	floatScalar := builder newClassNamed: #FloatScalar.
	flowMapping := builder newClassNamed: #FlowMapping.
	flowNode := builder newClassNamed: #FlowNode.
	flowPair := builder newClassNamed: #FlowPair.
	flowSequence := builder newClassNamed: #FlowSequence.
	integerScalar := builder newClassNamed: #IntegerScalar.
	nullScalar := builder newClassNamed: #NullScalar.
	plainScalar := builder newClassNamed: #PlainScalar.
	reservedDirective := builder newClassNamed: #ReservedDirective.
	singleQuoteScalar := builder newClassNamed: #SingleQuoteScalar.
	stream := builder newClassNamed: #Stream.
	stringScalar := builder newClassNamed: #StringScalar.
	tag := builder newClassNamed: #Tag.
	tagDirective := builder newClassNamed: #TagDirective.
	tagHandle := builder newClassNamed: #TagHandle.
	tagPrefix := builder newClassNamed: #TagPrefix.
	yamlDirective := builder newClassNamed: #YamlDirective.
	yamlVersion := builder newClassNamed: #YamlVersion.
]

{ #category : 'definition' }
FASTYAMLMetamodelGenerator >> defineHierarchy [
	"define class hierarchy"

	super defineHierarchy.

	entity --|> tEntity.
	
	stream --|> #THasImmediateSource. 

	_ERROR --|> #THasImmediateSource.
	 

	
]

{ #category : 'definition' }
FASTYAMLMetamodelGenerator >> defineRelations [

	super defineRelations.
	(entity property: #'genericChildren') <>-* (entity property: #'genericParent').
]

{ #category : 'definition' }
FASTYAMLMetamodelGenerator >> defineTraits [

	super defineTraits.

	"From FAST"
	tEntity := self remoteTrait: #TEntity withPrefix: #FAST.

]

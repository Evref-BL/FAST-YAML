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
		'yamlVersion',
		'timestampScalar'
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
	timestampScalar := builder newClassNamed: #TimestampScalar.
]

{ #category : 'definition' }
FASTYAMLMetamodelGenerator >> defineHierarchy [
	"define class hierarchy"
	super defineHierarchy.
	entity --|> tEntity.
	entity --|> #TEntityMetaLevelDependency.

	_ERROR --|> #THasImmediateSource.

	stream --|> #THasImmediateSource.


]

{ #category : 'definition' }
FASTYAMLMetamodelGenerator >> defineRelations [
	super defineRelations.

	(entity property: #'genericChildren') <>-* (entity property: #'genericParent').


	" ALIAS (SINGLE CHILD) "
	((alias property: #childrenNode) comment: '')
		<>- ((entity property: #aliasOwner) comment: '').


	" ANCHOR (SINGLE CHILD) "
	((anchor property: #childrenNode) comment: '')
		<>- ((entity property: #anchorOwner) comment: '').


	" BLOCK_MAPPING (COLLECTION) "
	((blockMapping property: #childrenNodes) comment: '')
		<>-* ((entity property: #blockMappingOwner) comment: '').


	" BLOCK_MAPPING_PAIR "
	((blockMappingPair property: #key) comment: '')
		<>- ((entity property: #blockMappingPairKeyOwner) comment: '').

	((blockMappingPair property: #value) comment: '')
		<>- ((entity property: #blockMappingPairValueOwner) comment: '').


	" BLOCK_NODE (COLLECTION) "
	((blockNode property: #childrenNodes) comment: '')
		<>-* ((entity property: #blockNodeOwner) comment: '').


	" BLOCK_SEQUENCE (COLLECTION) "
	((blockSequence property: #childrenNodes) comment: '')
		<>-* ((entity property: #blockSequenceOwner) comment: '').


	" BLOCK_SEQUENCE_ITEM (SINGLE CHILD) "
	((blockSequenceItem property: #childrenNode) comment: '')
		<>- ((entity property: #blockSequenceItemOwner) comment: '').


	" DOCUMENT (COLLECTION) "
	((document property: #childrenNodes) comment: '')
		<>-* ((entity property: #documentOwner) comment: '').


	" DOUBLE_QUOTE_SCALAR (COLLECTION) "
	((doubleQuoteScalar property: #childrenNodes) comment: '')
		<>-* ((entity property: #doubleQuoteScalarOwner) comment: '').


	" FLOW_MAPPING (COLLECTION) "
	((flowMapping property: #childrenNodes) comment: '')
		<>-* ((entity property: #flowMappingOwner) comment: '').


	" FLOW_NODE (COLLECTION) "
	((flowNode property: #childrenNodes) comment: '')
		<>-* ((entity property: #flowNodeOwner) comment: '').


	" FLOW_PAIR "
	((flowPair property: #key) comment: '')
		<>- ((flowNode property: #flowPairKeyOwner) comment: '').

	((flowPair property: #value) comment: '')
		<>- ((flowNode property: #flowPairValueOwner) comment: '').


	" FLOW_SEQUENCE (COLLECTION) "
	((flowSequence property: #childrenNodes) comment: '')
		<>-* ((entity property: #flowSequenceOwner) comment: '').


	" PLAIN_SCALAR (SINGLE CHILD) "
	((plainScalar property: #childrenNode) comment: '')
		<>- ((entity property: #plainScalarOwner) comment: '').


	" RESERVED_DIRECTIVE (COLLECTION) "
	((reservedDirective property: #childrenNodes) comment: '')
		<>-* ((entity property: #reservedDirectiveOwner) comment: '').


	" SINGLE_QUOTE_SCALAR (COLLECTION) "
	((singleQuoteScalar property: #childrenNodes) comment: '')
		<>-* ((entity property: #singleQuoteScalarOwner) comment: '').


	" STREAM (COLLECTION) "
	((stream property: #childrenNodes) comment: '')
		<>-* ((entity property: #streamOwner) comment: '').


	" TAG_DIRECTIVE (COLLECTION) "
	((tagDirective property: #childrenNodes) comment: '')
		<>-* ((entity property: #tagDirectiveOwner) comment: '').


	" YAML_DIRECTIVE (SINGLE CHILD) "
	((yamlDirective property: #childrenNode) comment: '')
		<>- ((entity property: #yamlDirectiveOwner) comment: '').


]

{ #category : 'definition' }
FASTYAMLMetamodelGenerator >> defineTraits [
	super defineTraits.
	"From FAST"
	tEntity := self remoteTrait: #TEntity withPrefix: #FAST.
]

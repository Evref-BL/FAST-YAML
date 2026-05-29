Class {
	#name : 'FASTYAMLParser',
	#superclass : 'Object',
	#instVars : [
		'representations',
		'tsParser'
	],
	#category : 'FAST-YAML-Tools',
	#package : 'FAST-YAML-Tools'
}

{ #category : 'initialization' }
FASTYAMLParser >> deleteTreeSitterParser [  
	
	self tsParser delete  
]

{ #category : 'as yet unclassified' }
FASTYAMLParser >> editTree: aFastTree using: inputEdit [ [
	
	|treeRepresentation |
	 
	"1- create a parser"
	self initialiseTreeSitterParser.
	
	"2- find treeSitter tree in representation collection"
	treeRepresentation := (self representations select: [:each | each fastTree mooseID = aFastTree mooseID]) first.
	
	"3- edit treeSitterTree using inputEdits"
	self tsParser editTree: treeRepresentation treeSitterTree usingInputEdit: inputEdit.
	
	"4- delete the TreeSitter Parser"
	self deleteTreeSitterParser.
]
]

{ #category : 'as yet unclassified' }
FASTYAMLParser >> importToFAST: tsTree usingSourceCode: aString [ 

	| tsLanguage importer |
	
	"needs cleaning"
	
	tsLanguage := TSLanguage typescript.
	importer := TSFASTCustomizableVisitor new.
	importer tsLanguage: tsLanguage.
	importer languageName: 'YAML'.
	importer originString: aString. 
	
	^ importer import: tsTree . 

]

{ #category : 'initialization' }
FASTYAMLParser >> initialiseTreeSitterParser [

	self tsParser: TSParser new.
	self tsParser language: TSLanguage yaml.
]

{ #category : 'initialization' }
FASTYAMLParser >> initialize [
	
	super initialize.
	self representations: OrderedCollection new.
]

{ #category : 'parsing' }
FASTYAMLParser >> parse: aString [
	
	|tsTree fastTree|
	
	"1- create a parser"
	self initialiseTreeSitterParser.
	
	"2- parseString"
	tsTree := self tsParser parseString: aString.
	
	"3- Convert it to FAST"
	fastTree := self importToFAST: tsTree rootNode usingSourceCode: aString.
		
	"4- store the TSTree + FAST tree in the treeRepresantion object and store it in collection"
	self representations add: ( TreeRepresentation new
											treeSitterTree:tsTree;
											fastTree: fastTree).
	
	"5- delete the TreeSitter Parser"
	self deleteTreeSitterParser.
	
	"6- return fastTree" 
	^ fastTree 		
]

{ #category : 'parsing' }
FASTYAMLParser >> parse: aString usingOldTree: aFastTree [

	| treeRepresentation newFastTree newTreeSitterTree |
	
	"1- create a parser"
	self initialiseTreeSitterParser.
	
	"2- find treeSitter tree in representation collection"
	treeRepresentation := (self representations select: [:each | each fastTree mooseID = aFastTree mooseID]) first.
		
	"3- parseString using treeSitter tree"
	newTreeSitterTree := self tsParser parseString: aString usingTree: treeRepresentation treeSitterTree.
	
	"4- convert treeSitter tree to fast"
	newFastTree := self importToFAST: newTreeSitterTree rootNode usingSourceCode: aString.
	
	"5- update the representation collection: fill both new trees"
	treeRepresentation treeSitterTree: newTreeSitterTree; fastTree: newFastTree.
	
	"6- delete the TreeSitter Parser"
	self deleteTreeSitterParser.
	
	"7- return fastTree"
	^ newFastTree.
]

{ #category : 'accessing' }
FASTYAMLParser >> representations [

	^ representations
]

{ #category : 'accessing' }
FASTYAMLParser >> representations: anObject [

	representations := anObject
]

{ #category : 'accessing' }
FASTYAMLParser >> tsParser [

	^ tsParser
]

{ #category : 'accessing' }
FASTYAMLParser >> tsParser: anObject [

	tsParser := anObject
]

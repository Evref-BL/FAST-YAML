Class {
	#name : 'FASTYAMLImporter',
	#superclass : 'TSFASTAbstractImporter',
	#category : 'FAST-YAML-Tools',
	#package : 'FAST-YAML-Tools'
}

{ #category : 'accessing' }
FASTYAMLImporter class >> extensions [
	"File extensions without the dot that the importer handles"

	^ #( 'yaml' 'yml' )
]

{ #category : 'as yet unclassified' }
FASTYAMLImporter >> importToFAST: tsTree usingSourceCode: aString [

	| importer |
	importer := TSFASTCustomizableVisitor new.
	importer languageName: 'YAML'.
	importer originString: aString.

	^ importer import: tsTree
]

{ #category : 'accessing' }
FASTYAMLImporter >> tsLanguage [

	^ TSLanguage yaml
]

{ #category : 'accessing' }
FASTYAMLImporter >> tsParser [

	^ tsParser
]

{ #category : 'accessing' }
FASTYAMLImporter >> tsParser: anObject [

	tsParser := anObject
]

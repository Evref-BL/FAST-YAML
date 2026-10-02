Class {
	#name : 'FASTYAMLImporterTest',
	#superclass : 'TSFASTAbstractImporterTest',
	#category : 'FAST-YAML-Tests',
	#package : 'FAST-YAML-Tests'
}

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedAliasNodes [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedAliasNodes 	"

	self parse: 'First occurrence: &anchor Foo
Second occurrence: *anchor
Override anchor: &anchor Bar
Reuse anchor: *anchor;'.

	self assert: (fast allWithType: FASTYAMLAlias) size equals: 2.
	self assert: (fast allWithType: FASTYAMLAliasName) size equals: 2.
	self assert: (fast allWithType: FASTYAMLAnchor) size equals: 2.
	self assert: (fast allWithType: FASTYAMLAnchorName) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 8.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 6.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'First occurrence: &anchor Foo
Second occurrence: *anchor
Override anchor: &anchor Bar
Reuse anchor: *anchor;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'First occurrence: &anchor Foo
Second occurrence: *anchor
Override anchor: &anchor Bar
Reuse anchor: *anchor;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'First occurrence: &anchor Foo
Second occurrence: *anchor
Override anchor: &anchor Bar
Reuse anchor: *anchor;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'First occurrence: &anchor Foo'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'First occurrence'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'First occurrence'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'First occurrence'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '&anchor Foo'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '&anchor'.
						self assert: (self topEntity isOfType: FASTYAMLAnchor).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'anchor'.
							self assert: (self topEntity isOfType: FASTYAMLAnchorName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'Foo'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Foo'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Second occurrence: *anchor'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'Second occurrence'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Second occurrence'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Second occurrence'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '*anchor'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '*anchor'.
						self assert: (self topEntity isOfType: FASTYAMLAlias).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'anchor'.
							self assert: (self topEntity isOfType: FASTYAMLAliasName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'Override anchor: &anchor Bar'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'Override anchor'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Override anchor'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Override anchor'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '&anchor Bar'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '&anchor'.
						self assert: (self topEntity isOfType: FASTYAMLAnchor).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'anchor'.
							self assert: (self topEntity isOfType: FASTYAMLAnchorName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'Bar'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Bar'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'Reuse anchor: *anchor;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'Reuse anchor'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Reuse anchor'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Reuse anchor'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '*anchor;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '*anchor;'.
						self assert: (self topEntity isOfType: FASTYAMLAlias).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'anchor;'.
							self assert: (self topEntity isOfType: FASTYAMLAliasName)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockCollectionNodes [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockCollectionNodes 	"

	self parse: 'sequence: !!seq
- entry
- !!seq
 - nested
mapping: !!map
 foo: bar;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 3.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 6.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 3.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'sequence: !!seq
- entry
- !!seq
 - nested
mapping: !!map
 foo: bar;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'sequence: !!seq
- entry
- !!seq
 - nested
mapping: !!map
 foo: bar;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'sequence: !!seq
- entry
- !!seq
 - nested
mapping: !!map
 foo: bar;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'sequence: !!seq
- entry
- !!seq
 - nested' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'sequence'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'sequence'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'sequence'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!seq
- entry
- !!seq
 - nested' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!seq'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '- entry
- !!seq
 - nested' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '- entry'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'entry'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'entry'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'entry'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '- !!seq
 - nested' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '!!seq
 - nested' withPlatformLineEndings.
								self assert: (self topEntity isOfType: FASTYAMLBlockNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 2.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '!!seq'.
									self assert: (self topEntity isOfType: FASTYAMLTag).
									stack pop.
								
									stack push: (stack top childrenNodes at: 2).
									self assert: self topEntity sourceCode equals: '- nested'.
									self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: '- nested'.
										self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
										
										"Testing value of monovalue relation childrenNode"
										self assert: self topEntity childrenNode isNotNil.

											stack push: self topEntity childrenNode.
											self assert: self topEntity sourceCode equals: 'nested'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'nested'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'nested'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar).
													stack pop.
												stack pop.
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'mapping: !!map
 foo: bar;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'mapping'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'mapping'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'mapping'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!map
 foo: bar;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!map'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'foo: bar;'.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'foo: bar;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'foo'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'foo'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'bar;'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'bar;'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'bar;'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockIndentationIndicator [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockIndentationIndicator 	"

	self parse: '- |
 detected
- >


  # detected
- |1
  explicit
- >

 detected;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 5.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 4.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '- |
 detected
- >


  # detected
- |1
  explicit
- >

 detected;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- |
 detected
- >


  # detected
- |1
  explicit
- >

 detected;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '- |
 detected
- >


  # detected
- |1
  explicit
- >

 detected;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- |
 detected' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '|
 detected' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|
 detected' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- >


  # detected' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '>


  # detected' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '>


  # detected' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '- |1
  explicit' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '|1
  explicit' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|1
  explicit' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '- >

 detected;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '>

 detected;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '>

 detected;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockMappings [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockMappings 	"

	self parse: 'block mapping:
 key: value;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'block mapping:
 key: value;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'block mapping:
 key: value;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'block mapping:
 key: value;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'block mapping:
 key: value;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'block mapping'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'block mapping'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'block mapping'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: 'key: value;'.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'key: value;'.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'key: value;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'key'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'key'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'key'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'value;'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'value;'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'value;'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockNodeTypes [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockNodeTypes 	"

	self parse: '-

  "flow in block"

- >
 Block scalar

- !!map # Block collection
  foo : bar;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 3.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '-

  "flow in block"

- >
 Block scalar

- !!map # Block collection
  foo : bar;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '-

  "flow in block"

- >
 Block scalar

- !!map # Block collection
  foo : bar;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '-

  "flow in block"

- >
 Block scalar

- !!map # Block collection
  foo : bar;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '-

  "flow in block"' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '"flow in block"'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '"flow in block"'.
						self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- >
 Block scalar' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '>
 Block scalar' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '>
 Block scalar' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '- !!map # Block collection
  foo : bar;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '!!map # Block collection
  foo : bar;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!map'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '# Block collection'.
						self assert: (self topEntity isOfType: FASTYAMLComment).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: 'foo : bar;'.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'foo : bar;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'foo'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'foo'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'bar;'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'bar;'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'bar;'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockScalarHeader [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockScalarHeader 	"

	self parse: '- | # Empty header

 literal
- >1 # Indentation indicator

  folded
- |+ # Chomping indicator

 keep

- >1- # Both indicators

  strip;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 5.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 4.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 4.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '- | # Empty header

 literal
- >1 # Indentation indicator

  folded
- |+ # Chomping indicator

 keep

- >1- # Both indicators

  strip;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- | # Empty header

 literal
- >1 # Indentation indicator

  folded
- |+ # Chomping indicator

 keep

- >1- # Both indicators

  strip;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '- | # Empty header

 literal
- >1 # Indentation indicator

  folded
- |+ # Chomping indicator

 keep

- >1- # Both indicators

  strip;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- | # Empty header

 literal' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '| # Empty header

 literal' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '| # Empty header

 literal' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						
						"Testing value of multivalued relation genericChildren"
						self assert: self topEntity genericChildren size equals: 1.
						
							stack push: (stack top genericChildren at: 1).
							self assert: self topEntity sourceCode equals: '# Empty header'.
							self assert: (self topEntity isOfType: FASTYAMLComment).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- >1 # Indentation indicator

  folded' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '>1 # Indentation indicator

  folded' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '>1 # Indentation indicator

  folded' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						
						"Testing value of multivalued relation genericChildren"
						self assert: self topEntity genericChildren size equals: 1.
						
							stack push: (stack top genericChildren at: 1).
							self assert: self topEntity sourceCode equals: '# Indentation indicator'.
							self assert: (self topEntity isOfType: FASTYAMLComment).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '- |+ # Chomping indicator

 keep' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '|+ # Chomping indicator

 keep' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|+ # Chomping indicator

 keep' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						
						"Testing value of multivalued relation genericChildren"
						self assert: self topEntity genericChildren size equals: 1.
						
							stack push: (stack top genericChildren at: 1).
							self assert: self topEntity sourceCode equals: '# Chomping indicator'.
							self assert: (self topEntity isOfType: FASTYAMLComment).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '- >1- # Both indicators

  strip;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '>1- # Both indicators

  strip;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '>1- # Both indicators

  strip;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						
						"Testing value of multivalued relation genericChildren"
						self assert: self topEntity genericChildren size equals: 1.
						
							stack push: (stack top genericChildren at: 1).
							self assert: self topEntity sourceCode equals: '# Both indicators'.
							self assert: (self topEntity isOfType: FASTYAMLComment)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockScalarIndicators [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockScalarIndicators 	"

	self parse: 'literal: |
  some
  text
folded: >
  some
  text;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 2.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'literal: |
  some
  text
folded: >
  some
  text;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'literal: |
  some
  text
folded: >
  some
  text;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'literal: |
  some
  text
folded: >
  some
  text;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'literal: |
  some
  text' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'literal'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'literal'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'literal'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '|
  some
  text' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|
  some
  text' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'folded: >
  some
  text;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'folded'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'folded'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'folded'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '>
  some
  text;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '>
  some
  text;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockScalarNodes [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockScalarNodes 	"

	self parse: 'literal: |2
  value
folded:

   !foo
  >1
 value;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'literal: |2
  value
folded:

   !foo
  >1
 value;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'literal: |2
  value
folded:

   !foo
  >1
 value;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'literal: |2
  value
folded:

   !foo
  >1
 value;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'literal: |2
  value' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'literal'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'literal'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'literal'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '|2
  value' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|2
  value' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'folded:

   !foo
  >1
 value;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'folded'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'folded'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'folded'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!foo
  >1
 value;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!foo'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '>1
 value;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockSequence [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockSequence 	"

	self parse: 'block sequence:
  - one

  - two : three;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 4.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'block sequence:
  - one

  - two : three;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'block sequence:
  - one

  - two : three;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'block sequence:
  - one

  - two : three;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'block sequence:
  - one

  - two : three;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'block sequence'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'block sequence'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'block sequence'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '- one

  - two : three;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '- one

  - two : three;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '- one'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'one'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'one'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'one'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '- two : three;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'two : three;'.
								self assert: (self topEntity isOfType: FASTYAMLBlockNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'two : three;'.
									self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'two : three;'.
										self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
										
										"Testing value of monovalue relation key"
										self assert: self topEntity key isNotNil.

											stack push: self topEntity key.
											self assert: self topEntity sourceCode equals: 'two'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'two'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'two'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar).
													stack pop.
												stack pop.
											stack pop.
										
										"Testing value of monovalue relation value"
										self assert: self topEntity value isNotNil.

											stack push: self topEntity value.
											self assert: self topEntity sourceCode equals: 'three;'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'three;'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'three;'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockSequenceEntryTypes [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockSequenceEntryTypes 	"

	self parse: '- # Empty
- |
 block node
- - one # Compact
  - two # sequence
- one: two # Compact mapping;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 6.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 4.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 4.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '- # Empty
- |
 block node
- - one # Compact
  - two # sequence
- one: two # Compact mapping;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- # Empty
- |
 block node
- - one # Compact
  - two # sequence
- one: two # Compact mapping;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '- # Empty
- |
 block node
- - one # Compact
  - two # sequence
- one: two # Compact mapping;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 5.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '-'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '# Empty'.
				self assert: (self topEntity isOfType: FASTYAMLComment).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '- |
 block node' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '|
 block node' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|
 block node' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '- - one # Compact
  - two # sequence' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '- one # Compact
  - two # sequence' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '- one # Compact
  - two # sequence' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 4.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '- one'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'one'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'one'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'one'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '# Compact'.
							self assert: (self topEntity isOfType: FASTYAMLComment).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '- two'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'two'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'two'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'two'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '# sequence'.
							self assert: (self topEntity isOfType: FASTYAMLComment).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: '- one: two # Compact mapping;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'one: two # Compact mapping;'.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'one: two # Compact mapping;'.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'one: two'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'one'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'one'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'one'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'two'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'two'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'two'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '# Compact mapping;'.
							self assert: (self topEntity isOfType: FASTYAMLComment)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBlockStructureIndicators [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBlockStructureIndicators 	"

	self parse: 'sequence:
- one
- two
mapping:
  ? sky
  : blue
  sea : green;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 8.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 8.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 8.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'sequence:
- one
- two
mapping:
  ? sky
  : blue
  sea : green;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'sequence:
- one
- two
mapping:
  ? sky
  : blue
  sea : green;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'sequence:
- one
- two
mapping:
  ? sky
  : blue
  sea : green;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'sequence:
- one
- two' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'sequence'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'sequence'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'sequence'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '- one
- two' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '- one
- two' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '- one'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'one'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'one'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'one'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '- two'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'two'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'two'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'two'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'mapping:
  ? sky
  : blue
  sea : green;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'mapping'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'mapping'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'mapping'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '? sky
  : blue
  sea : green;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '? sky
  : blue
  sea : green;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '? sky
  : blue' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'sky'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'sky'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'sky'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'blue'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'blue'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'blue'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'sea : green;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'sea'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'sea'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'sea'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'green;'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'green;'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'green;'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedBoolExamples [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBoolExamples 	"

	self parse: 'YAML is a superset of JSON: !!bool true
Pluto is a planet: !!bool false;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBooleanScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 2.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'YAML is a superset of JSON: !!bool true
Pluto is a planet: !!bool false;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'YAML is a superset of JSON: !!bool true
Pluto is a planet: !!bool false;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'YAML is a superset of JSON: !!bool true
Pluto is a planet: !!bool false;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'YAML is a superset of JSON: !!bool true'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'YAML is a superset of JSON'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'YAML is a superset of JSON'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'YAML is a superset of JSON'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!bool true'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!bool'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'true'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'true'.
							self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Pluto is a planet: !!bool false;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'Pluto is a planet'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Pluto is a planet'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Pluto is a planet'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!bool false;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!bool'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'false;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'false;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedByteOrderMark [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedByteOrderMark 	"

	self parse: '# Comment only.;'.

	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '# Comment only.;'.
	self assert: (self topEntity isOfType: FASTYAMLComment)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedChompingFinalLineBreak [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedChompingFinalLineBreak 	"

	self parse: 'strip: |-
  text

clip: |
  text

keep: |+
  text;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'strip: |-
  text

clip: |
  text

keep: |+
  text;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'strip: |-
  text

clip: |
  text

keep: |+
  text;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'strip: |-
  text

clip: |
  text

keep: |+
  text;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'strip: |-
  text' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'strip'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'strip'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'strip'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '|-
  text' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|-
  text' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'clip: |
  text' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'clip'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'clip'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'clip'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '|
  text' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|
  text' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'keep: |+
  text;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'keep'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'keep'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'keep'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '|+
  text;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|+
  text;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedChompingTrailingLines [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedChompingTrailingLines 	"

	self parse: '# Strip
  # Comments:
strip: |-
  # text

  ⇓
 # Clip
  # comments:


clip: |
  # text



 # Keep
  # comments:


keep: |+
  # text



 # Trail
  # comments.;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 8.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '# Strip
  # Comments:
strip: |-
  # text

  ⇓
 # Clip
  # comments:


clip: |
  # text



 # Keep
  # comments:


keep: |+
  # text



 # Trail
  # comments.;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '# Strip'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '# Comments:'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: 'strip: |-
  # text

  ⇓
 # Clip
  # comments:


clip: |
  # text



 # Keep
  # comments:


keep: |+
  # text



 # Trail
  # comments.;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'strip: |-
  # text

  ⇓
 # Clip
  # comments:


clip: |
  # text



 # Keep
  # comments:


keep: |+
  # text



 # Trail
  # comments.;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'strip: |-
  # text

  ⇓
 # Clip
  # comments:


clip: |
  # text



 # Keep
  # comments:


keep: |+
  # text



 # Trail
  # comments.;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 9.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'strip: |-
  # text

  ⇓' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'strip'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'strip'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'strip'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '|-
  # text

  ⇓' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '|-
  # text

  ⇓' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '# Clip'.
					self assert: (self topEntity isOfType: FASTYAMLComment).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '# comments:'.
					self assert: (self topEntity isOfType: FASTYAMLComment).
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: 'clip: |
  # text' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'clip'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'clip'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'clip'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '|
  # text' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '|
  # text' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: '# Keep'.
					self assert: (self topEntity isOfType: FASTYAMLComment).
					stack pop.
				
					stack push: (stack top childrenNodes at: 6).
					self assert: self topEntity sourceCode equals: '# comments:'.
					self assert: (self topEntity isOfType: FASTYAMLComment).
					stack pop.
				
					stack push: (stack top childrenNodes at: 7).
					self assert: self topEntity sourceCode equals: 'keep: |+
  # text' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'keep'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'keep'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'keep'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '|+
  # text' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '|+
  # text' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 8).
					self assert: self topEntity sourceCode equals: '# Trail'.
					self assert: (self topEntity isOfType: FASTYAMLComment).
					stack pop.
				
					stack push: (stack top childrenNodes at: 9).
					self assert: self topEntity sourceCode equals: '# comments.;'.
					self assert: (self topEntity isOfType: FASTYAMLComment).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '# Strip
  # Comments:
strip: |-
  # text

  ⇓
 # Clip
  # comments:


clip: |
  # text



 # Keep
  # comments:


keep: |+
  # text



 # Trail
  # comments.;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedCommentIndicator [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCommentIndicator 	"

	self parse: '# Comment only.;'.

	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '# Comment only.;'.
	self assert: (self topEntity isOfType: FASTYAMLComment)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedCompactBlockMappings [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCompactBlockMappings 	"

	self parse: '- sun: yellow

- ? earth: blue

  : moon: white;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 5.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 6.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 6.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '- sun: yellow

- ? earth: blue

  : moon: white;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- sun: yellow

- ? earth: blue

  : moon: white;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '- sun: yellow

- ? earth: blue

  : moon: white;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- sun: yellow'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'sun: yellow'.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'sun: yellow'.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'sun: yellow'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'sun'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'sun'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'sun'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'yellow'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'yellow'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'yellow'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- ? earth: blue

  : moon: white;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '? earth: blue

  : moon: white;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '? earth: blue

  : moon: white;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '? earth: blue

  : moon: white;' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'earth: blue'.
								self assert: (self topEntity isOfType: FASTYAMLBlockNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'earth: blue'.
									self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'earth: blue'.
										self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
										
										"Testing value of monovalue relation key"
										self assert: self topEntity key isNotNil.

											stack push: self topEntity key.
											self assert: self topEntity sourceCode equals: 'earth'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'earth'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'earth'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar).
													stack pop.
												stack pop.
											stack pop.
										
										"Testing value of monovalue relation value"
										self assert: self topEntity value isNotNil.

											stack push: self topEntity value.
											self assert: self topEntity sourceCode equals: 'blue'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'blue'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'blue'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar).
													stack pop.
												stack pop.
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'moon: white;'.
								self assert: (self topEntity isOfType: FASTYAMLBlockNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'moon: white;'.
									self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'moon: white;'.
										self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
										
										"Testing value of monovalue relation key"
										self assert: self topEntity key isNotNil.

											stack push: self topEntity key.
											self assert: self topEntity sourceCode equals: 'moon'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'moon'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'moon'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar).
													stack pop.
												stack pop.
											stack pop.
										
										"Testing value of monovalue relation value"
										self assert: self topEntity value isNotNil.

											stack push: self topEntity value.
											self assert: self topEntity sourceCode equals: 'white;'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'white;'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'white;'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedCompletelyEmptyFlowNodes [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCompletelyEmptyFlowNodes 	"

	self parse: '{
  ? foo :,
  : bar,
};'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '{
  ? foo :,
  : bar,
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '{
  ? foo :,
  : bar,
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '{
  ? foo :,
  : bar,
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '{
  ? foo :,
  : bar,
}' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '? foo :'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'foo'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'foo'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: ': bar'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'bar'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'bar'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'bar'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '{
  ? foo :,
  : bar,
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedCoreTagResolution [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCoreTagResolution 	"

	self parse: 'A null: null
Also a null: # Empty
Not a null: ""
Booleans: [ true, True, false, FALSE ]
Integers: [ 0, 0o7, 0x3A, -19 ]
Floats: [ 0., -0.0, .5, +12e03, -2E+05 ]
Also floats: [ .inf, -.Inf, +.INF, .NAN ];'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 7.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBooleanScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFloatScalar) size equals: 9.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 30.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 4.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLNullScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 25.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 7.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'A null: null
Also a null: # Empty
Not a null: ""
Booleans: [ true, True, false, FALSE ]
Integers: [ 0, 0o7, 0x3A, -19 ]
Floats: [ 0., -0.0, .5, +12e03, -2E+05 ]
Also floats: [ .inf, -.Inf, +.INF, .NAN ]' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLBlockNode).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'A null: null
Also a null: # Empty
Not a null: ""
Booleans: [ true, True, false, FALSE ]
Integers: [ 0, 0o7, 0x3A, -19 ]
Floats: [ 0., -0.0, .5, +12e03, -2E+05 ]
Also floats: [ .inf, -.Inf, +.INF, .NAN ]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 8.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'A null: null'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'A null'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'A null'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'A null'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: 'null'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'null'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'null'.
						self assert: (self topEntity isOfType: FASTYAMLNullScalar).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Also a null:'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'Also a null'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Also a null'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Also a null'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '# Empty'.
			self assert: (self topEntity isOfType: FASTYAMLComment).
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: 'Not a null: ""'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'Not a null'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Not a null'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Not a null'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '""'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '""'.
					self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 5).
			self assert: self topEntity sourceCode equals: 'Booleans: [ true, True, false, FALSE ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'Booleans'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Booleans'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Booleans'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '[ true, True, false, FALSE ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[ true, True, false, FALSE ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 4.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'true'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'true'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'true'.
								self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'True'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'True'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'True'.
								self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: 'false'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'false'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'false'.
								self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 4).
						self assert: self topEntity sourceCode equals: 'FALSE'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'FALSE'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'FALSE'.
								self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 6).
			self assert: self topEntity sourceCode equals: 'Integers: [ 0, 0o7, 0x3A, -19 ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'Integers'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Integers'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Integers'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '[ 0, 0o7, 0x3A, -19 ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[ 0, 0o7, 0x3A, -19 ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 4.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '0'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '0'.
								self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '0o7'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '0o7'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '0o7'.
								self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '0x3A'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '0x3A'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '0x3A'.
								self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 4).
						self assert: self topEntity sourceCode equals: '-19'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '-19'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '-19'.
								self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 7).
			self assert: self topEntity sourceCode equals: 'Floats: [ 0., -0.0, .5, +12e03, -2E+05 ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'Floats'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Floats'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Floats'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '[ 0., -0.0, .5, +12e03, -2E+05 ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[ 0., -0.0, .5, +12e03, -2E+05 ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 5.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0.'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '0.'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '0.'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '-0.0'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '-0.0'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '-0.0'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '.5'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '.5'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '.5'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 4).
						self assert: self topEntity sourceCode equals: '+12e03'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '+12e03'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '+12e03'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 5).
						self assert: self topEntity sourceCode equals: '-2E+05'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '-2E+05'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '-2E+05'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 8).
			self assert: self topEntity sourceCode equals: 'Also floats: [ .inf, -.Inf, +.INF, .NAN ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'Also floats'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Also floats'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Also floats'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '[ .inf, -.Inf, +.INF, .NAN ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[ .inf, -.Inf, +.INF, .NAN ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 4.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.inf'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '.inf'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '.inf'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '-.Inf'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '-.Inf'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '-.Inf'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '+.INF'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '+.INF'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '+.INF'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 4).
						self assert: self topEntity sourceCode equals: '.NAN'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '.NAN'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '.NAN'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedDirectiveIndicator [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDirectiveIndicator 	"

	self parse: '%YAML 1.2
--- text;'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLYamlDirective) size equals: 1.
	self assert: (fast allWithType: FASTYAMLYamlVersion) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '%YAML 1.2
--- text;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '%YAML 1.2'.
		self assert: (self topEntity isOfType: FASTYAMLYamlDirective).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: '1.2'.
			self assert: (self topEntity isOfType: FASTYAMLYamlVersion).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'text;'.
		self assert: (self topEntity isOfType: FASTYAMLFlowNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'text;'.
			self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'text;'.
				self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedDoubleQuotedImplicitKeys [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDoubleQuotedImplicitKeys 	"

	self parse: '"implicit block key" : [
  "implicit flow key" : value,
 ];'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 5.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '"implicit block key" : [
  "implicit flow key" : value,
 ];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '"implicit block key" : [
  "implicit flow key" : value,
 ]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '"implicit block key" : [
  "implicit flow key" : value,
 ]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: '"implicit block key"'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"implicit block key"'.
					self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '[
  "implicit flow key" : value,
 ]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[
  "implicit flow key" : value,
 ]' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '"implicit flow key" : value'.
						self assert: (self topEntity isOfType: FASTYAMLFlowPair).
						
						"Testing value of monovalue relation key"
						self assert: self topEntity key isNotNil.

							stack push: self topEntity key.
							self assert: self topEntity sourceCode equals: '"implicit flow key"'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '"implicit flow key"'.
								self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
								stack pop.
							stack pop.
						
						"Testing value of monovalue relation value"
						self assert: self topEntity value isNotNil.

							stack push: self topEntity value.
							self assert: self topEntity sourceCode equals: 'value'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'value'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'value'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '"implicit block key" : [
  "implicit flow key" : value,
 ];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedDoubleQuotedLineBreaks [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDoubleQuotedLineBreaks 	"

	self parse: '"folded

to a space,



to a line feed, or 	\

 \ 	non-content";'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLEscapeSequence) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '"folded

to a space,



to a line feed, or 	\

 \ 	non-content";' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '"folded

to a space,



to a line feed, or 	\

 \ 	non-content"' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '"folded

to a space,



to a line feed, or 	\

 \ 	non-content"' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '"folded

to a space,



to a line feed, or 	\

 \ 	non-content"' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '\'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '\ '.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '"folded

to a space,



to a line feed, or 	\

 \ 	non-content";' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedDoubleQuotedLines [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDoubleQuotedLines 	"

	self parse: '" 1st non-empty



 2nd non-empty
	3rd non-empty ";'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '" 1st non-empty



 2nd non-empty
	3rd non-empty ";' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '" 1st non-empty



 2nd non-empty
	3rd non-empty "' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '" 1st non-empty



 2nd non-empty
	3rd non-empty "' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '" 1st non-empty



 2nd non-empty
	3rd non-empty "' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '" 1st non-empty



 2nd non-empty
	3rd non-empty ";' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedDoublequoteNewlineEscape10 [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDoublequoteNewlineEscape10 	"

	self parse: 'root: "a\
b\
c";'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 2.
	self assert: (fast allWithType: FASTYAMLEscapeSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'root: "a\
b\
c";' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 3.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: 'root:'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'root'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'root'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'root'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: '"a\
b\' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '\'.
			self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: 'b\'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b\'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'b\'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 3).
		self assert: self topEntity sourceCode equals: 'c";'.
		self assert: (self topEntity isOfType: FASTYAMLFlowNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'c";'.
			self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'c";'.
				self assert: (self topEntity isOfType: FASTYAMLStringScalar).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'root: "a\
b\
c";' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedEmptyContent [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedEmptyContent 	"

	self parse: '{
  foo : !!str,
  !!str : bar,
};'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 6.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '{
  foo : !!str,
  !!str : bar,
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '{
  foo : !!str,
  !!str : bar,
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '{
  foo : !!str,
  !!str : bar,
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '{
  foo : !!str,
  !!str : bar,
}' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'foo : !!str'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'foo'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'foo'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '!!str'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '!!str'.
							self assert: (self topEntity isOfType: FASTYAMLTag).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '!!str : bar'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: '!!str'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '!!str'.
							self assert: (self topEntity isOfType: FASTYAMLTag).
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'bar'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'bar'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'bar'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '{
  foo : !!str,
  !!str : bar,
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedEmptyScalarChomping [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedEmptyScalarChomping 	"

	self parse: 'strip: >-


clip: >


keep: |+;'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'strip: >-


clip: >


keep:' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 3.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: 'strip: >-'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'strip'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'strip'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'strip'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '>-'.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '>-'.
				self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: 'clip: >'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'clip'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'clip'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'clip'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '>'.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '>'.
				self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 3).
		self assert: self topEntity sourceCode equals: 'keep:'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'keep'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'keep'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'keep'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'strip: >-


clip: >


keep: |+;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedEmptySeparationLines [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedEmptySeparationLines 	"

	self parse: '>


 folded
 line



 next
 line

   * bullet

   * list
   * line



 last
 line

# Comment;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '>


 folded
 line



 next
 line

   * bullet

   * list
   * line



 last
 line

# Comment;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '>


 folded
 line



 next
 line

   * bullet

   * list
   * line



 last
 line' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '>


 folded
 line



 next
 line

   * bullet

   * list
   * line



 last
 line' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '>


 folded
 line



 next
 line

   * bullet

   * list
   * line



 last
 line' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '# Comment;'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	self assert: self topEntity source equals: '>


 folded
 line



 next
 line

   * bullet

   * list
   * line



 last
 line

# Comment;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedEscapedCharacters [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedEscapedCharacters 	"

	self parse: '"Fun with \\
\" \a \b \e \f
\n \r \t \v \0
\  \_ \N \L \P
\x41 \u0041 \U00000041";'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLEscapeSequence) size equals: 19.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '"Fun with \\
\" \a \b \e \f
\n \r \t \v \0
\  \_ \N \L \P
\x41 \u0041 \U00000041";' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '"Fun with \\
\" \a \b \e \f
\n \r \t \v \0
\  \_ \N \L \P
\x41 \u0041 \U00000041"' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '"Fun with \\
\" \a \b \e \f
\n \r \t \v \0
\  \_ \N \L \P
\x41 \u0041 \U00000041"' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '"Fun with \\
\" \a \b \e \f
\n \r \t \v \0
\  \_ \N \L \P
\x41 \u0041 \U00000041"' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 19.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '\\'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '\"'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '\a'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '\b'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: '\e'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 6).
					self assert: self topEntity sourceCode equals: '\f'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 7).
					self assert: self topEntity sourceCode equals: '\n'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 8).
					self assert: self topEntity sourceCode equals: '\r'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 9).
					self assert: self topEntity sourceCode equals: '\t'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 10).
					self assert: self topEntity sourceCode equals: '\v'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 11).
					self assert: self topEntity sourceCode equals: '\0'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 12).
					self assert: self topEntity sourceCode equals: '\ '.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 13).
					self assert: self topEntity sourceCode equals: '\_'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 14).
					self assert: self topEntity sourceCode equals: '\N'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 15).
					self assert: self topEntity sourceCode equals: '\L'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 16).
					self assert: self topEntity sourceCode equals: '\P'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 17).
					self assert: self topEntity sourceCode equals: '\x41'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 18).
					self assert: self topEntity sourceCode equals: '\u0041'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 19).
					self assert: self topEntity sourceCode equals: '\U00000041'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '"Fun with \\
\" \a \b \e \f
\n \r \t \v \0
\  \_ \N \L \P
\x41 \u0041 \U00000041";' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedExplicitBlockMappingEntries [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedExplicitBlockMappingEntries 	"

	self parse: '? explicit key # Empty value

? |
  block key

: - one # Explicit compact
  - two # block value;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 2.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 3.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '? explicit key # Empty value

? |
  block key

: - one # Explicit compact
  - two # block value;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '? explicit key # Empty value

? |
  block key

: - one # Explicit compact
  - two # block value;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '? explicit key # Empty value

? |
  block key

: - one # Explicit compact
  - two # block value;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '? explicit key'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'explicit key'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'explicit key'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'explicit key'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '# Empty value'.
				self assert: (self topEntity isOfType: FASTYAMLComment).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '? |
  block key

: - one # Explicit compact
  - two # block value;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: '|
  block key' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|
  block key' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '- one # Explicit compact
  - two # block value;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '- one # Explicit compact
  - two # block value;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 4.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '- one'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'one'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'one'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'one'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '# Explicit compact'.
							self assert: (self topEntity isOfType: FASTYAMLComment).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '- two'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'two'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'two'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'two'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '# block value;'.
							self assert: (self topEntity isOfType: FASTYAMLComment)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFinalEmptyLines [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFinalEmptyLines 	"

	self parse: '>
 folded
 line

 next
 line
   * bullet

   * list
   * line

 last
 line



# Comment;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '>
 folded
 line

 next
 line
   * bullet

   * list
   * line

 last
 line



# Comment;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '>
 folded
 line

 next
 line
   * bullet

   * list
   * line

 last
 line' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '>
 folded
 line

 next
 line
   * bullet

   * list
   * line

 last
 line' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '>
 folded
 line

 next
 line
   * bullet

   * list
   * line

 last
 line' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '# Comment;'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	self assert: self topEntity source equals: '>
 folded
 line

 next
 line
   * bullet

   * list
   * line

 last
 line



# Comment;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFloatExamples [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFloatExamples 	"

	self parse: 'negative: !!float -1
zero: !!float 0
positive: !!float 2.3e4
infinity: !!float .inf
not a number: !!float .nan;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 5.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFloatScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 10.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 10.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 5.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'negative: !!float -1
zero: !!float 0
positive: !!float 2.3e4
infinity: !!float .inf
not a number: !!float .nan;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'negative: !!float -1
zero: !!float 0
positive: !!float 2.3e4
infinity: !!float .inf
not a number: !!float .nan;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'negative: !!float -1
zero: !!float 0
positive: !!float 2.3e4
infinity: !!float .inf
not a number: !!float .nan;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 5.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'negative: !!float -1'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'negative'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'negative'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'negative'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!float -1'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!float'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '-1'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '-1'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'zero: !!float 0'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'zero'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'zero'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'zero'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!float 0'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!float'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '0'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'positive: !!float 2.3e4'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'positive'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'positive'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'positive'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!float 2.3e4'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!float'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '2.3e4'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '2.3e4'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'infinity: !!float .inf'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'infinity'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'infinity'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'infinity'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!float .inf'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!float'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '.inf'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '.inf'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: 'not a number: !!float .nan;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'not a number'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'not a number'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'not a number'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!float .nan;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!float'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '.nan;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '.nan;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFloatingPoint [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFloatingPoint 	"

	self parse: 'canonical: 1.23015e+3
exponential: 12.3015e+02
fixed: 1230.15
negative infinity: -.inf
not a number: .NaN;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 5.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFloatScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 10.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 10.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 6.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'canonical: 1.23015e+3
exponential: 12.3015e+02
fixed: 1230.15
negative infinity: -.inf
not a number: .NaN;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'canonical: 1.23015e+3
exponential: 12.3015e+02
fixed: 1230.15
negative infinity: -.inf
not a number: .NaN;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'canonical: 1.23015e+3
exponential: 12.3015e+02
fixed: 1230.15
negative infinity: -.inf
not a number: .NaN;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 5.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'canonical: 1.23015e+3'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'canonical'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'canonical'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'canonical'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '1.23015e+3'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '1.23015e+3'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '1.23015e+3'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'exponential: 12.3015e+02'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'exponential'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'exponential'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'exponential'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '12.3015e+02'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '12.3015e+02'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '12.3015e+02'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'fixed: 1230.15'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'fixed'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'fixed'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'fixed'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '1230.15'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '1230.15'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '1230.15'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'negative infinity: -.inf'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'negative infinity'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'negative infinity'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'negative infinity'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '-.inf'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '-.inf'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '-.inf'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: 'not a number: .NaN;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'not a number'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'not a number'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'not a number'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '.NaN;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.NaN;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '.NaN;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFlowCollectionIndicators [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFlowCollectionIndicators 	"

	self parse: 'sequence: [ one, two, ]
mapping: { sky: blue, sea: green };'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 11.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 9.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 9.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'sequence: [ one, two, ]
mapping: { sky: blue, sea: green };' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'sequence: [ one, two, ]
mapping: { sky: blue, sea: green }' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: 'sequence: [ one, two, ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'sequence'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'sequence'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'sequence'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '[ one, two, ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[ one, two, ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'one'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'one'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'one'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'two'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'two'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'two'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: 'mapping: { sky: blue, sea: green }'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'mapping'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'mapping'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'mapping'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '{ sky: blue, sea: green }'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '{ sky: blue, sea: green }'.
					self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'sky: blue'.
						self assert: (self topEntity isOfType: FASTYAMLFlowPair).
						
						"Testing value of monovalue relation key"
						self assert: self topEntity key isNotNil.

							stack push: self topEntity key.
							self assert: self topEntity sourceCode equals: 'sky'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'sky'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'sky'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						
						"Testing value of monovalue relation value"
						self assert: self topEntity value isNotNil.

							stack push: self topEntity value.
							self assert: self topEntity sourceCode equals: 'blue'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'blue'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'blue'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'sea: green'.
						self assert: (self topEntity isOfType: FASTYAMLFlowPair).
						
						"Testing value of monovalue relation key"
						self assert: self topEntity key isNotNil.

							stack push: self topEntity key.
							self assert: self topEntity sourceCode equals: 'sea'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'sea'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'sea'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						
						"Testing value of monovalue relation value"
						self assert: self topEntity value isNotNil.

							stack push: self topEntity value.
							self assert: self topEntity sourceCode equals: 'green'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'green'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'green'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'sequence: [ one, two, ]
mapping: { sky: blue, sea: green };' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFlowContent [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFlowContent 	"

	self parse: '- [ a, b ]
- { a: b }
- "a"
- ''b''
- c;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 5.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 9.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 5.
	self assert: (fast allWithType: FASTYAMLSingleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 5.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '- [ a, b ]
- { a: b }
- "a"
- ''b''
- c;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- [ a, b ]
- { a: b }
- "a"
- ''b''
- c;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '- [ a, b ]
- { a: b }
- "a"
- ''b''
- c;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 5.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- [ a, b ]'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '[ a, b ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '[ a, b ]'.
						self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'a'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'a'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'a'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'b'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'b'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'b'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- { a: b }'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '{ a: b }'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '{ a: b }'.
						self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'a: b'.
							self assert: (self topEntity isOfType: FASTYAMLFlowPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'a'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'a'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'a'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'b'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'b'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'b'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '- "a"'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '"a"'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '"a"'.
						self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '- ''b'''.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '''b'''.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '''b'''.
						self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: '- c;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'c;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'c;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'c;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFlowMappingAdjacentValues [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFlowMappingAdjacentValues 	"

	self parse: '{
"adjacent":value,
"readable": value,
"empty":
};'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 7.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '{
"adjacent":value,
"readable": value,
"empty":
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '{
"adjacent":value,
"readable": value,
"empty":
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '{
"adjacent":value,
"readable": value,
"empty":
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '{
"adjacent":value,
"readable": value,
"empty":
}' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"adjacent":value'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: '"adjacent"'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"adjacent"'.
							self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'value'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'value'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'value'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"readable": value'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: '"readable"'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"readable"'.
							self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'value'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'value'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'value'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '"empty":'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: '"empty"'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"empty"'.
							self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '{
"adjacent":value,
"readable": value,
"empty":
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFlowMappingEntries [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFlowMappingEntries 	"

	self parse: '{
? explicit: entry,
implicit: entry,
?
};'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 6.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 5.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '{
? explicit: entry,
implicit: entry,
?
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '{
? explicit: entry,
implicit: entry,
?
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '{
? explicit: entry,
implicit: entry,
?
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '{
? explicit: entry,
implicit: entry,
?
}' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '? explicit: entry'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'explicit'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'explicit'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'explicit'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'entry'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'entry'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'entry'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'implicit: entry'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'implicit'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'implicit'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'implicit'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'entry'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'entry'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'entry'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '?'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '{
? explicit: entry,
implicit: entry,
?
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFlowMappingSeparateValues [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFlowMappingSeparateValues 	"

	self parse: '{
unquoted : "separate",
http://foo.com,
omitted value:,
: omitted key,
};'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 7.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 5.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '{
unquoted : "separate",
http://foo.com,
omitted value:,
: omitted key,
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '{
unquoted : "separate",
http://foo.com,
omitted value:,
: omitted key,
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '{
unquoted : "separate",
http://foo.com,
omitted value:,
: omitted key,
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '{
unquoted : "separate",
http://foo.com,
omitted value:,
: omitted key,
}' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 4.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'unquoted : "separate"'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'unquoted'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'unquoted'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'unquoted'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '"separate"'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"separate"'.
							self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'http://foo.com'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'http://foo.com'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'http://foo.com'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'omitted value:'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'omitted value'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'omitted value'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'omitted value'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: ': omitted key'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'omitted key'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'omitted key'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'omitted key'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '{
unquoted : "separate",
http://foo.com,
omitted value:,
: omitted key,
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFlowMappings [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFlowMappings 	"

	self parse: '- { one : two , three: four , }
- {five: six,seven : eight};'.

	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 11.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 4.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 9.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 9.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '- { one : two , three: four , }
- {five: six,seven : eight};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- { one : two , three: four , }
- {five: six,seven : eight}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '- { one : two , three: four , }'.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: '{ one : two , three: four , }'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '{ one : two , three: four , }'.
					self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'one : two'.
						self assert: (self topEntity isOfType: FASTYAMLFlowPair).
						
						"Testing value of monovalue relation key"
						self assert: self topEntity key isNotNil.

							stack push: self topEntity key.
							self assert: self topEntity sourceCode equals: 'one'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'one'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'one'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						
						"Testing value of monovalue relation value"
						self assert: self topEntity value isNotNil.

							stack push: self topEntity value.
							self assert: self topEntity sourceCode equals: 'two'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'two'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'two'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'three: four'.
						self assert: (self topEntity isOfType: FASTYAMLFlowPair).
						
						"Testing value of monovalue relation key"
						self assert: self topEntity key isNotNil.

							stack push: self topEntity key.
							self assert: self topEntity sourceCode equals: 'three'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'three'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'three'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						
						"Testing value of monovalue relation value"
						self assert: self topEntity value isNotNil.

							stack push: self topEntity value.
							self assert: self topEntity sourceCode equals: 'four'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'four'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'four'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{five: six,seven : eight}'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '{five: six,seven : eight}'.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'five: six'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'five'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'five'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'five'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'six'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'six'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'six'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'seven : eight'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'seven'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'seven'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'seven'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'eight'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'eight'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'eight'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '- { one : two , three: four , }
- {five: six,seven : eight};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFlowNodes [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFlowNodes 	"

	self parse: '- !!str "a"
- ''b''
- &anchor "c"
- *anchor
- !!str;'.

	self assert: (fast allWithType: FASTYAMLAlias) size equals: 1.
	self assert: (fast allWithType: FASTYAMLAliasName) size equals: 1.
	self assert: (fast allWithType: FASTYAMLAnchor) size equals: 1.
	self assert: (fast allWithType: FASTYAMLAnchorName) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 5.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 5.
	self assert: (fast allWithType: FASTYAMLSingleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 2.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '- !!str "a"
- ''b''
- &anchor "c"
- *anchor
- !!str;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- !!str "a"
- ''b''
- &anchor "c"
- *anchor
- !!str;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '- !!str "a"
- ''b''
- &anchor "c"
- *anchor
- !!str;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 5.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- !!str "a"'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '!!str "a"'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!str'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"a"'.
						self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- ''b'''.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '''b'''.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '''b'''.
						self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '- &anchor "c"'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '&anchor "c"'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '&anchor'.
						self assert: (self topEntity isOfType: FASTYAMLAnchor).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'anchor'.
							self assert: (self topEntity isOfType: FASTYAMLAnchorName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"c"'.
						self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '- *anchor'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '*anchor'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '*anchor'.
						self assert: (self topEntity isOfType: FASTYAMLAlias).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'anchor'.
							self assert: (self topEntity isOfType: FASTYAMLAliasName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: '- !!str;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '!!str;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!str;'.
						self assert: (self topEntity isOfType: FASTYAMLTag)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFlowSequence [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFlowSequence 	"

	self parse: '- [ one, two, ]
- [three ,four];'.

	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 7.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 5.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '- [ one, two, ]
- [three ,four];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- [ one, two, ]
- [three ,four]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '- [ one, two, ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: '[ one, two, ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[ one, two, ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'one'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'one'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'one'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'two'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'two'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'two'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '[three ,four]'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[three ,four]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'three'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'three'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'three'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'four'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'four'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'four'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '- [ one, two, ]
- [three ,four];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFlowSequenceEntries [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFlowSequenceEntries 	"

	self parse: '[
"double
 quoted", ''single
           quoted'',
plain
 text, [ nested ],
single: pair,
];'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 9.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 5.
	self assert: (fast allWithType: FASTYAMLSingleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '[
"double
 quoted", ''single
           quoted'',
plain
 text, [ nested ],
single: pair,
];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '[
"double
 quoted", ''single
           quoted'',
plain
 text, [ nested ],
single: pair,
]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '[
"double
 quoted", ''single
           quoted'',
plain
 text, [ nested ],
single: pair,
]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[
"double
 quoted", ''single
           quoted'',
plain
 text, [ nested ],
single: pair,
]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 5.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"double
 quoted"' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '"double
 quoted"' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '''single
           quoted''' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '''single
           quoted''' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'plain
 text' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'plain
 text' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'plain
 text' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '[ nested ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '[ nested ]'.
						self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'nested'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'nested'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'nested'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: 'single: pair'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'single'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'single'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'single'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'pair'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'pair'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'pair'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '[
"double
 quoted", ''single
           quoted'',
plain
 text, [ nested ],
single: pair,
];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFoldedLines [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFoldedLines 	"

	self parse: '>

 folded

 line



 next
 line

   * bullet

   * list
   * lines

 last

 line


# Comment;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '>

 folded

 line



 next
 line

   * bullet

   * list
   * lines

 last

 line


# Comment;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '>

 folded

 line



 next
 line

   * bullet

   * list
   * lines

 last

 line' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '>

 folded

 line



 next
 line

   * bullet

   * list
   * lines

 last

 line' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '>

 folded

 line



 next
 line

   * bullet

   * list
   * lines

 last

 line' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '# Comment;'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	self assert: self topEntity source equals: '>

 folded

 line



 next
 line

   * bullet

   * list
   * lines

 last

 line


# Comment;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFoldedNewlinesArePreservedForMoreIndentedAndBlankLines [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFoldedNewlinesArePreservedForMoreIndentedAndBlankLines 	"

	self parse: '>
 Sammy Sosa completed another
 fine season with great stats.

   63 Home Runs
   0.288 Batting Average

 What a year!;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '>
 Sammy Sosa completed another
 fine season with great stats.

   63 Home Runs
   0.288 Batting Average

 What a year!;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '>
 Sammy Sosa completed another
 fine season with great stats.

   63 Home Runs
   0.288 Batting Average

 What a year!;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '>
 Sammy Sosa completed another
 fine season with great stats.

   63 Home Runs
   0.288 Batting Average

 What a year!;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedFoldedScalar [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFoldedScalar 	"

	self parse: '>

 folded

 text;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '>

 folded

 text;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '>

 folded

 text;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '>

 folded

 text;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedGlobalTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedGlobalTags 	"

	self parse: '%TAG ! tag:clarkevans.com,2002:
--- !shape
  # Use the ! handle for presenting
  # tag:clarkevans.com,2002:circle
- !circle
  center: &ORIGIN {x: 73, y: 129}
  radius: 7
- !line
  start: *ORIGIN
  finish: { x: 89, y: 102 }
- !label
  start: *ORIGIN
  color: 0xFFEEBB
  text: Pretty vector drawing.;'.

	self assert: (fast allWithType: FASTYAMLAlias) size equals: 2.
	self assert: (fast allWithType: FASTYAMLAliasName) size equals: 2.
	self assert: (fast allWithType: FASTYAMLAnchor) size equals: 1.
	self assert: (fast allWithType: FASTYAMLAnchorName) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 7.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 3.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 22.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 4.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 18.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 12.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 4.
	self assert: (fast allWithType: FASTYAMLTagDirective) size equals: 1.
	self assert: (fast allWithType: FASTYAMLTagHandle) size equals: 1.
	self assert: (fast allWithType: FASTYAMLTagPrefix) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '%TAG ! tag:clarkevans.com,2002:
--- !shape
  # Use the ! handle for presenting
  # tag:clarkevans.com,2002:circle
- !circle
  center: &ORIGIN {x: 73, y: 129}
  radius: 7
- !line
  start: *ORIGIN
  finish: { x: 89, y: 102 }
- !label
  start: *ORIGIN
  color: 0xFFEEBB
  text: Pretty vector drawing.;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '%TAG ! tag:clarkevans.com,2002:'.
		self assert: (self topEntity isOfType: FASTYAMLTagDirective).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '!'.
			self assert: (self topEntity isOfType: FASTYAMLTagHandle).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'tag:clarkevans.com,2002:'.
			self assert: (self topEntity isOfType: FASTYAMLTagPrefix).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '!shape
  # Use the ! handle for presenting
  # tag:clarkevans.com,2002:circle
- !circle
  center: &ORIGIN {x: 73, y: 129}
  radius: 7
- !line
  start: *ORIGIN
  finish: { x: 89, y: 102 }
- !label
  start: *ORIGIN
  color: 0xFFEEBB
  text: Pretty vector drawing.;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 4.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '!shape'.
			self assert: (self topEntity isOfType: FASTYAMLTag).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '# Use the ! handle for presenting'.
			self assert: (self topEntity isOfType: FASTYAMLComment).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '# tag:clarkevans.com,2002:circle'.
			self assert: (self topEntity isOfType: FASTYAMLComment).
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '- !circle
  center: &ORIGIN {x: 73, y: 129}
  radius: 7
- !line
  start: *ORIGIN
  finish: { x: 89, y: 102 }
- !label
  start: *ORIGIN
  color: 0xFFEEBB
  text: Pretty vector drawing.;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- !circle
  center: &ORIGIN {x: 73, y: 129}
  radius: 7' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '!circle
  center: &ORIGIN {x: 73, y: 129}
  radius: 7' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!circle'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'center: &ORIGIN {x: 73, y: 129}
  radius: 7' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'center: &ORIGIN {x: 73, y: 129}'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'center'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'center'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'center'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '&ORIGIN {x: 73, y: 129}'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 2.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '&ORIGIN'.
									self assert: (self topEntity isOfType: FASTYAMLAnchor).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'ORIGIN'.
										self assert: (self topEntity isOfType: FASTYAMLAnchorName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 2).
									self assert: self topEntity sourceCode equals: '{x: 73, y: 129}'.
									self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 2.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'x: 73'.
										self assert: (self topEntity isOfType: FASTYAMLFlowPair).
										
										"Testing value of monovalue relation key"
										self assert: self topEntity key isNotNil.

											stack push: self topEntity key.
											self assert: self topEntity sourceCode equals: 'x'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'x'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'x'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar).
													stack pop.
												stack pop.
											stack pop.
										
										"Testing value of monovalue relation value"
										self assert: self topEntity value isNotNil.

											stack push: self topEntity value.
											self assert: self topEntity sourceCode equals: '73'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: '73'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: '73'.
													self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
													stack pop.
												stack pop.
											stack pop.
										stack pop.
									
										stack push: (stack top childrenNodes at: 2).
										self assert: self topEntity sourceCode equals: 'y: 129'.
										self assert: (self topEntity isOfType: FASTYAMLFlowPair).
										
										"Testing value of monovalue relation key"
										self assert: self topEntity key isNotNil.

											stack push: self topEntity key.
											self assert: self topEntity sourceCode equals: 'y'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'y'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'y'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar).
													stack pop.
												stack pop.
											stack pop.
										
										"Testing value of monovalue relation value"
										self assert: self topEntity value isNotNil.

											stack push: self topEntity value.
											self assert: self topEntity sourceCode equals: '129'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: '129'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: '129'.
													self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
													stack pop.
												stack pop.
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'radius: 7'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'radius'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'radius'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'radius'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '7'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '7'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: '7'.
										self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- !line
  start: *ORIGIN
  finish: { x: 89, y: 102 }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '!line
  start: *ORIGIN
  finish: { x: 89, y: 102 }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!line'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'start: *ORIGIN
  finish: { x: 89, y: 102 }' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'start: *ORIGIN'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'start'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'start'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'start'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '*ORIGIN'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '*ORIGIN'.
									self assert: (self topEntity isOfType: FASTYAMLAlias).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'ORIGIN'.
										self assert: (self topEntity isOfType: FASTYAMLAliasName).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'finish: { x: 89, y: 102 }'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'finish'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'finish'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'finish'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '{ x: 89, y: 102 }'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '{ x: 89, y: 102 }'.
									self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 2.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'x: 89'.
										self assert: (self topEntity isOfType: FASTYAMLFlowPair).
										
										"Testing value of monovalue relation key"
										self assert: self topEntity key isNotNil.

											stack push: self topEntity key.
											self assert: self topEntity sourceCode equals: 'x'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'x'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'x'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar).
													stack pop.
												stack pop.
											stack pop.
										
										"Testing value of monovalue relation value"
										self assert: self topEntity value isNotNil.

											stack push: self topEntity value.
											self assert: self topEntity sourceCode equals: '89'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: '89'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: '89'.
													self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
													stack pop.
												stack pop.
											stack pop.
										stack pop.
									
										stack push: (stack top childrenNodes at: 2).
										self assert: self topEntity sourceCode equals: 'y: 102'.
										self assert: (self topEntity isOfType: FASTYAMLFlowPair).
										
										"Testing value of monovalue relation key"
										self assert: self topEntity key isNotNil.

											stack push: self topEntity key.
											self assert: self topEntity sourceCode equals: 'y'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: 'y'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'y'.
													self assert: (self topEntity isOfType: FASTYAMLStringScalar).
													stack pop.
												stack pop.
											stack pop.
										
										"Testing value of monovalue relation value"
										self assert: self topEntity value isNotNil.

											stack push: self topEntity value.
											self assert: self topEntity sourceCode equals: '102'.
											self assert: (self topEntity isOfType: FASTYAMLFlowNode).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 1.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: '102'.
												self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: '102'.
													self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
													stack pop.
												stack pop.
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '- !label
  start: *ORIGIN
  color: 0xFFEEBB
  text: Pretty vector drawing.;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '!label
  start: *ORIGIN
  color: 0xFFEEBB
  text: Pretty vector drawing.;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!label'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'start: *ORIGIN
  color: 0xFFEEBB
  text: Pretty vector drawing.;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'start: *ORIGIN'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'start'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'start'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'start'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '*ORIGIN'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '*ORIGIN'.
									self assert: (self topEntity isOfType: FASTYAMLAlias).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'ORIGIN'.
										self assert: (self topEntity isOfType: FASTYAMLAliasName).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'color: 0xFFEEBB'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'color'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'color'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'color'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '0xFFEEBB'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '0xFFEEBB'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: '0xFFEEBB'.
										self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'text: Pretty vector drawing.;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'text'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'text'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'text'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'Pretty vector drawing.;'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'Pretty vector drawing.;'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'Pretty vector drawing.;'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedImplicitBlockMappingEntries [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedImplicitBlockMappingEntries 	"

	self parse: 'plain key: in-line value
: # Both empty
"quoted key":
- entry;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'plain key: in-line value
: # Both empty
"quoted key":
- entry;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'plain key: in-line value
: # Both empty
"quoted key":
- entry;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'plain key: in-line value
: # Both empty
"quoted key":
- entry;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'plain key: in-line value'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'plain key'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'plain key'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'plain key'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: 'in-line value'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'in-line value'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'in-line value'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: ':'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '# Both empty'.
				self assert: (self topEntity isOfType: FASTYAMLComment).
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '"quoted key":
- entry;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: '"quoted key"'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '"quoted key"'.
						self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '- entry;'.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '- entry;'.
						self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '- entry;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'entry;'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'entry;'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'entry;'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedInLiteralsNewlinesArePreserved [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInLiteralsNewlinesArePreserved 	"

	self parse: '# ASCII Art
--- |
  \//||\/||
  // ||  ||__;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '# ASCII Art
--- |
  \//||\/||
  // ||  ||__;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '# ASCII Art'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '--- |
  \//||\/||
  // ||  ||__;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '|
  \//||\/||
  // ||  ||__;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '|
  \//||\/||
  // ||  ||__;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '# ASCII Art
--- |
  \//||\/||
  // ||  ||__;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedInTheFoldedScalarsNewlinesBecomeSpaces [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInTheFoldedScalarsNewlinesBecomeSpaces 	"

	self parse: '--- >
  Mark McGwire''s
  year was crippled
  by a knee injury.;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '--- >
  Mark McGwire''s
  year was crippled
  by a knee injury.;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '>
  Mark McGwire''s
  year was crippled
  by a knee injury.;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '>
  Mark McGwire''s
  year was crippled
  by a knee injury.;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedIndentationDeterminesScope [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedIndentationDeterminesScope 	"

	self parse: 'name: Mark McGwire
accomplishment: >
  Mark set a major league
  home run record in 1998.
stats: |
  65 Home Runs
  0.278 Batting Average;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 4.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'name: Mark McGwire
accomplishment: >
  Mark set a major league
  home run record in 1998.
stats: |
  65 Home Runs
  0.278 Batting Average;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'name: Mark McGwire
accomplishment: >
  Mark set a major league
  home run record in 1998.
stats: |
  65 Home Runs
  0.278 Batting Average;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'name: Mark McGwire
accomplishment: >
  Mark set a major league
  home run record in 1998.
stats: |
  65 Home Runs
  0.278 Batting Average;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'name: Mark McGwire'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'name'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'name'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'name'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: 'Mark McGwire'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Mark McGwire'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Mark McGwire'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'accomplishment: >
  Mark set a major league
  home run record in 1998.' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'accomplishment'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'accomplishment'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'accomplishment'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '>
  Mark set a major league
  home run record in 1998.' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '>
  Mark set a major league
  home run record in 1998.' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'stats: |
  65 Home Runs
  0.278 Batting Average;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'stats'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'stats'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'stats'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '|
  65 Home Runs
  0.278 Batting Average;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '|
  65 Home Runs
  0.278 Batting Average;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedIntExamples [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedIntExamples 	"

	self parse: 'negative: !!int -12
zero: !!int 0
positive: !!int 34;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 6.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 3.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'negative: !!int -12
zero: !!int 0
positive: !!int 34;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'negative: !!int -12
zero: !!int 0
positive: !!int 34;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'negative: !!int -12
zero: !!int 0
positive: !!int 34;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'negative: !!int -12'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'negative'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'negative'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'negative'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!int -12'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!int'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '-12'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '-12'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'zero: !!int 0'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'zero'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'zero'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'zero'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!int 0'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!int'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '0'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'positive: !!int 34;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'positive'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'positive'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'positive'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!int 34;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!int'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '34;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '34;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedIntegers [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedIntegers 	"

	self parse: 'canonical: 12345
decimal: +12345
octal: 0o14
hexadecimal: 0xC;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 8.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 8.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 5.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'canonical: 12345
decimal: +12345
octal: 0o14
hexadecimal: 0xC;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'canonical: 12345
decimal: +12345
octal: 0o14
hexadecimal: 0xC;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'canonical: 12345
decimal: +12345
octal: 0o14
hexadecimal: 0xC;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'canonical: 12345'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'canonical'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'canonical'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'canonical'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '12345'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '12345'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '12345'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'decimal: +12345'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'decimal'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'decimal'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'decimal'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '+12345'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '+12345'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '+12345'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'octal: 0o14'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'octal'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'octal'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'octal'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '0o14'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0o14'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0o14'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'hexadecimal: 0xC;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'hexadecimal'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'hexadecimal'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'hexadecimal'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '0xC;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0xC;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0xC;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedInvalidByteOrderMark [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInvalidByteOrderMark 	"

	self parse: '- Invalid use of BOM

- Inside a document.;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 2.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '- Invalid use of BOM

- Inside a document.;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- Invalid use of BOM

- Inside a document.;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '- Invalid use of BOM

- Inside a document.;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- Invalid use of BOM'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Invalid use of BOM'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Invalid use of BOM'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Invalid use of BOM'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- Inside a document.;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Inside a document.;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Inside a document.;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Inside a document.;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedInvalidEscapedCharacters [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInvalidEscapedCharacters 	"

	self parse: 'Bad escapes:
  "\c
  \xq-";'.

	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'Bad escapes'.
	self assert: (self topEntity isOfType: FASTYAMLFlowNode).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'Bad escapes'.
		self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: 'Bad escapes'.
			self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedInvalidImplicitKeys [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInvalidImplicitKeys 	"

	self parse: '[ foo
 bar: invalid,
 "foo...>1K characters...bar": invalid ];'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 6.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 4.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '[ foo
 bar: invalid,
 "foo...>1K characters...bar": invalid ];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '[ foo
 bar: invalid,
 "foo...>1K characters...bar": invalid ]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '[ foo
 bar: invalid,
 "foo...>1K characters...bar": invalid ]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[ foo
 bar: invalid,
 "foo...>1K characters...bar": invalid ]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'foo
 bar: invalid' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'foo
 bar' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'foo
 bar' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'foo
 bar' withPlatformLineEndings.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'invalid'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'invalid'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'invalid'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"foo...>1K characters...bar": invalid'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: '"foo...>1K characters...bar"'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"foo...>1K characters...bar"'.
							self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'invalid'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'invalid'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'invalid'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '[ foo
 bar: invalid,
 "foo...>1K characters...bar": invalid ];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedInvalidUseOfReservedIndicators [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInvalidUseOfReservedIndicators 	"

	self parse: 'commercial-at: @text
grave-accent: `text;'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'commercial-at:'.
	self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
	
	"Testing value of monovalue relation key"
	self assert: self topEntity key isNotNil.

		stack push: self topEntity key.
		self assert: self topEntity sourceCode equals: 'commercial-at'.
		self assert: (self topEntity isOfType: FASTYAMLFlowNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'commercial-at'.
			self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'commercial-at'.
				self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedJSONTagResolution [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedJSONTagResolution 	"

	self parse: 'A null: null
Booleans: [ true, false ]
Integers: [ 0, -0, 3, -19 ]
Floats: [ 0., -0.0, 12e03, -2E+05 ]
Invalid: [ True, Null, 0o7, 0x3A, +12.3 ];'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 5.
	self assert: (fast allWithType: FASTYAMLBooleanScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFloatScalar) size equals: 5.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 25.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 4.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLNullScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 21.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'A null: null
Booleans: [ true, false ]
Integers: [ 0, -0, 3, -19 ]
Floats: [ 0., -0.0, 12e03, -2E+05 ]
Invalid: [ True, Null, 0o7, 0x3A, +12.3 ]' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 5.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: 'A null: null'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'A null'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'A null'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'A null'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: 'null'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'null'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'null'.
					self assert: (self topEntity isOfType: FASTYAMLNullScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: 'Booleans: [ true, false ]'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Booleans'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Booleans'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Booleans'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '[ true, false ]'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[ true, false ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'true'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'true'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'true'.
							self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'false'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'false'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'false'.
							self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 3).
		self assert: self topEntity sourceCode equals: 'Integers: [ 0, -0, 3, -19 ]'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Integers'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Integers'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Integers'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '[ 0, -0, 3, -19 ]'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[ 0, -0, 3, -19 ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 4.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '0'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '-0'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '-0'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '-0'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '3'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '3'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '3'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '-19'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '-19'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '-19'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 4).
		self assert: self topEntity sourceCode equals: 'Floats: [ 0., -0.0, 12e03, -2E+05 ]'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Floats'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Floats'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Floats'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '[ 0., -0.0, 12e03, -2E+05 ]'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[ 0., -0.0, 12e03, -2E+05 ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 4.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '0.'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0.'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0.'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '-0.0'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '-0.0'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '-0.0'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '12e03'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '12e03'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '12e03'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '-2E+05'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '-2E+05'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '-2E+05'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 5).
		self assert: self topEntity sourceCode equals: 'Invalid: [ True, Null, 0o7, 0x3A, +12.3 ]'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Invalid'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Invalid'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Invalid'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '[ True, Null, 0o7, 0x3A, +12.3 ]'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[ True, Null, 0o7, 0x3A, +12.3 ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 5.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'True'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'True'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'True'.
							self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Null'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Null'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Null'.
							self assert: (self topEntity isOfType: FASTYAMLNullScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '0o7'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0o7'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0o7'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '0x3A'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0x3A'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0x3A'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: '+12.3'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '+12.3'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '+12.3'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'A null: null
Booleans: [ true, false ]
Integers: [ 0, -0, 3, -19 ]
Floats: [ 0., -0.0, 12e03, -2E+05 ]
Invalid: [ True, Null, 0o7, 0x3A, +12.3 ];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedLineBreakCharacters [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedLineBreakCharacters 	"

	self parse: '|
  Line break (no glyph)
  Line break (glyphed);'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '|
  Line break (no glyph)
  Line break (glyphed);' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '|
  Line break (no glyph)
  Line break (glyphed);' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '|
  Line break (no glyph)
  Line break (glyphed);' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedLiteralContent [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedLiteralContent 	"

	self parse: '|


  literal




  text



 # Comment;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '|


  literal




  text



 # Comment;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '|


  literal




  text' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '|


  literal




  text' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '|


  literal




  text' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '# Comment;'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	self assert: self topEntity source equals: '|


  literal




  text



 # Comment;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedLiteralScalar [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedLiteralScalar 	"

	self parse: '|

 literal

 	text;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '|

 literal

 	text;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '|

 literal

 	text;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '|

 literal

 	text;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedLongStringScalarSCHARMAXInLength [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedLongStringScalarSCHARMAXInLength 	"

	self parse: 'long:
  abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdef1234567890!@#$%^&*()_+{}|:"<>?`-=[]\;'',./almostat128chars!:
    {};'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'long:
  abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdef1234567890!@#$%^&*()_+{}|:"<>?`-=[]\;'',./almostat128chars!:
    {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'long:
  abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdef1234567890!@#$%^&*()_+{}|:"<>?`-=[]\;'',./almostat128chars!:
    {}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 3.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: 'long'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'long'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'long'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdef1234567890!@#$%^&*()_+{}|:"<>?`-=[]\;'',./almostat128chars!'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdef1234567890!@#$%^&*()_+{}|:"<>?`-=[]\;'',./almostat128chars!'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdef1234567890!@#$%^&*()_+{}|:"<>?`-=[]\;'',./almostat128chars!'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 3).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '{}'.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'long:
  abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdef1234567890!@#$%^&*()_+{}|:"<>?`-=[]\;'',./almostat128chars!:
    {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedMapExamples [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMapExamples 	"

	self parse: 'Block style: !!map
  Clark : Evans
  Ingy  : döt Net
  Oren  : Ben-Kiki

Flow style: !!map { Clark: Evans, Ingy: döt Net, Oren: Ben-Kiki };'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 5.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 15.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 14.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 14.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'Block style: !!map
  Clark : Evans
  Ingy  : döt Net
  Oren  : Ben-Kiki

Flow style: !!map { Clark: Evans, Ingy: döt Net, Oren: Ben-Kiki }' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: 'Block style: !!map
  Clark : Evans
  Ingy  : döt Net
  Oren  : Ben-Kiki' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Block style'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Block style'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Block style'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '!!map
  Clark : Evans
  Ingy  : döt Net
  Oren  : Ben-Kiki' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '!!map'.
				self assert: (self topEntity isOfType: FASTYAMLTag).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Clark : Evans
  Ingy  : döt Net
  Oren  : Ben-Kiki' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Clark : Evans'.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'Clark'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Clark'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Clark'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'Evans'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Evans'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Evans'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Ingy  : döt Net'.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'Ingy'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Ingy'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Ingy'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'döt Net'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'döt Net'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'döt Net'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'Oren  : Ben-Kiki'.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'Oren'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Oren'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Oren'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'Ben-Kiki'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Ben-Kiki'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Ben-Kiki'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: 'Flow style: !!map { Clark: Evans, Ingy: döt Net, Oren: Ben-Kiki }'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Flow style'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Flow style'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Flow style'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '!!map { Clark: Evans, Ingy: döt Net, Oren: Ben-Kiki }'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '!!map'.
				self assert: (self topEntity isOfType: FASTYAMLTag).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '{ Clark: Evans, Ingy: döt Net, Oren: Ben-Kiki }'.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Clark: Evans'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'Clark'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Clark'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Clark'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'Evans'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Evans'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Evans'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Ingy: döt Net'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'Ingy'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Ingy'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Ingy'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'döt Net'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'döt Net'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'döt Net'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'Oren: Ben-Kiki'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'Oren'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Oren'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Oren'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'Ben-Kiki'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Ben-Kiki'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Ben-Kiki'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'Block style: !!map
  Clark : Evans
  Ingy  : döt Net
  Oren  : Ben-Kiki

Flow style: !!map { Clark: Evans, Ingy: döt Net, Oren: Ben-Kiki };' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedMappingBetweenSequences [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMappingBetweenSequences 	"

	self parse: '? - Detroit Tigers
  - Chicago cubs
:
  - 2001-07-23

? [ New York Yankees,
    Atlanta Braves ]
: [ 2001-07-02, 2001-08-12,
    2001-08-14 ];'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 3.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 10.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 8.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 8.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '? - Detroit Tigers
  - Chicago cubs
:
  - 2001-07-23

? [ New York Yankees,
    Atlanta Braves ]
: [ 2001-07-02, 2001-08-12,
    2001-08-14 ]' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '? - Detroit Tigers
  - Chicago cubs
:
  - 2001-07-23' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: '- Detroit Tigers
  - Chicago cubs' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- Detroit Tigers
  - Chicago cubs' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '- Detroit Tigers'.
					self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Detroit Tigers'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Detroit Tigers'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Detroit Tigers'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '- Chicago cubs'.
					self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Chicago cubs'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Chicago cubs'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Chicago cubs'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '- 2001-07-23'.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- 2001-07-23'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '- 2001-07-23'.
					self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '2001-07-23'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '2001-07-23'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '2001-07-23'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: '? [ New York Yankees,
    Atlanta Braves ]
: [ 2001-07-02, 2001-08-12,
    2001-08-14 ]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: '[ New York Yankees,
    Atlanta Braves ]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[ New York Yankees,
    Atlanta Braves ]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'New York Yankees'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'New York Yankees'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'New York Yankees'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Atlanta Braves'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Atlanta Braves'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Atlanta Braves'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '[ 2001-07-02, 2001-08-12,
    2001-08-14 ]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[ 2001-07-02, 2001-08-12,
    2001-08-14 ]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '2001-07-02'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2001-07-02'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '2001-07-02'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '2001-08-12'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2001-08-12'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '2001-08-12'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '2001-08-14'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2001-08-14'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '2001-08-14'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '? - Detroit Tigers
  - Chicago cubs
:
  - 2001-07-23

? [ New York Yankees,
    Atlanta Braves ]
: [ 2001-07-02, 2001-08-12,
    2001-08-14 ];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedMappingOfMappings [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMappingOfMappings 	"

	self parse: 'Mark McGwire: {hr: 65, avg: 0.278}
Sammy Sosa: {
    hr: 63,
    avg: 0.288
  };'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFloatScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 12.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 4.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 10.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'Mark McGwire: {hr: 65, avg: 0.278}
Sammy Sosa: {
    hr: 63,
    avg: 0.288
  }' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: 'Mark McGwire: {hr: 65, avg: 0.278}'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Mark McGwire'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Mark McGwire'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Mark McGwire'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '{hr: 65, avg: 0.278}'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '{hr: 65, avg: 0.278}'.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'hr: 65'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'hr'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'hr'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'hr'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '65'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '65'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '65'.
								self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'avg: 0.278'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'avg'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'avg'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'avg'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '0.278'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '0.278'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '0.278'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: 'Sammy Sosa: {
    hr: 63,
    avg: 0.288
  }' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '{
    hr: 63,
    avg: 0.288
  }' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '{
    hr: 63,
    avg: 0.288
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'hr: 63'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'hr'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'hr'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'hr'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '63'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '63'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '63'.
								self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'avg: 0.288'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'avg'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'avg'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'avg'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '0.288'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '0.288'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '0.288'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'Mark McGwire: {hr: 65, avg: 0.278}
Sammy Sosa: {
    hr: 63,
    avg: 0.288
  };' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedMappingScalarsToScalarsPlayerStatistics [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMappingScalarsToScalarsPlayerStatistics 	"

	self parse: 'hr:  65    # Home runs
avg: 0.278 # Batting average
rbi: 147   # Runs Batted In;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 3.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFloatScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 6.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'hr:  65    # Home runs
avg: 0.278 # Batting average
rbi: 147   # Runs Batted In;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'hr:  65    # Home runs
avg: 0.278 # Batting average
rbi: 147   # Runs Batted In;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'hr:  65    # Home runs
avg: 0.278 # Batting average
rbi: 147   # Runs Batted In;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 6.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'hr:  65'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'hr'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'hr'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'hr'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '65'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '65'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '65'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '# Home runs'.
				self assert: (self topEntity isOfType: FASTYAMLComment).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'avg: 0.278'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'avg'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'avg'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'avg'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '0.278'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0.278'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0.278'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '# Batting average'.
				self assert: (self topEntity isOfType: FASTYAMLComment).
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: 'rbi: 147'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'rbi'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'rbi'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'rbi'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '147'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '147'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '147'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 6).
				self assert: self topEntity sourceCode equals: '# Runs Batted In;'.
				self assert: (self topEntity isOfType: FASTYAMLComment)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedMappingScalarsToSequencesBallClubsInEachLeague [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMappingScalarsToSequencesBallClubsInEachLeague 	"

	self parse: 'american:
  - Boston Red Sox
  - Detroit Tigers
  - New York Yankees
national:
  - New York Mets
  - Chicago Cubs
  - Atlanta Braves;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 6.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 8.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 8.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 8.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'american:
  - Boston Red Sox
  - Detroit Tigers
  - New York Yankees
national:
  - New York Mets
  - Chicago Cubs
  - Atlanta Braves;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'american:
  - Boston Red Sox
  - Detroit Tigers
  - New York Yankees
national:
  - New York Mets
  - Chicago Cubs
  - Atlanta Braves;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'american:
  - Boston Red Sox
  - Detroit Tigers
  - New York Yankees
national:
  - New York Mets
  - Chicago Cubs
  - Atlanta Braves;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'american:
  - Boston Red Sox
  - Detroit Tigers
  - New York Yankees' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'american'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'american'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'american'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '- Boston Red Sox
  - Detroit Tigers
  - New York Yankees' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '- Boston Red Sox
  - Detroit Tigers
  - New York Yankees' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '- Boston Red Sox'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Boston Red Sox'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'Boston Red Sox'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'Boston Red Sox'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '- Detroit Tigers'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Detroit Tigers'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'Detroit Tigers'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'Detroit Tigers'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '- New York Yankees'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'New York Yankees'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'New York Yankees'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'New York Yankees'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'national:
  - New York Mets
  - Chicago Cubs
  - Atlanta Braves;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'national'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'national'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'national'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '- New York Mets
  - Chicago Cubs
  - Atlanta Braves;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '- New York Mets
  - Chicago Cubs
  - Atlanta Braves;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '- New York Mets'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'New York Mets'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'New York Mets'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'New York Mets'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '- Chicago Cubs'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Chicago Cubs'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'Chicago Cubs'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'Chicago Cubs'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '- Atlanta Braves;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Atlanta Braves;'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'Atlanta Braves;'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'Atlanta Braves;'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedMiscellaneous [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMiscellaneous 	"

	self parse: 'null:
booleans: [ true, false ]
string: ''012345'';'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBooleanScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 8.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLNullScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLSingleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'null:
booleans: [ true, false ]
string: ''012345'';' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'null:
booleans: [ true, false ]
string: ''012345''' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 3.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: 'null:'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'null'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'null'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'null'.
						self assert: (self topEntity isOfType: FASTYAMLNullScalar).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: 'booleans: [ true, false ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'booleans'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'booleans'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'booleans'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '[ true, false ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[ true, false ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'true'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'true'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'true'.
								self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'false'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'false'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'false'.
								self assert: (self topEntity isOfType: FASTYAMLBooleanScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 3).
			self assert: self topEntity sourceCode equals: 'string: ''012345'''.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'string'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'string'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'string'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '''012345'''.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '''012345'''.
					self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'null:
booleans: [ true, false ]
string: ''012345'';' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedMoreIndentedLines [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMoreIndentedLines 	"

	self parse: '>

 folded
 line

 next
 line
   * bullet



   * list

   * lines


 last
 line

# Comment;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '>

 folded
 line

 next
 line
   * bullet



   * list

   * lines


 last
 line

# Comment;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '>

 folded
 line

 next
 line
   * bullet



   * list

   * lines


 last
 line' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '>

 folded
 line

 next
 line
   * bullet



   * list

   * lines


 last
 line' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '>

 folded
 line

 next
 line
   * bullet



   * list

   * lines


 last
 line' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '# Comment;'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	self assert: self topEntity source equals: '>

 folded
 line

 next
 line
   * bullet



   * list

   * lines


 last
 line

# Comment;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedMultilineFlowScalars [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMultilineFlowScalars 	"

	self parse: 'plain:
  This unquoted scalar
  spans many lines.

quoted: "So does this
  quoted scalar.\n";'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLEscapeSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'plain:
  This unquoted scalar
  spans many lines.

quoted: "So does this
  quoted scalar.\n"' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: 'plain:
  This unquoted scalar
  spans many lines.' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'plain'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'plain'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'plain'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: 'This unquoted scalar
  spans many lines.' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'This unquoted scalar
  spans many lines.' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'This unquoted scalar
  spans many lines.' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: 'quoted: "So does this
  quoted scalar.\n"' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'quoted'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'quoted'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'quoted'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '"So does this
  quoted scalar.\n"' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '"So does this
  quoted scalar.\n"' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '\n'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'plain:
  This unquoted scalar
  spans many lines.

quoted: "So does this
  quoted scalar.\n";' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedNodePropertyIndicators [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNodePropertyIndicators 	"

	self parse: 'anchored: !local &anchor value
alias: *anchor;'.

	self assert: (fast allWithType: FASTYAMLAlias) size equals: 1.
	self assert: (fast allWithType: FASTYAMLAliasName) size equals: 1.
	self assert: (fast allWithType: FASTYAMLAnchor) size equals: 1.
	self assert: (fast allWithType: FASTYAMLAnchorName) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'anchored: !local &anchor value
alias: *anchor;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'anchored: !local &anchor value
alias: *anchor;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'anchored: !local &anchor value
alias: *anchor;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'anchored: !local &anchor value'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'anchored'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'anchored'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'anchored'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!local &anchor value'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!local'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '&anchor'.
						self assert: (self topEntity isOfType: FASTYAMLAnchor).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'anchor'.
							self assert: (self topEntity isOfType: FASTYAMLAnchorName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: 'value'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'value'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'alias: *anchor;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'alias'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'alias'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'alias'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '*anchor;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '*anchor;'.
						self assert: (self topEntity isOfType: FASTYAMLAlias).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'anchor;'.
							self assert: (self topEntity isOfType: FASTYAMLAliasName)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedNullExamples [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNullExamples 	"

	self parse: '!!null null: value for null key
key with null value: !!null null;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLNullScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 2.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '!!null null: value for null key
key with null value: !!null null;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '!!null null: value for null key
key with null value: !!null null;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '!!null null: value for null key
key with null value: !!null null;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '!!null null: value for null key'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: '!!null null'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!null'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'null'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'null'.
							self assert: (self topEntity isOfType: FASTYAMLNullScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: 'value for null key'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'value for null key'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'value for null key'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'key with null value: !!null null;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'key with null value'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'key with null value'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'key with null value'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '!!null null;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '!!null'.
						self assert: (self topEntity isOfType: FASTYAMLTag).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'null;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'null;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedOrderedMappings [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedOrderedMappings 	"

	self parse: '# Ordered maps are represented as
# A sequence of mappings, with
# each mapping having one key
--- !!omap
- Mark McGwire: 65
- Sammy Sosa: 63
- Ken Griffy: 58;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 3.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 3.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 6.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '# Ordered maps are represented as
# A sequence of mappings, with
# each mapping having one key
--- !!omap
- Mark McGwire: 65
- Sammy Sosa: 63
- Ken Griffy: 58;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 4.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '# Ordered maps are represented as'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '# A sequence of mappings, with'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '# each mapping having one key'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '--- !!omap
- Mark McGwire: 65
- Sammy Sosa: 63
- Ken Griffy: 58;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '!!omap
- Mark McGwire: 65
- Sammy Sosa: 63
- Ken Griffy: 58;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '!!omap'.
				self assert: (self topEntity isOfType: FASTYAMLTag).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- Mark McGwire: 65
- Sammy Sosa: 63
- Ken Griffy: 58;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '- Mark McGwire: 65'.
					self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Mark McGwire: 65'.
						self assert: (self topEntity isOfType: FASTYAMLBlockNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Mark McGwire: 65'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'Mark McGwire: 65'.
								self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
								
								"Testing value of monovalue relation key"
								self assert: self topEntity key isNotNil.

									stack push: self topEntity key.
									self assert: self topEntity sourceCode equals: 'Mark McGwire'.
									self assert: (self topEntity isOfType: FASTYAMLFlowNode).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'Mark McGwire'.
										self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
										
										"Testing value of monovalue relation childrenNode"
										self assert: self topEntity childrenNode isNotNil.

											stack push: self topEntity childrenNode.
											self assert: self topEntity sourceCode equals: 'Mark McGwire'.
											self assert: (self topEntity isOfType: FASTYAMLStringScalar).
											stack pop.
										stack pop.
									stack pop.
								
								"Testing value of monovalue relation value"
								self assert: self topEntity value isNotNil.

									stack push: self topEntity value.
									self assert: self topEntity sourceCode equals: '65'.
									self assert: (self topEntity isOfType: FASTYAMLFlowNode).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: '65'.
										self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
										
										"Testing value of monovalue relation childrenNode"
										self assert: self topEntity childrenNode isNotNil.

											stack push: self topEntity childrenNode.
											self assert: self topEntity sourceCode equals: '65'.
											self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '- Sammy Sosa: 63'.
					self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Sammy Sosa: 63'.
						self assert: (self topEntity isOfType: FASTYAMLBlockNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Sammy Sosa: 63'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'Sammy Sosa: 63'.
								self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
								
								"Testing value of monovalue relation key"
								self assert: self topEntity key isNotNil.

									stack push: self topEntity key.
									self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
									self assert: (self topEntity isOfType: FASTYAMLFlowNode).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
										self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
										
										"Testing value of monovalue relation childrenNode"
										self assert: self topEntity childrenNode isNotNil.

											stack push: self topEntity childrenNode.
											self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
											self assert: (self topEntity isOfType: FASTYAMLStringScalar).
											stack pop.
										stack pop.
									stack pop.
								
								"Testing value of monovalue relation value"
								self assert: self topEntity value isNotNil.

									stack push: self topEntity value.
									self assert: self topEntity sourceCode equals: '63'.
									self assert: (self topEntity isOfType: FASTYAMLFlowNode).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: '63'.
										self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
										
										"Testing value of monovalue relation childrenNode"
										self assert: self topEntity childrenNode isNotNil.

											stack push: self topEntity childrenNode.
											self assert: self topEntity sourceCode equals: '63'.
											self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '- Ken Griffy: 58;'.
					self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Ken Griffy: 58;'.
						self assert: (self topEntity isOfType: FASTYAMLBlockNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Ken Griffy: 58;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'Ken Griffy: 58;'.
								self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
								
								"Testing value of monovalue relation key"
								self assert: self topEntity key isNotNil.

									stack push: self topEntity key.
									self assert: self topEntity sourceCode equals: 'Ken Griffy'.
									self assert: (self topEntity isOfType: FASTYAMLFlowNode).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'Ken Griffy'.
										self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
										
										"Testing value of monovalue relation childrenNode"
										self assert: self topEntity childrenNode isNotNil.

											stack push: self topEntity childrenNode.
											self assert: self topEntity sourceCode equals: 'Ken Griffy'.
											self assert: (self topEntity isOfType: FASTYAMLStringScalar).
											stack pop.
										stack pop.
									stack pop.
								
								"Testing value of monovalue relation value"
								self assert: self topEntity value isNotNil.

									stack push: self topEntity value.
									self assert: self topEntity sourceCode equals: '58;'.
									self assert: (self topEntity isOfType: FASTYAMLFlowNode).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: '58;'.
										self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
										
										"Testing value of monovalue relation childrenNode"
										self assert: self topEntity childrenNode isNotNil.

											stack push: self topEntity childrenNode.
											self assert: self topEntity sourceCode equals: '58;'.
											self assert: (self topEntity isOfType: FASTYAMLStringScalar).
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '# Ordered maps are represented as
# A sequence of mappings, with
# each mapping having one key
--- !!omap
- Mark McGwire: 65
- Sammy Sosa: 63
- Ken Griffy: 58;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedPlainCharacters [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPlainCharacters 	"

	self parse: '# Outside flow collection:
- ::vector
- ": - ()"
- Up, up, and away!
- -123
- http://example.com/foo#bar
# Inside flow collection:
- [ ::vector,
  ": - ()",
  "Up, up and away!",
  -123,
  http://example.com/foo#bar ];'.

	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 6.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 11.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 7.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '# Outside flow collection:
- ::vector
- ": - ()"
- Up, up, and away!
- -123
- http://example.com/foo#bar
# Inside flow collection:
- [ ::vector,
  ": - ()",
  "Up, up and away!",
  -123,
  http://example.com/foo#bar ]' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 8.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '# Outside flow collection:'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: '- ::vector'.
		self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: '::vector'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '::vector'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '::vector'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 3).
		self assert: self topEntity sourceCode equals: '- ": - ()"'.
		self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: '": - ()"'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '": - ()"'.
				self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 4).
		self assert: self topEntity sourceCode equals: '- Up, up, and away!'.
		self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: 'Up, up, and away!'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Up, up, and away!'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Up, up, and away!'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 5).
		self assert: self topEntity sourceCode equals: '- -123'.
		self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: '-123'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '-123'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '-123'.
					self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 6).
		self assert: self topEntity sourceCode equals: '- http://example.com/foo#bar'.
		self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: 'http://example.com/foo#bar'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'http://example.com/foo#bar'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'http://example.com/foo#bar'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 7).
		self assert: self topEntity sourceCode equals: '# Inside flow collection:'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top genericChildren at: 8).
		self assert: self topEntity sourceCode equals: '- [ ::vector,
  ": - ()",
  "Up, up and away!",
  -123,
  http://example.com/foo#bar ]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: '[ ::vector,
  ": - ()",
  "Up, up and away!",
  -123,
  http://example.com/foo#bar ]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[ ::vector,
  ": - ()",
  "Up, up and away!",
  -123,
  http://example.com/foo#bar ]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 5.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '::vector'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '::vector'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '::vector'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '": - ()"'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '": - ()"'.
						self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '"Up, up and away!"'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '"Up, up and away!"'.
						self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '-123'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '-123'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '-123'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: 'http://example.com/foo#bar'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'http://example.com/foo#bar'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'http://example.com/foo#bar'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '# Outside flow collection:
- ::vector
- ": - ()"
- Up, up, and away!
- -123
- http://example.com/foo#bar
# Inside flow collection:
- [ ::vector,
  ": - ()",
  "Up, up and away!",
  -123,
  http://example.com/foo#bar ];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedPlainImplicitKeys [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPlainImplicitKeys 	"

	self parse: 'implicit block key : [
  implicit flow key : value,
 ];'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 5.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 4.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 4.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'implicit block key : [
  implicit flow key : value,
 ];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'implicit block key : [
  implicit flow key : value,
 ]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: 'implicit block key : [
  implicit flow key : value,
 ]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'implicit block key'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'implicit block key'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'implicit block key'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '[
  implicit flow key : value,
 ]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[
  implicit flow key : value,
 ]' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'implicit flow key : value'.
						self assert: (self topEntity isOfType: FASTYAMLFlowPair).
						
						"Testing value of monovalue relation key"
						self assert: self topEntity key isNotNil.

							stack push: self topEntity key.
							self assert: self topEntity sourceCode equals: 'implicit flow key'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'implicit flow key'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'implicit flow key'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						
						"Testing value of monovalue relation value"
						self assert: self topEntity value isNotNil.

							stack push: self topEntity value.
							self assert: self topEntity sourceCode equals: 'value'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'value'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'value'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'implicit block key : [
  implicit flow key : value,
 ];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedPlainLines [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPlainLines 	"

	self parse: '1st non-empty



 2nd non-empty
	3rd non-empty;'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '1st non-empty



 2nd non-empty
	3rd non-empty;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '1st non-empty



 2nd non-empty
	3rd non-empty;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLFlowNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '1st non-empty



 2nd non-empty
	3rd non-empty;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: '1st non-empty



 2nd non-empty
	3rd non-empty;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedQuotedScalarIndicators [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedQuotedScalarIndicators 	"

	self parse: 'single: ''text''
double: "text";'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 5.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLSingleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'single: ''text''
double: "text";' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'single: ''text''
double: "text"' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: 'single: ''text'''.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'single'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'single'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'single'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '''text'''.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '''text'''.
					self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: 'double: "text"'.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: 'double'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'double'.
					self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'double'.
						self assert: (self topEntity isOfType: FASTYAMLStringScalar).
						stack pop.
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '"text"'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"text"'.
					self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'single: ''text''
double: "text";' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedQuotedScalars [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedQuotedScalars 	"

	self parse: 'unicode: "Sosa did fine.\u263A"
control: "\b1998\t1999\t2000\n"
hex esc: "\x0d\x0a is \r\n"

single: ''"Howdy!" he cried.''
quoted: '' # Not a ''''comment''''.''
tie-fighter: ''|\-*-/|'';'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 6.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLEscapeSequence) size equals: 11.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 12.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 6.
	self assert: (fast allWithType: FASTYAMLSingleQuoteScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'unicode: "Sosa did fine.\u263A"
control: "\b1998\t1999\t2000\n"
hex esc: "\x0d\x0a is \r\n"

single: ''"Howdy!" he cried.''
quoted: '' # Not a ''''comment''''.''
tie-fighter: ''|\-*-/|''' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 6.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: 'unicode: "Sosa did fine.\u263A"'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'unicode'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'unicode'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'unicode'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '"Sosa did fine.\u263A"'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '"Sosa did fine.\u263A"'.
				self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '\u263A'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: 'control: "\b1998\t1999\t2000\n"'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'control'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'control'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'control'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '"\b1998\t1999\t2000\n"'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '"\b1998\t1999\t2000\n"'.
				self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 4.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '\b'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '\t'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '\t'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '\n'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 3).
		self assert: self topEntity sourceCode equals: 'hex esc: "\x0d\x0a is \r\n"'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'hex esc'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'hex esc'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'hex esc'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '"\x0d\x0a is \r\n"'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '"\x0d\x0a is \r\n"'.
				self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 4.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '\x0d'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '\x0a'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '\r'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '\n'.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 4).
		self assert: self topEntity sourceCode equals: 'single: ''"Howdy!" he cried.'''.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'single'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'single'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'single'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '''"Howdy!" he cried.'''.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '''"Howdy!" he cried.'''.
				self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 5).
		self assert: self topEntity sourceCode equals: 'quoted: '' # Not a ''''comment''''.'''.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'quoted'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'quoted'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'quoted'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: ''' # Not a ''''comment''''.'''.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ''' # Not a ''''comment''''.'''.
				self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: ''''''.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: ''''''.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 6).
		self assert: self topEntity sourceCode equals: 'tie-fighter: ''|\-*-/|'''.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'tie-fighter'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'tie-fighter'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'tie-fighter'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '''|\-*-/|'''.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '''|\-*-/|'''.
				self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'unicode: "Sosa did fine.\u263A"
control: "\b1998\t1999\t2000\n"
hex esc: "\x0d\x0a is \r\n"

single: ''"Howdy!" he cried.''
quoted: '' # Not a ''''comment''''.''
tie-fighter: ''|\-*-/|'';' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSeqExamples [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSeqExamples 	"

	self parse: 'Block style: !!seq
- Clark Evans
- Ingy döt Net
- Oren Ben-Kiki

Flow style: !!seq [ Clark Evans, Ingy döt Net, Oren Ben-Kiki ];'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 3.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 9.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 8.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 8.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'Block style: !!seq
- Clark Evans
- Ingy döt Net
- Oren Ben-Kiki

Flow style: !!seq [ Clark Evans, Ingy döt Net, Oren Ben-Kiki ]' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: 'Block style: !!seq
- Clark Evans
- Ingy döt Net
- Oren Ben-Kiki' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Block style'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Block style'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Block style'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '!!seq
- Clark Evans
- Ingy döt Net
- Oren Ben-Kiki' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '!!seq'.
				self assert: (self topEntity isOfType: FASTYAMLTag).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- Clark Evans
- Ingy döt Net
- Oren Ben-Kiki' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '- Clark Evans'.
					self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Clark Evans'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Clark Evans'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Clark Evans'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '- Ingy döt Net'.
					self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Ingy döt Net'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Ingy döt Net'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Ingy döt Net'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '- Oren Ben-Kiki'.
					self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'Oren Ben-Kiki'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Oren Ben-Kiki'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Oren Ben-Kiki'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: 'Flow style: !!seq [ Clark Evans, Ingy döt Net, Oren Ben-Kiki ]'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Flow style'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Flow style'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Flow style'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '!!seq [ Clark Evans, Ingy döt Net, Oren Ben-Kiki ]'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '!!seq'.
				self assert: (self topEntity isOfType: FASTYAMLTag).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '[ Clark Evans, Ingy döt Net, Oren Ben-Kiki ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Clark Evans'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Clark Evans'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Clark Evans'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Ingy döt Net'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Ingy döt Net'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Ingy döt Net'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'Oren Ben-Kiki'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Oren Ben-Kiki'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Oren Ben-Kiki'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'Block style: !!seq
- Clark Evans
- Ingy döt Net
- Oren Ben-Kiki

Flow style: !!seq [ Clark Evans, Ingy döt Net, Oren Ben-Kiki ];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSequenceOfMappingsPlayersStatistics [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSequenceOfMappingsPlayersStatistics 	"

	self parse: '-
  name: Mark McGwire
  hr:   65
  avg:  0.278
-
  name: Sammy Sosa
  hr:   63
  avg:  0.288;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 6.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFloatScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 12.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 12.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 9.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '-
  name: Mark McGwire
  hr:   65
  avg:  0.278
-
  name: Sammy Sosa
  hr:   63
  avg:  0.288;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '-
  name: Mark McGwire
  hr:   65
  avg:  0.278
-
  name: Sammy Sosa
  hr:   63
  avg:  0.288;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '-
  name: Mark McGwire
  hr:   65
  avg:  0.278
-
  name: Sammy Sosa
  hr:   63
  avg:  0.288;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '-
  name: Mark McGwire
  hr:   65
  avg:  0.278' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'name: Mark McGwire
  hr:   65
  avg:  0.278' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'name: Mark McGwire
  hr:   65
  avg:  0.278' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'name: Mark McGwire'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'name'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'name'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'name'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'Mark McGwire'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'Mark McGwire'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'Mark McGwire'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'hr:   65'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'hr'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'hr'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'hr'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '65'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '65'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: '65'.
										self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'avg:  0.278'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'avg'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'avg'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'avg'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '0.278'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '0.278'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: '0.278'.
										self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '-
  name: Sammy Sosa
  hr:   63
  avg:  0.288;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'name: Sammy Sosa
  hr:   63
  avg:  0.288;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'name: Sammy Sosa
  hr:   63
  avg:  0.288;' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'name: Sammy Sosa'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'name'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'name'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'name'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'hr:   63'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'hr'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'hr'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'hr'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '63'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '63'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: '63'.
										self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'avg:  0.288;'.
							self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
							
							"Testing value of monovalue relation key"
							self assert: self topEntity key isNotNil.

								stack push: self topEntity key.
								self assert: self topEntity sourceCode equals: 'avg'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'avg'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'avg'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar).
										stack pop.
									stack pop.
								stack pop.
							
							"Testing value of monovalue relation value"
							self assert: self topEntity value isNotNil.

								stack push: self topEntity value.
								self assert: self topEntity sourceCode equals: '0.288;'.
								self assert: (self topEntity isOfType: FASTYAMLFlowNode).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '0.288;'.
									self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: '0.288;'.
										self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSequenceOfScalarsBallPlayers [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSequenceOfScalarsBallPlayers 	"

	self parse: '- Mark McGwire
- Sammy Sosa
- Ken Griffey;'.

	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 3.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '- Mark McGwire
- Sammy Sosa
- Ken Griffey;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- Mark McGwire
- Sammy Sosa
- Ken Griffey;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '- Mark McGwire
- Sammy Sosa
- Ken Griffey;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequence).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '- Mark McGwire'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Mark McGwire'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Mark McGwire'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Mark McGwire'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '- Sammy Sosa'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '- Ken Griffey;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Ken Griffey;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Ken Griffey;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Ken Griffey;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSequenceOfSequences [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSequenceOfSequences 	"

	self parse: '- [name        , hr, avg  ]
- [Mark McGwire, 65, 0.278]
- [Sammy Sosa  , 63, 0.288];'.

	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFloatScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 13.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 3.
	self assert: (fast allWithType: FASTYAMLIntegerScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 10.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '- [name        , hr, avg  ]
- [Mark McGwire, 65, 0.278]
- [Sammy Sosa  , 63, 0.288];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- [name        , hr, avg  ]
- [Mark McGwire, 65, 0.278]
- [Sammy Sosa  , 63, 0.288]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 3.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '- [name        , hr, avg  ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: '[name        , hr, avg  ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[name        , hr, avg  ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'name'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'name'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'name'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'hr'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'hr'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'hr'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: 'avg'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'avg'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'avg'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '- [Mark McGwire, 65, 0.278]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: '[Mark McGwire, 65, 0.278]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[Mark McGwire, 65, 0.278]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Mark McGwire'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Mark McGwire'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Mark McGwire'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '65'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '65'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '65'.
								self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '0.278'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '0.278'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '0.278'.
								self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 3).
			self assert: self topEntity sourceCode equals: '[Sammy Sosa  , 63, 0.288]'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[Sammy Sosa  , 63, 0.288]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '63'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '63'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '63'.
							self assert: (self topEntity isOfType: FASTYAMLIntegerScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '0.288'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '0.288'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '0.288'.
							self assert: (self topEntity isOfType: FASTYAMLFloatScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '- [name        , hr, avg  ]
- [Mark McGwire, 65, 0.278]
- [Sammy Sosa  , 63, 0.288];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSinglePairExplicitEntry [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSinglePairExplicitEntry 	"

	self parse: '[
? foo
 bar : baz
];'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '[
? foo
 bar : baz
];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '[
? foo
 bar : baz
]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '[
? foo
 bar : baz
]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[
? foo
 bar : baz
]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '? foo
 bar : baz' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'foo
 bar' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'foo
 bar' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'foo
 bar' withPlatformLineEndings.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'baz'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'baz'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'baz'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '[
? foo
 bar : baz
];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSinglePairFlowMappings [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSinglePairFlowMappings 	"

	self parse: '[
foo: bar
];'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 4.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '[
foo: bar
];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '[
foo: bar
]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '[
foo: bar
]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[
foo: bar
]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'foo: bar'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'foo'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'foo'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'bar'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'bar'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'bar'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '[
foo: bar
];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSinglePairImplicitEntries [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSinglePairImplicitEntries 	"

	self parse: '- [ YAML : separate ]
- [ : empty key entry ]
- [ {JSON: like}:adjacent ];'.

	self assert: (fast allWithType: FASTYAMLBlockSequenceItem) size equals: 2.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 11.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 4.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 7.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 7.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '- [ YAML : separate ]
- [ : empty key entry ]
- [ {JSON: like}:adjacent ];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '- [ YAML : separate ]
- [ : empty key entry ]
- [ {JSON: like}:adjacent ]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 3.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '- [ YAML : separate ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: '[ YAML : separate ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[ YAML : separate ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'YAML : separate'.
						self assert: (self topEntity isOfType: FASTYAMLFlowPair).
						
						"Testing value of monovalue relation key"
						self assert: self topEntity key isNotNil.

							stack push: self topEntity key.
							self assert: self topEntity sourceCode equals: 'YAML'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'YAML'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'YAML'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						
						"Testing value of monovalue relation value"
						self assert: self topEntity value isNotNil.

							stack push: self topEntity value.
							self assert: self topEntity sourceCode equals: 'separate'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'separate'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'separate'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '- [ : empty key entry ]'.
			self assert: (self topEntity isOfType: FASTYAMLBlockSequenceItem).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: '[ : empty key entry ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[ : empty key entry ]'.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: ': empty key entry'.
						self assert: (self topEntity isOfType: FASTYAMLFlowPair).
						
						"Testing value of monovalue relation value"
						self assert: self topEntity value isNotNil.

							stack push: self topEntity value.
							self assert: self topEntity sourceCode equals: 'empty key entry'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'empty key entry'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'empty key entry'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 3).
			self assert: self topEntity sourceCode equals: '[ {JSON: like}:adjacent ]'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[ {JSON: like}:adjacent ]'.
				self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '{JSON: like}:adjacent'.
					self assert: (self topEntity isOfType: FASTYAMLFlowPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: '{JSON: like}'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '{JSON: like}'.
							self assert: (self topEntity isOfType: FASTYAMLFlowMapping).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'JSON: like'.
								self assert: (self topEntity isOfType: FASTYAMLFlowPair).
								
								"Testing value of monovalue relation key"
								self assert: self topEntity key isNotNil.

									stack push: self topEntity key.
									self assert: self topEntity sourceCode equals: 'JSON'.
									self assert: (self topEntity isOfType: FASTYAMLFlowNode).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'JSON'.
										self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
										
										"Testing value of monovalue relation childrenNode"
										self assert: self topEntity childrenNode isNotNil.

											stack push: self topEntity childrenNode.
											self assert: self topEntity sourceCode equals: 'JSON'.
											self assert: (self topEntity isOfType: FASTYAMLStringScalar).
											stack pop.
										stack pop.
									stack pop.
								
								"Testing value of monovalue relation value"
								self assert: self topEntity value isNotNil.

									stack push: self topEntity value.
									self assert: self topEntity sourceCode equals: 'like'.
									self assert: (self topEntity isOfType: FASTYAMLFlowNode).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: 'like'.
										self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
										
										"Testing value of monovalue relation childrenNode"
										self assert: self topEntity childrenNode isNotNil.

											stack push: self topEntity childrenNode.
											self assert: self topEntity sourceCode equals: 'like'.
											self assert: (self topEntity isOfType: FASTYAMLStringScalar).
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: 'adjacent'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'adjacent'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'adjacent'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '- [ YAML : separate ]
- [ : empty key entry ]
- [ {JSON: like}:adjacent ];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSingleQuotedCharacters [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSingleQuotedCharacters 	"

	self parse: '''here''''s to "quotes"'';'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLEscapeSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLSingleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '''here''''s to "quotes"'';'.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '''here''''s to "quotes"'''.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '''here''''s to "quotes"'''.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '''here''''s to "quotes"'''.
				self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: ''''''.
					self assert: (self topEntity isOfType: FASTYAMLEscapeSequence).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '''here''''s to "quotes"'';'
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSingleQuotedImplicitKeys [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSingleQuotedImplicitKeys 	"

	self parse: '''implicit block key'' : [
  ''implicit flow key'' : value,
 ];'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 5.
	self assert: (fast allWithType: FASTYAMLFlowPair) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowSequence) size equals: 1.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLSingleQuoteScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '''implicit block key'' : [
  ''implicit flow key'' : value,
 ];' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '''implicit block key'' : [
  ''implicit flow key'' : value,
 ]' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '''implicit block key'' : [
  ''implicit flow key'' : value,
 ]' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
			
			"Testing value of monovalue relation key"
			self assert: self topEntity key isNotNil.

				stack push: self topEntity key.
				self assert: self topEntity sourceCode equals: '''implicit block key'''.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '''implicit block key'''.
					self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
					stack pop.
				stack pop.
			
			"Testing value of monovalue relation value"
			self assert: self topEntity value isNotNil.

				stack push: self topEntity value.
				self assert: self topEntity sourceCode equals: '[
  ''implicit flow key'' : value,
 ]' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLFlowNode).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '[
  ''implicit flow key'' : value,
 ]' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLFlowSequence).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '''implicit flow key'' : value'.
						self assert: (self topEntity isOfType: FASTYAMLFlowPair).
						
						"Testing value of monovalue relation key"
						self assert: self topEntity key isNotNil.

							stack push: self topEntity key.
							self assert: self topEntity sourceCode equals: '''implicit flow key'''.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '''implicit flow key'''.
								self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
								stack pop.
							stack pop.
						
						"Testing value of monovalue relation value"
						self assert: self topEntity value isNotNil.

							stack push: self topEntity value.
							self assert: self topEntity sourceCode equals: 'value'.
							self assert: (self topEntity isOfType: FASTYAMLFlowNode).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'value'.
								self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'value'.
									self assert: (self topEntity isOfType: FASTYAMLStringScalar).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '''implicit block key'' : [
  ''implicit flow key'' : value,
 ];' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedSingleQuotedLines [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSingleQuotedLines 	"

	self parse: ''' 1st non-empty



 2nd non-empty
	3rd non-empty '';'.

	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLSingleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: ''' 1st non-empty



 2nd non-empty
	3rd non-empty '';' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: ''' 1st non-empty



 2nd non-empty
	3rd non-empty ''' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: ''' 1st non-empty



 2nd non-empty
	3rd non-empty ''' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ''' 1st non-empty



 2nd non-empty
	3rd non-empty ''' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLSingleQuoteScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ';'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ';'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: ''' 1st non-empty



 2nd non-empty
	3rd non-empty '';' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedStrExamples [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedStrExamples 	"

	self parse: 'Block style: !!str |-
  String: just a theory.

Flow style: !!str "String: just a theory.";'.

	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'Block style: !!str |-
  String: just a theory.

Flow style: !!str "String: just a theory."' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLERROR).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: 'Block style: !!str |-
  String: just a theory.' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Block style'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Block style'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Block style'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '!!str |-
  String: just a theory.' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '!!str'.
				self assert: (self topEntity isOfType: FASTYAMLTag).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '|-
  String: just a theory.' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top genericChildren at: 2).
		self assert: self topEntity sourceCode equals: 'Flow style: !!str "String: just a theory."'.
		self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
		
		"Testing value of monovalue relation key"
		self assert: self topEntity key isNotNil.

			stack push: self topEntity key.
			self assert: self topEntity sourceCode equals: 'Flow style'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'Flow style'.
				self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'Flow style'.
					self assert: (self topEntity isOfType: FASTYAMLStringScalar).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '!!str "String: just a theory."'.
			self assert: (self topEntity isOfType: FASTYAMLFlowNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '!!str'.
				self assert: (self topEntity isOfType: FASTYAMLTag).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '"String: just a theory."'.
				self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: 'Block style: !!str |-
  String: just a theory.

Flow style: !!str "String: just a theory.";' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedTabsAndSpaces [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTabsAndSpaces 	"

	self parse: '# Tabs and spaces
quoted: "Quoted 	"
block:	|
  void main() {
  	printf("Hello, world!\n");
  };'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 2.
	self assert: (fast allWithType: FASTYAMLBlockScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDoubleQuoteScalar) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 2.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '# Tabs and spaces
quoted: "Quoted 	"
block:	|
  void main() {
  	printf("Hello, world!\n");
  };' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '# Tabs and spaces'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'quoted: "Quoted 	"
block:	|
  void main() {
  	printf("Hello, world!\n");
  };' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'quoted: "Quoted 	"
block:	|
  void main() {
  	printf("Hello, world!\n");
  };' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'quoted: "Quoted 	"
block:	|
  void main() {
  	printf("Hello, world!\n");
  };' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'quoted: "Quoted 	"'.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'quoted'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'quoted'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'quoted'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '"Quoted 	"'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"Quoted 	"'.
							self assert: (self topEntity isOfType: FASTYAMLDoubleQuoteScalar).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'block:	|
  void main() {
  	printf("Hello, world!\n");
  };' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'block'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'block'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'block'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					
					"Testing value of monovalue relation value"
					self assert: self topEntity value isNotNil.

						stack push: self topEntity value.
						self assert: self topEntity sourceCode equals: '|
  void main() {
  	printf("Hello, world!\n");
  };' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTYAMLBlockNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '|
  void main() {
  	printf("Hello, world!\n");
  };' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTYAMLBlockScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '# Tabs and spaces
quoted: "Quoted 	"
block:	|
  void main() {
  	printf("Hello, world!\n");
  };' withPlatformLineEndings
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedTimestamps [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTimestamps 	"

	self parse: 'canonical: 2001-12-15T02:59:43.1Z
iso8601: 2001-12-14t21:59:43.10-05:00
spaced: 2001-12-14 21:59:43.10 -5
date: 2002-12-14;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 4.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 8.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 8.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 8.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: 'canonical: 2001-12-15T02:59:43.1Z
iso8601: 2001-12-14t21:59:43.10-05:00
spaced: 2001-12-14 21:59:43.10 -5
date: 2002-12-14;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLDocument).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'canonical: 2001-12-15T02:59:43.1Z
iso8601: 2001-12-14t21:59:43.10-05:00
spaced: 2001-12-14 21:59:43.10 -5
date: 2002-12-14;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLBlockNode).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'canonical: 2001-12-15T02:59:43.1Z
iso8601: 2001-12-14t21:59:43.10-05:00
spaced: 2001-12-14 21:59:43.10 -5
date: 2002-12-14;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'canonical: 2001-12-15T02:59:43.1Z'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'canonical'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'canonical'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'canonical'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '2001-12-15T02:59:43.1Z'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2001-12-15T02:59:43.1Z'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '2001-12-15T02:59:43.1Z'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'iso8601: 2001-12-14t21:59:43.10-05:00'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'iso8601'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'iso8601'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'iso8601'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '2001-12-14t21:59:43.10-05:00'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2001-12-14t21:59:43.10-05:00'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '2001-12-14t21:59:43.10-05:00'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'spaced: 2001-12-14 21:59:43.10 -5'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'spaced'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'spaced'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'spaced'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '2001-12-14 21:59:43.10 -5'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2001-12-14 21:59:43.10 -5'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '2001-12-14 21:59:43.10 -5'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'date: 2002-12-14;'.
				self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
				
				"Testing value of monovalue relation key"
				self assert: self topEntity key isNotNil.

					stack push: self topEntity key.
					self assert: self topEntity sourceCode equals: 'date'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'date'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'date'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar).
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation value"
				self assert: self topEntity value isNotNil.

					stack push: self topEntity value.
					self assert: self topEntity sourceCode equals: '2002-12-14;'.
					self assert: (self topEntity isOfType: FASTYAMLFlowNode).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2002-12-14;'.
						self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '2002-12-14;'.
							self assert: (self topEntity isOfType: FASTYAMLStringScalar)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedTwoDocumentsInAStreamEachWithALeadingComment [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTwoDocumentsInAStreamEachWithALeadingComment 	"

	self parse: '# Ranking of 1998 home runs;'.

	self assert: (fast allWithType: FASTYAMLComment) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '# Ranking of 1998 home runs;'.
	self assert: (self topEntity isOfType: FASTYAMLComment)
]

{ #category : 'tests' }
FASTYAMLImporterTest >> testGeneratedUnorderedSets [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedUnorderedSets 	"

	self parse: '# Sets are represented as a
# Mapping where each key is
# associated with a null value
--- !!set
? Mark McGwire
? Sammy Sosa
? Ken Griff;'.

	self assert: (fast allWithType: FASTYAMLBlockMapping) size equals: 1.
	self assert: (fast allWithType: FASTYAMLBlockMappingPair) size equals: 3.
	self assert: (fast allWithType: FASTYAMLBlockNode) size equals: 1.
	self assert: (fast allWithType: FASTYAMLComment) size equals: 3.
	self assert: (fast allWithType: FASTYAMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTYAMLFlowNode) size equals: 3.
	self assert: (fast allWithType: FASTYAMLPlainScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLStream) size equals: 1.
	self assert: (fast allWithType: FASTYAMLStringScalar) size equals: 3.
	self assert: (fast allWithType: FASTYAMLTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '# Sets are represented as a
# Mapping where each key is
# associated with a null value
--- !!set
? Mark McGwire
? Sammy Sosa
? Ken Griff;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTYAMLStream).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 4.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '# Sets are represented as a'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '# Mapping where each key is'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '# associated with a null value'.
		self assert: (self topEntity isOfType: FASTYAMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '--- !!set
? Mark McGwire
? Sammy Sosa
? Ken Griff;' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTYAMLDocument).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '!!set
? Mark McGwire
? Sammy Sosa
? Ken Griff;' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTYAMLBlockNode).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '!!set'.
				self assert: (self topEntity isOfType: FASTYAMLTag).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '? Mark McGwire
? Sammy Sosa
? Ken Griff;' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTYAMLBlockMapping).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '? Mark McGwire'.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'Mark McGwire'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Mark McGwire'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Mark McGwire'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '? Sammy Sosa'.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Sammy Sosa'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '? Ken Griff;'.
					self assert: (self topEntity isOfType: FASTYAMLBlockMappingPair).
					
					"Testing value of monovalue relation key"
					self assert: self topEntity key isNotNil.

						stack push: self topEntity key.
						self assert: self topEntity sourceCode equals: 'Ken Griff;'.
						self assert: (self topEntity isOfType: FASTYAMLFlowNode).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Ken Griff;'.
							self assert: (self topEntity isOfType: FASTYAMLPlainScalar).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'Ken Griff;'.
								self assert: (self topEntity isOfType: FASTYAMLStringScalar).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '# Sets are represented as a
# Mapping where each key is
# associated with a null value
--- !!set
? Mark McGwire
? Sammy Sosa
? Ken Griff;' withPlatformLineEndings
]

{ #category : 'as yet unclassified' }
FASTYAMLImporterTest >> topEntity [

	^ stack top 
]

Class {
	#name : 'BaselineOfFASTYAML',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfFASTYAML',
	#package : 'BaselineOfFASTYAML'
}

{ #category : 'baselines' }
BaselineOfFASTYAML >> baseline: spec [  

	<baseline>
	spec for: #common do: [
		spec description:
			'Developement version of FAST YAML using TreeSitter for Pharo'.
		spec author: 'AlessHosry'.
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ] 
]

{ #category : 'accessing' }
BaselineOfFASTYAML >> customProjectAttributes [  

	^ PackageOrganizer default packages
		  detect: [ :package | package name = 'BaselineOfFamix' ]
		  ifFound: [ #(  ) ]
		  ifNone: [ #( #NeedsMoose ) ] 
]

{ #category : 'baselines' }
BaselineOfFASTYAML >> defineDependencies: spec [  

	spec baseline: 'FAST' with: [
		spec
			loads: #( 'default' );
			repository: 'github://moosetechnology/FAST:v3/src' ].
	spec
		project: 'FASTTool'
		copyFrom: 'FAST'
		with: [ spec loads: #( 'core' 'tools' ) ].
		
	spec for: #NeedsMoose do: [
		spec baseline: 'Famix' with: [
			spec
				loads: #( 'Core' 'Basic' );
				repository: 'github://moosetechnology/Famix:development/src' ] ].

	spec baseline: 'TreeSitter' with: [
		spec
			loads: #( 'moose' 'yaml');
			repository: 'github://Evref-BL/Pharo-Tree-Sitter:main/src' ]
 
]

{ #category : 'baselines' }
BaselineOfFASTYAML >> defineGroups: spec [

	spec
		group: 'core'
		with: #( 'FAST-YAML-Model' 
			   'FAST-YAML-Model-Generator' );
		group: 'tools' with: #( 'core' 'FAST-YAML-Tools' ) 
]

{ #category : 'baselines' }
BaselineOfFASTYAML >> definePackages: spec [  

	spec
		package: 'FAST-YAML-Model'
		with: [ spec requires: #( 'FAST' ) ];
		package: 'FAST-YAML-Model-Generator'; 
		package: 'FAST-YAML-Tools'
		with: [ spec requires: #( 'TreeSitter' ) ].

	"In case of no Famix loaded"
	spec for: #NeedsMoose do: [
		spec
			package: 'FAST-YAML-Model'
			with: [ spec requires: #( 'FAST' 'Famix' ) ] ] 
]

"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTYAMLYamlDirective` | `yamlDirectiveOwner` | `FASTYAMLEntity` | |



"
Class {
	#name : 'FASTYAMLYamlDirective',
	#superclass : 'FASTYAMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTYAMLEntity opposite: #yamlDirectiveOwner'
	],
	#category : 'FAST-YAML-Model-Entities',
	#package : 'FAST-YAML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTYAMLYamlDirective class >> annotation [

	<ignoreForCoverage>
	<FMClass: #YamlDirective super: #FASTYAMLEntity>
	<package: #'FAST-YAML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTYAMLYamlDirective >> childrenNode [
	"Relation named: #childrenNode type: #FASTYAMLEntity opposite: #yamlDirectiveOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTYAMLYamlDirective >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

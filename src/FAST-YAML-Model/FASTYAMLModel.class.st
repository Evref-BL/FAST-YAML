Class {
	#name : 'FASTYAMLModel',
	#superclass : 'MooseModel',
	#traits : 'FASTTEntityCreator + FASTYAMLTEntityCreator',
	#classTraits : 'FASTTEntityCreator classTrait + FASTYAMLTEntityCreator classTrait',
	#category : 'FAST-YAML-Model-Model',
	#package : 'FAST-YAML-Model',
	#tag : 'Model'
}

{ #category : 'accessing' }
FASTYAMLModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'FAST-Core-Model')
]

{ #category : 'meta' }
FASTYAMLModel class >> annotation [
	<FMClass: #FASTYAMLModel super: #MooseModel>
	<package: #'FAST-YAML-Model'>
	<generated>
]

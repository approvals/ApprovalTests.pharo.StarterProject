Class {
	#name : #BaselineOfApprovalTestspharoStarterProject,
	#superclass : #BaselineOf,
	#category : #BaselineOfApprovalTestspharoStarterProject
}

{ #category : #baselines }
BaselineOfApprovalTestspharoStarterProject >> baseline: spec [

	<baseline>
	spec for: #common do: [ "Packages"
		spec
			package: 'Approvaltests-Tests'
			with: [ spec requires: #( 'Approvaltests' ) ] ]
]

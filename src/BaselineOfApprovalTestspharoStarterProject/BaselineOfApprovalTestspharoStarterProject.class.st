Class {
	#name : #BaselineOfApprovalTestspharoStarterProject,
	#superclass : #BaselineOf,
	#category : #BaselineOfApprovalTestspharoStarterProject
}

{ #category : #baselines }
BaselineOfApprovalTestspharoStarterProject >> baseline: spec [

	<baseline>
	spec for: #common do: [ "Packages"
		spec package: 'Approvaltests'.
		spec
			package: 'Approvaltests-Tests'
			with: [ spec requires: #( 'Approvaltests' ) ] ].
	spec
		baseline: 'GitBridge'
		with: [ spec repository: 'github://jecisc/GitBridge:v1.x.x/src' ]
]

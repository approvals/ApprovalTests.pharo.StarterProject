Class {
	#name : #RepositoryTest,
	#superclass : #TestCase,
	#category : #'Approvaltests-Tests'
}

{ #category : #tests }
RepositoryTest >> testAddingNonSmalltalkFiles [

	| repo file  |
	repo := IceRepository registry
		        detect: [ :each |
		        each name = 'ApprovalTests.pharo.StarterProject' ]
		        ifNone: [ nil ].

	file := ('src' , '/Approvaltests-Tests/'
	         , 'ApprovalNamerTest.testApprovedFile.approved.txt')
		        asFileReference.

	repo addFileToIndex: file
	

]

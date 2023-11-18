Class {
	#name : #ApprovalNamerTest,
	#superclass : #TestCase,
	#category : #'Approvaltests-Tests'
}

{ #category : #tests }
ApprovalNamerTest >> testApprovedFile [
	| namer approvedFileName |
	
	namer := ApprovalNamer new.
	approvedFileName := namer approvedFileName, '.txt'.
	self assert: (File exists: approvedFileName).
]

Class {
	#name : #SimpleTest,
	#superclass : #TestCase,
	#category : #'Approvaltests-Tests'
}

{ #category : #tests }
SimpleTest >> test3Is3 [

self assert: 3 equals: 3
]

{ #category : #tests }
SimpleTest >> testName [
	| namer |
	
	namer := ApprovalNamer new.
	self assert: namer approvalName equals: 'SimpleTest.testName'.
]

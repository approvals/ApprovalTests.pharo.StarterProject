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
SimpleTest >> testVerify [

	"Approvals verify: 'Hello, world.'"
	
	self assert: true.
]

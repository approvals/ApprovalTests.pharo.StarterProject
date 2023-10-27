Class {
	#name : #SimpleTest,
	#superclass : #TestCase,
	#category : #'Approvaltests-Tests'
}

{ #category : #tests }
SimpleTest >> test3Is3 [

self assert: 3 equals: 3
]

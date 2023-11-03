Class {
	#name : #ApprovalNamer,
	#superclass : #Object,
	#category : #Approvaltests
}

{ #category : #'as yet unclassified' }
ApprovalNamer >> approvalName [
	| className methodName testName |
	
	className := thisContext sender methodClass name.
	methodName := thisContext sender selector.
	testName := className , '.',  methodName .
	^testName 
]

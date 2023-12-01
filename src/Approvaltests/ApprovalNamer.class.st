Class {
	#name : #ApprovalNamer,
	#superclass : #Object,
	#category : #Approvaltests
}

{ #category : #'as yet unclassified' }
ApprovalNamer >> approvalName [
	| className methodName testName sender|
	
	sender := self findTestMethod: thisContext sender.
	className :=  sender className.
	methodName :=  sender selector.
	testName := className , '.',  methodName .
	^testName 
]

{ #category : #'as yet unclassified' }
ApprovalNamer >> approvedFileName [
	"	^self approvalName."

	| name mainDirectory |
	name := self approvalName.
	mainDirectory := FileLocator imageDirectory fullName  asString.
	^ mainDirectory  , '/pharo-local/iceberg/approvals/ApprovalTests.pharo.StarterProject/src/Approvaltests-Tests/'
	  , name , '.approved'
]

{ #category : #'as yet unclassified' }
ApprovalNamer >> findTestMethod: aContext [
	| aReceiver |
	
	aContext ifNil: [ ^nil ].
	
	aReceiver := aContext receiver.
	^(aReceiver isKindOf: TestCase)
		ifTrue:[ aReceiver ]
		ifFalse:[self findTestMethod: aContext sender]
	
]

{ #category : #'as yet unclassified' }
ApprovalNamer >> receivedFileName [
]

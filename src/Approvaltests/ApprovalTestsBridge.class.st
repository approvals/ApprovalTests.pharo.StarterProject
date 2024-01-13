Class {
	#name : #ApprovalTestsBridge,
	#superclass : #GitBridge,
	#category : #Approvaltests
}

{ #category : #'class initialization' }
ApprovalTestsBridge class >> initialize [

	SessionManager default registerSystemClassNamed: self name
]

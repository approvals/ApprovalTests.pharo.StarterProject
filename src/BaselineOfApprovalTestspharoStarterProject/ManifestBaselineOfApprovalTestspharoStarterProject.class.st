"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestBaselineOfApprovalTestspharoStarterProject,
	#superclass : #PackageManifest,
	#category : #'BaselineOfApprovalTestspharoStarterProject-Manifest'
}

{ #category : #'code-critics' }
ManifestBaselineOfApprovalTestspharoStarterProject class >> ruleNoClassCommentRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGPackageDefinition #(#BaselineOfApprovalTestspharoStarterProject)) #'2023-11-03T14:49:04.944432-04:00') )
]

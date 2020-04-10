"
A ChanelConditionalSimplifierCleanerTest is a test class for testing the behavior of ChanelConditionalSimplifierCleaner
"
Class {
	#name : #ChanelConditionalSimplifierCleanerTest,
	#superclass : #ChanelAbstractCleanerTest,
	#category : #'Chanel-Tests'
}

{ #category : #running }
ChanelConditionalSimplifierCleanerTest >> setUp [
	super setUp.
	class := self createTestCaseNamed: #ChanelConditionalSimplifierMock
]

{ #category : #tests }
ChanelConditionalSimplifierCleanerTest >> testIsNilIfFalse [
	self assert: '10 isNil ifFalse: [ false ]' isRewrittenAs: '10 ifNotNil: [ false ]'
]

{ #category : #tests }
ChanelConditionalSimplifierCleanerTest >> testIsNilIfFalseIfTrue [
	self assert: '10 isNil ifFalse: [ false ] ifTrue: [ true ]' isRewrittenAs: '10 ifNil: [ true ] ifNotNil: [ false ]'
]

{ #category : #tests }
ChanelConditionalSimplifierCleanerTest >> testIsNilIfTrue [
	self assert: '10 isNil ifTrue: [ false ]' isRewrittenAs: '10 ifNil: [ false ]'
]

{ #category : #tests }
ChanelConditionalSimplifierCleanerTest >> testIsNilIfTrueIfFalse [
	self assert: '10 isNil ifTrue: [ false ] ifFalse: [ true ]' isRewrittenAs: '10 ifNil: [ false ] ifNotNil: [ true ]'
]

{ #category : #tests }
ChanelConditionalSimplifierCleanerTest >> testIsNotNilIfFalse [
	self assert: '10 isNotNil ifFalse: [ false ]' isRewrittenAs: '10 ifNil: [ false ]'
]

{ #category : #tests }
ChanelConditionalSimplifierCleanerTest >> testIsNotNilIfFalseIfTrue [
	self assert: '10 isNotNil ifFalse: [ false ] ifTrue: [ true ]' isRewrittenAs: '10 ifNil: [ false ] ifNotNil: [ true ]'
]

{ #category : #tests }
ChanelConditionalSimplifierCleanerTest >> testIsNotNilIfTrue [
	self assert: '10 isNotNil ifTrue: [ false ]' isRewrittenAs: '10 ifNotNil: [ false ]'
]

{ #category : #tests }
ChanelConditionalSimplifierCleanerTest >> testIsNotNilIfTrueIfFalse [
	self assert: '10 isNotNil ifTrue: [ false ] ifFalse: [ true ]' isRewrittenAs: '10 ifNil: [ true ] ifNotNil: [ false ]'
]
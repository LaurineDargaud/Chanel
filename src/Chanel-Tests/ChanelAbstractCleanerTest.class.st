"
A ChanelAbstractCleanerTest is a test class for testing the behavior of ChanelAbstractCleaner
"
Class {
	#name : #ChanelAbstractCleanerTest,
	#superclass : #TestCase,
	#instVars : [
		'package'
	],
	#category : #'Chanel-Tests'
}

{ #category : #accessing }
ChanelAbstractCleanerTest >> actualClass [
	^ self class environment at: (self class name withoutSuffix: 'Test') asSymbol
]

{ #category : #running }
ChanelAbstractCleanerTest >> runCleaner [
	(self actualClass configuration: (Chanel new packages: {package})) clean
]

{ #category : #running }
ChanelAbstractCleanerTest >> setUp [
	super setUp.
	package := RPackageOrganizer default createPackageNamed: 'Package-Test-For-Chanel'
]

{ #category : #running }
ChanelAbstractCleanerTest >> tearDown [
	package ifNotNil: #removeFromSystem.
	super tearDown
]
Class {
	#name : #ASTNode,
	#superclass : #Object,
	#instVars : [
		'uniqueId',
		'nodeName',
		'nextNodes',
		'conformsTo'
	],
	#category : #ASTVisualization
}

{ #category : #adding }
ASTNode >> addConformsTo: aNode [
	conformsTo add: aNode
]

{ #category : #initialization }
ASTNode >> addNextNode: aNode [
	nextNodes add: aNode
]

{ #category : #accessing }
ASTNode >> conformsTo [
	^ conformsTo
]

{ #category : #initialization }
ASTNode >> initialize [
	super initialize.
	nextNodes := OrderedCollection new.
	conformsTo := OrderedCollection new.
]

{ #category : #initialization }
ASTNode >> nextNodes [
	^ nextNodes
]

{ #category : #accessing }
ASTNode >> nodeName [
	^ nodeName
]

{ #category : #accessing }
ASTNode >> nodeName: anObject [
	nodeName := anObject
]

{ #category : #accessing }
ASTNode >> uniqueId [
	^ uniqueId
]

{ #category : #accessing }
ASTNode >> uniqueId: anObject [
	uniqueId := anObject
]

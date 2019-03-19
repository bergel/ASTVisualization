Class {
	#name : #ASTModel,
	#superclass : #Object,
	#instVars : [
		'nodes',
		'metaGrammarNodes'
	],
	#category : #ASTVisualization
}

{ #category : #examples }
ASTModel >> example01 [
	<script: 'self new example01'>

	| model |
	model := ASTModel new.
	model importFromString: ASTTest new exampleAST.
	model inspect
]

{ #category : #visualization }
ASTModel >> gtInspectorViewIn: composite [
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'View';
		initializeView: [ self visualize ]
]

{ #category : #visualization }
ASTModel >> gtInspectorViewInteractionIn: composite [
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Interactive View';
		initializeView: [ self visualizeWithInteractionForMetaNodes ]
]

{ #category : #initialization }
ASTModel >> importFromString: jsonAsString [
	| astAsValue |
	astAsValue := (NeoJSONReader on: jsonAsString readStream) parseValue.
	
	"We build the nodes"
	astAsValue associations do: [ :assoc |
		| aNode |
		aNode := ASTNode new.
		aNode uniqueId: assoc key.
		aNode nodeName: (assoc value at: '/modelling/name' ifAbsent: [ 'UNKNOWN' ]).
		nodes add: aNode. 
	].

	"We link the nodes"
	astAsValue associations with: nodes do: [ :assoc :aNode |
		| hasNext hasConformsTo |
		"Next element"
		hasNext := assoc value includesKey: '/metaGrammar/next'.
		hasNext ifTrue: [  
			| tt |
			tt := nodes detect: [ :n | n uniqueId = (assoc value at: '/metaGrammar/next') ] ifNone: [ nil ].
			tt ifNotNil: [ aNode addNextNode: tt ].
		].
	
		"ConformsTo link"
		hasConformsTo := assoc value includesKey: '/modelling/conformsTo'.
		hasConformsTo ifTrue: [ 
			| tt |
			tt := assoc value at: '/modelling/conformsTo'.
			tt class == Array 
				ifTrue: [  tt do: [ :ttt | aNode addConformsTo: (self lookupMetaGrammarNode: ttt) ] ]
				ifFalse: [ aNode addConformsTo: (self lookupMetaGrammarNode: tt) ] 
		].
	]
]

{ #category : #initialization }
ASTModel >> initialize [
	super initialize.
	nodes := OrderedCollection new.
	metaGrammarNodes := OrderedCollection new
]

{ #category : #'as yet unclassified' }
ASTModel >> lookupMetaGrammarNode: aString [
	| mNode |
	mNode := metaGrammarNodes
		detect: [ :n | n nodeName = aString ]
		ifNone: [ nil ].
	mNode
		ifNil: [ mNode := ASTMetaGrammarNode new nodeName: aString.
			metaGrammarNodes add: mNode ].
	^ mNode
]

{ #category : #accessing }
ASTModel >> metaGrammarNodes [
	^ metaGrammarNodes
]

{ #category : #accessing }
ASTModel >> nodes [
	^ nodes
]

{ #category : #'as yet unclassified' }
ASTModel >> numberOfNodes [
	^ nodes size
]

{ #category : #visualization }
ASTModel >> visualize [
	| b |
	b := RTMondrian new.
	b shape label text: #nodeName.
	b nodes: nodes.
	b edges 
		objects: nodes;
		connectFromAll: #nextNodes.
	
	b shape label text: #nodeName; color: Color green darker darker.
	b nodes: metaGrammarNodes.
	b shape line color: Color veryVeryLightGray.
	b edges 
		moveBehind;
		fromObjects: nodes;
		toObjects: metaGrammarNodes;
		connectToAll: #conformsTo.
	
	b layout
		tree;
		ifNotConnectedThen: RTGridLayout new.
	"b layout force charge: -300."
	^ b
]

{ #category : #visualization }
ASTModel >> visualizeWithInteractionForMetaNodes [
	| b |
	b := RTMondrian new.
	b shape label text: #nodeName.
	b interaction showEdge 
		shape: (RTArrowedLine new color: Color green);
		connectToAll: #conformsTo.
	b nodes: nodes.
	b edges 
		objects: nodes;
		connectFromAll: #nextNodes.
	
	b shape label text: #nodeName; color: Color green darker darker.
	b nodes: metaGrammarNodes.
"	b shape line color: Color veryVeryLightGray.
	b edges 
		moveBehind;
		fromObjects: nodes;
		toObjects: metaGrammarNodes;
		connectToAll: #conformsTo."
	
	b layout
		tree;
		ifNotConnectedThen: RTGridLayout new.
	"b layout force charge: -300."
	^ b
]

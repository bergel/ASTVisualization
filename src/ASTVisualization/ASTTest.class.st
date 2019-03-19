Class {
	#name : #ASTTest,
	#superclass : #TestCase,
	#category : #ASTVisualization
}

{ #category : #'as yet unclassified' }
ASTTest >> exampleAST [

^ '{
"/ParseTrees/cf-Expr" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/metaGrammar/bindsTo#1" : "/ParseTrees/cf-Expr.1",
	"/metaGrammar/bindsTo#3" : "/ParseTrees/cf-Expr.3",
	"/modelling/name" : "\"Expr→\"",
	"/metaGrammar/bindsTo#2" : "/ParseTrees/cf-Expr.2",
	"/metaGrammar/bindsTo#4" : "/ParseTrees/cf-Expr.4",
	"/metaGrammar/next" : ["/ParseTrees/cf-Expr.2", "/ParseTrees/cf-Expr.1", "/ParseTrees/cf-Expr.4", "/ParseTrees/cf-Expr.3"]
	}
,
"/ParseTrees/cf-Expr.1" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/metaGrammar/element#0" : "/ParseTrees/cf-Expr.1.0",
	"/modelling/name" : "\"Expr→\"",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.1.0"
	}
,
"/ParseTrees/cf-Expr.1.0" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"Var\"",
	"/metaGrammar/refersTo" : "/ParseTrees/lex-Var",
	"/modelling/is" : "/metaGrammar/lexical",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.end"
	}
,
"/ParseTrees/cf-Expr.2" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/metaGrammar/element#0" : "/ParseTrees/cf-Expr.2.0",
	"/modelling/name" : "\"Expr→\"",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.2.0"
	}
,
"/ParseTrees/cf-Expr.2.0" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"Num\"",
	"/metaGrammar/refersTo" : "/ParseTrees/lex-Num",
	"/modelling/is" : "/metaGrammar/lexical",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.end"
	}
,
"/ParseTrees/cf-Expr.3" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/metaGrammar/element#4" : "/ParseTrees/cf-Expr.3.4",
	"/metaGrammar/element#2" : "/ParseTrees/cf-Expr.3.2",
	"/metaGrammar/element#0" : "/ParseTrees/cf-Expr.3.0",
	"/modelling/name" : "\"Expr→\"",
	"/metaGrammar/element#3" : "/ParseTrees/cf-Expr.3.3",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.3.0",
	"/metaGrammar/element#1" : "/ParseTrees/cf-Expr.3.1",
	"\"b\"" : "/ParseTrees/cf-Expr.3.4",
	"\"a\"" : "/ParseTrees/cf-Expr.3.0"
	}
,
"/ParseTrees/cf-Expr.3.0" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"a: Expr\"",
	"/metaGrammar/refersTo" : "/ParseTrees/cf-Expr",
	"/modelling/is" : ["/metaGrammar/contextFree", "/metaGrammar/labelled"],
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.3.1",
	"/metaGrammar/label" : "\"a\""
	}
,
"/ParseTrees/cf-Expr.3.1" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"LAYOUT\"",
	"/metaGrammar/refersTo" : "/ParseTrees/layout-LAYOUT",
	"/modelling/is" : "/metaGrammar/layout",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.3.2"
	}
,
"/ParseTrees/cf-Expr.3.2" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"lit(\\\"+\\\")\"",
	"/modelling/is" : "/metaGrammar/literal",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.3.3",
	"/metaGrammar/stringValue" : "\"+\""
	}
,
"/ParseTrees/cf-Expr.3.3" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"LAYOUT\"",
	"/metaGrammar/refersTo" : "/ParseTrees/layout-LAYOUT",
	"/modelling/is" : "/metaGrammar/layout",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.3.4"
	}
,
"/ParseTrees/cf-Expr.3.4" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"b: Expr\"",
	"/metaGrammar/refersTo" : "/ParseTrees/cf-Expr",
	"/modelling/is" : ["/metaGrammar/contextFree", "/metaGrammar/labelled"],
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.end",
	"/metaGrammar/label" : "\"b\""
	}
,
"/ParseTrees/cf-Expr.4" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/metaGrammar/element#4" : "/ParseTrees/cf-Expr.4.4",
	"/metaGrammar/element#2" : "/ParseTrees/cf-Expr.4.2",
	"/metaGrammar/element#0" : "/ParseTrees/cf-Expr.4.0",
	"/modelling/name" : "\"Expr→\"",
	"/metaGrammar/element#3" : "/ParseTrees/cf-Expr.4.3",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.4.0",
	"/metaGrammar/element#1" : "/ParseTrees/cf-Expr.4.1"
	}
,
"/ParseTrees/cf-Expr.4.0" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"lit(\\\"(\\\")\"",
	"/modelling/is" : "/metaGrammar/literal",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.4.1",
	"/metaGrammar/stringValue" : "\"(\""
	}
,
"/ParseTrees/cf-Expr.4.1" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"LAYOUT\"",
	"/metaGrammar/refersTo" : "/ParseTrees/layout-LAYOUT",
	"/modelling/is" : "/metaGrammar/layout",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.4.2"
	}
,
"/ParseTrees/cf-Expr.4.2" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"Expr\"",
	"/metaGrammar/refersTo" : "/ParseTrees/cf-Expr",
	"/modelling/is" : "/metaGrammar/contextFree",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.4.3"
	}
,
"/ParseTrees/cf-Expr.4.3" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"LAYOUT\"",
	"/metaGrammar/refersTo" : "/ParseTrees/layout-LAYOUT",
	"/modelling/is" : "/metaGrammar/layout",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.4.4"
	}
,
"/ParseTrees/cf-Expr.4.4" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"lit(\\\")\\\")\"",
	"/modelling/is" : "/metaGrammar/literal",
	"/metaGrammar/next" : "/ParseTrees/cf-Expr.end",
	"/metaGrammar/stringValue" : "\")\""
	}
,
"/ParseTrees/cf-Expr.end" : {
	"/modelling/conformsTo" : ["/metaGrammar/stop", "/metaGrammar/symbol"]
	}
,
"/ParseTrees/empty" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/modelling/name" : "\"ɛ→\"",
	"/metaGrammar/next" : "/ParseTrees/empty.end"
	}
,
"/ParseTrees/empty.end" : {
	"/modelling/conformsTo" : ["/metaGrammar/stop", "/metaGrammar/symbol"]
	}
,
"/ParseTrees/layout-$default$" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/modelling/name" : "\"$default$→\"",
	"/metaGrammar/next" : "/ParseTrees/layout-$default$.end"
	}
,
"/ParseTrees/layout-$default$.end" : {
	"/modelling/conformsTo" : ["/metaGrammar/stop", "/metaGrammar/symbol"]
	}
,
"/ParseTrees/layout-LAYOUT" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/metaGrammar/source" : "|project://syntax-navigator/src/ParseTrees.rsc|(435,30,<26,0>,<26,30>)",
	"/metaGrammar/element#0" : "/ParseTrees/layout-LAYOUT.0",
	"/modelling/name" : "\"LAYOUT→\"",
	"/metaGrammar/next" : ["/ParseTrees/layout-LAYOUT.0", "/ParseTrees/layout-LAYOUT.end"]
	}
,
"/ParseTrees/layout-LAYOUT.0" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"[\\\\t-\\\\n\\\\a0c-\\\\r\\\\ ]*\"",
	"/metaGrammar/repeatMax" : "|values://integer/infinity|",
	"/modelling/is" : ["/metaGrammar/iterate", "/metaGrammar/alternatives"],
	"/metaGrammar/repeatMin" : "0",
	"/metaGrammar/next" : ["/ParseTrees/layout-LAYOUT.0", "/ParseTrees/layout-LAYOUT.end"],
	"/metaGrammar/element" : ["|values://characters/12/to/13|", "|values://characters/9/to/10|", "|values://characters/32|"]
	}
,
"/ParseTrees/layout-LAYOUT.end" : {
	"/modelling/conformsTo" : ["/metaGrammar/stop", "/metaGrammar/symbol"]
	}
,
"/ParseTrees/lex-Num" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/metaGrammar/source" : "|project://syntax-navigator/src/ParseTrees.rsc|(412,21,<24,0>,<24,21>)",
	"/metaGrammar/element#0" : "/ParseTrees/lex-Num.0",
	"/modelling/name" : "\"Num→\"",
	"/metaGrammar/next" : "/ParseTrees/lex-Num.0"
	}
,
"/ParseTrees/lex-Num.0" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"[0-9]+\"",
	"/metaGrammar/repeatMax" : "|values://integer/infinity|",
	"/modelling/is" : ["/metaGrammar/iterate", "/metaGrammar/alternatives"],
	"/metaGrammar/repeatMin" : "1",
	"/metaGrammar/next" : ["/ParseTrees/lex-Num.end", "/ParseTrees/lex-Num.0"],
	"/metaGrammar/element" : "|values://characters/48/to/57|"
	}
,
"/ParseTrees/lex-Num.end" : {
	"/modelling/conformsTo" : ["/metaGrammar/stop", "/metaGrammar/symbol"]
	}
,
"/ParseTrees/lex-Var" : {
	"/modelling/conformsTo" : ["/metaGrammar/production", "/metaGrammar/symbol"],
	"/metaGrammar/source" : "|project://syntax-navigator/src/ParseTrees.rsc|(380,30,<22,0>,<22,30>)",
	"/metaGrammar/element#0" : "/ParseTrees/lex-Var.0",
	"/modelling/name" : "\"Var→\"",
	"/metaGrammar/next" : "/ParseTrees/lex-Var.0"
	}
,
"/ParseTrees/lex-Var.0" : {
	"/modelling/conformsTo" : "/metaGrammar/symbol",
	"/modelling/name" : "\"[A-Za-z凰]+\"",
	"/metaGrammar/repeatMax" : "|values://integer/infinity|",
	"/modelling/is" : ["/metaGrammar/iterate", "/metaGrammar/alternatives"],
	"/metaGrammar/repeatMin" : "1",
	"/metaGrammar/next" : ["/ParseTrees/lex-Var.0", "/ParseTrees/lex-Var.end"],
	"/metaGrammar/element" : ["|values://characters/97/to/122|", "|values://characters/20976|", "|values://characters/65/to/90|"]
	}
,
"/ParseTrees/lex-Var.end" : {
	"/modelling/conformsTo" : ["/metaGrammar/stop", "/metaGrammar/symbol"]
	}
,
"/ParseTrees" : {
	"/modelling/conformsTo" : "/metaGrammar/grammar",
	"/metaGrammar/bindsTo#3" : "/ParseTrees/lex-Num",
	"/modelling/name" : "\"ParseTrees\"",
	"/metaGrammar/bindsTo#2" : "/ParseTrees/lex-Var",
	"/metaGrammar/bindsTo#4" : "/ParseTrees/cf-Expr",
	"/metaGrammar/bindsTo#0" : "/ParseTrees/layout-$default$",
	"/modelling/identity" : "/ParseTrees",
	"/metaGrammar/bindsTo#1" : "/ParseTrees/empty",
	"/metaGrammar/bindsTo#5" : "/ParseTrees/layout-LAYOUT"
	}
,
"|values://characters/12/to/13|" : {
	"/modelling/name" : "\"[\\\\a0C-\\\\a0D]\""
	}
,
"|values://characters/20976|" : {
	"/modelling/name" : "\"[\\\\U0051F0]\""
	}
,
"|values://characters/32|" : {
	"/modelling/name" : "\"[\\\\ ]\""
	}
,
"|values://characters/48/to/57|" : {
	"/modelling/name" : "\"[0-9]\""
	}
,
"|values://characters/65/to/90|" : {
	"/modelling/name" : "\"[A-Z]\""
	}
,
"|values://characters/9/to/10|" : {
	"/modelling/name" : "\"[\\\\t-\\\\n]\""
	}
,
"|values://characters/97/to/122|" : {
	"/modelling/name" : "\"[a-z]\""
	}

}
'
]

{ #category : #tests }
ASTTest >> testBasic [
	| model mNodes |
	model := ASTModel new.
	model importFromString: self exampleAST.
	self assert: model numberOfNodes equals: 39.
	
	model visualize build.
	
	"We test the existance metagrammar node"
	mNodes := model metaGrammarNodes.
	self assert: mNodes size equals: 4.
	self assert: mNodes first nodeName equals: '/metaGrammar/symbol'.

	"We test the link to the metagrammar node"	
	self assert: model nodes first conformsTo isCollection.
	self assert: model nodes first conformsTo size equals: 1.
	self assert: model nodes first conformsTo first equals: mNodes first.
]

{ #category : #tests }
ASTTest >> testEmpty [
	| model |
	model := ASTModel new.
	self assert: model numberOfNodes equals: 0
]

tests
testGetRespuestas
	self assert: ((user1 getRespuestas: preg2 sistema: sistema) size) equals: 2.
	self assert: ((user5 getRespuestas: preg1 sistema: sistema) size) equals: 1.
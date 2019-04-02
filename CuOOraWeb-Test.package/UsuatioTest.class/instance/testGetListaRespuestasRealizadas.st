tests
testGetListaRespuestasRealizadas
	self assert: ((user1 getListaRespuestasRealizadas: sistema) size) equals: 1.
	self assert: ((user3 getListaRespuestasRealizadas: sistema) size) equals: 2.
	self assert: ((user2 getListaRespuestasRealizadas: sistema) size) equals: 0.
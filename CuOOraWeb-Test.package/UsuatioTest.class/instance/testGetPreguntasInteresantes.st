tests
testGetPreguntasInteresantes

	self assert: ((user1 getPreguntasInteresantes:sistema) size) equals: 2.
	self assert: ((user2 getPreguntasInteresantes:sistema) size) equals: 3.
	self assert: ((user3 getPreguntasInteresantes:sistema) size) equals: 5.
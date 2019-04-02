tests
testAgregarPreguntaAndRespuesta
	
	"Testeo si los usuarios correspondientes tienen las preguntas"
	self assert: (user1 getPreguntas size) equals: 2.
	self assert: (user2 getPreguntas size) equals: 2.
	self assert: (user3 getPreguntas size) equals: 2.
	self assert: ((user1 getPreguntas) anySatisfy: [ :preg| (preg getListaTopicos size) = 2 ]) equals: true.
	
	"Testeo si el numero de respuestas es correcto para cada pregunta"
	self assert: ((user1 getPreguntas) at:1) obtenerRespuestas size equals: 1.
	self assert: ((user3 getPreguntas) at:1) obtenerRespuestas size equals: 2.	
	
	"Un usuario borra una de sus preguntas"
	"user3 borrarPregunta: preg2.
	self assert: (user3 getPreguntas size) equals: 1."
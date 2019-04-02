tests
testInicializacion

	"topic1:= Topico nombre: 'Peliculas'
	topic2:= Topico nombre: 'Libros'
	topic3:= Topico nombre: 'Series'
	topic4:= Topico nombre: 'Musica'"
	
	self assert: ((sistema getListaUsuarios ) size) equals: 3.
	self assert: ((sistema getAllPreguntas  ) size) equals: 6.
	
	self assert: ((sistema  getPreguntasTopico: topic1) size) equals: 2.
	self assert: ((sistema  getPreguntasTopico: topic2) size) equals: 2.
	self assert: ((sistema  getPreguntasTopico: topic3) size) equals: 2.
	self assert: ((sistema  getPreguntasTopico: topic4) size) equals: 1.
	
	
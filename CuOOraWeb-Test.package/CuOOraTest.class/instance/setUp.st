running
setUp
	|listaTopic|

	user1 := Usuario setNombre: 'Nehuen' setPass: '123456'.
	user2 := Usuario setNombre: 'Julieta' setPass: 'zxcvbn'.
	user3 := Usuario setNombre: 'Root' setPass: '13579'.
	
	topic1:= Topico nombre: 'Peliculas' descripcion: 'Todo lo relacionado con las peliculas'. 
	topic2:= Topico nombre: 'Libros' descripcion: 'Todo lo relacionado con los libros'.
	topic3:= Topico nombre: 'Series' descripcion: 'Todo lo relacionado con las series'.
	topic4:= Topico nombre: 'Musica' descripcion: 'Todo lo relacionado con la musica'.
	listaTopic := OrderedCollection new. listaTopic add:topic2 ;add:topic1.	
	
	preg1:= Pregunta usuario:user1  texto:'Cuando sale Juego de Tronos?' descripcion:''  topico: topic3.
	preg2:= Pregunta usuario:user3  texto:'En los vengadores 2 todos reviven?' descripcion:''  topico: topic1.
	preg3:= Pregunta usuario:user2  texto:'Que musica me recomiendan para estas vacas?' descripcion:''  topico: topic4.
	preg4:= Pregunta usuario:user1  texto:'Cual es el final de los Juegos del hambre?' descripcion:''  topicos: listaTopic.
	preg5:= Pregunta usuario:user2  texto:'Que libro me recomiendan de policiales?' descripcion:''  topico: topic2.
	preg6:= Pregunta usuario:user3  texto:'Cuales son las nuevas series de Netflix?' descripcion:''  topico: topic3.
	
	user1 agregarPregunta: preg1; agregarPregunta: preg4.
	user2 agregarPregunta: preg3; agregarPregunta: preg5.
	user3 agregarPregunta: preg2; agregarPregunta: preg6.
	
	sistema:= CuOOra new.
	sistema agregarUsuario: user1;agregarUsuario: user2;agregarUsuario: user3.
	sistema agregarTopico: topic1;agregarTopico: topic2;agregarTopico: topic3;agregarTopico: topic4.
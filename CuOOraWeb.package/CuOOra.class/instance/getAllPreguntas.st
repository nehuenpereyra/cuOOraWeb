accesing
getAllPreguntas
	|listaAllPreguntas|
	listaAllPreguntas := OrderedCollection new.
	listaUsuarios do:[:unUsuario| listaAllPreguntas addAll:(unUsuario getPreguntas)].
	^listaAllPreguntas.
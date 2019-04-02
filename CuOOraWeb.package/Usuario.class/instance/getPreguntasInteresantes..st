accessing
getPreguntasInteresantes: unSistema
	"Implementado con el metodo de CuOOra"
	^(unSistema getAllPreguntas) select:[:unaPregunta| (self listaTopico: (unaPregunta getListaTopicos)  compare:listaTopicosInteresantes) ]
	
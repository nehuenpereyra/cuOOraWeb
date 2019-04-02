accessing
getRespuestas: unaPregunta sistema: unSistema
	^((unSistema getAllPreguntas)  detect:[:ipregunta| ipregunta=unaPregunta] ) obtenerRespuestas
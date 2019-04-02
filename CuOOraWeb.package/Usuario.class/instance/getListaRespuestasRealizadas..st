accessing
getListaRespuestasRealizadas: unSistema
	"[!]Revisar lo que retorna"
	|allPreguntas allRespuestas|
	allRespuestas := OrderedCollection new.
	allPreguntas := unSistema getAllPreguntas.
	allPreguntas do:[:unaPregunta| allRespuestas addAll: (unaPregunta obtenerRespuestas)].
	^(allRespuestas select:[:unaRerspuesta| unaRerspuesta getUser = self]).

	
	
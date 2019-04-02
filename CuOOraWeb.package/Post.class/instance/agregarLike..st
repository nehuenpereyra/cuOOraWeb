adding
agregarLike: unUsuario
	(listaDislike includes: unUsuario) ifTrue: [ listaDislike remove: unUsuario].
	(listaLike includes: unUsuario) ifFalse: [listaLike add: unUsuario].
adding
agregarDislike: unUsuario
	(listaLike includes: unUsuario) ifTrue: [ listaLike remove: unUsuario].
	(listaDislike includes: unUsuario) ifFalse: [listaDislike add: unUsuario].
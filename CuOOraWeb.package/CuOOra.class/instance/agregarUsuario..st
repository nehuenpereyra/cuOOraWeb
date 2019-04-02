adding
agregarUsuario: unUsuario
	(listaUsuarios includes: unUsuario) ifFalse:[ listaUsuarios add:unUsuario ].
	
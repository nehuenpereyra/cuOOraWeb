private
listaTopico: unaListatopicos compare: otraListaTopicos
	"Comprueba si en ambas listas de topicos comparten alguno y devuelve true"
	^unaListatopicos anySatisfy:[:unTopico| (otraListaTopicos includes: unTopico)]
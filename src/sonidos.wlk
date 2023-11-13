import juegoConfig.*
import personajes.*
import wollok.game.*


class Musica {
	const sonido 
	
	method ejecutar() {
		sonido.volume(0.5)
		sonido.play()
	}
}


class MusicaQueIniciaUnRatoDespues inherits Musica{
	override method ejecutar() {
		
		game.schedule(200, {super()})
	}	
}


class MusicaDeJuego inherits Musica {
	const property musicGame = game.sound("./sounds/intro.mp3")
}


class MusicaFinal inherits Musica {
	const property finalMusic = game.sound("./sounds/gameOver.mp3")
	
}


class MusicaNivelDos inherits Musica {
	const property musicGame = game.sound("./sounds/segundoNivel2.mp3")
}


class MusicaEnLoop inherits Musica {
	const property musicIntro = game.sound("./sounds/levelStart.mp3")
	
	override method musicaDeFondo(musica) {
		super(musica)
		musica.shouldLoop(true)
	}
}
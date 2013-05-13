package {

	import core.controler.StartupCommand;
	import core.facade.GameFacade;

	import flash.display.Sprite;
	import flash.events.Event;

	[SWF(width='500',height='680',backgroundColor='#ffffff',frameRate='25')]
	public class Tetris extends Sprite {
		public function Tetris() {

			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}

		private function onAddedToStage(event:Event):void {
			
			GameFacade.getInstance().startup(StartupCommand, this);
		}
	}
}

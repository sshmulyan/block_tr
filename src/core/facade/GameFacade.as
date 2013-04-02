package core.facade {

	import core.config.GeneralNotification;
	import core.controler.StartupCommand;

	import flash.display.Sprite;

	import org.puremvc.as3.patterns.facade.Facade;

	public class GameFacade extends Facade {
		private static var _instance:GameFacade;

		public static function getInstance():GameFacade {

			if(!_instance) {
				_instance = new GameFacade;
			}
			return _instance;
		}

		public function startup(command:Class, root:Sprite):void {

			registerCommand(GeneralNotification.STARTUP, command);
			sendNotification(GeneralNotification.STARTUP, root);
		}
	}
}

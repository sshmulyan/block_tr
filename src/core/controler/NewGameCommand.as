package core.controler {

import core.config.GeneralNotification;
import core.model.GameWindowProxy;

import org.puremvc.as3.interfaces.INotification;

	public class NewGameCommand extends GeneralCommands {

		override public function execute(notification:INotification):void {

			super.execute(notification);
			initializeComponents();
		}

		private function initializeComponents():void {

			facade.registerProxy(new GameWindowProxy());
			facade.registerCommand(GeneralNotification.CREATE_NEW_FIGURE, CreateFigureCommand);
            sendNotification(GeneralNotification.LOAD_RESOURSE_COMMAND);
            //sendNotification(GeneralNotification.START_GAME_COMMAND);
		}
	}
}

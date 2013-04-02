package core.controler {

	import core.model.GameWindowProxy;

	import org.puremvc.as3.interfaces.INotification;

	public class NewGameCommand extends GeneralCommands {

		override public function execute(notification:INotification):void {

			super.execute(notification);
			initializeComponents();
		}

		private function initializeComponents():void {

			facade.registerProxy(new GameWindowProxy());

		}
	}
}

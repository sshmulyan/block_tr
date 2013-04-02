package core.controler {

	import core.config.GeneralNotification;
	import core.model.RootProxy;

	import flash.display.Sprite;

	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

	public class StartupCommand extends SimpleCommand {

		override public function execute(notification:INotification):void {

			super.execute(notification);
			facade.registerProxy(new RootProxy(notification.getBody() as Sprite));
			facade.registerCommand(GeneralNotification.GENERAL_COMMAND, GeneralCommands);
			facade.registerCommand(GeneralNotification.NEW_GAME_COMMAND, NewGameCommand);

			sendNotification(GeneralNotification.NEW_GAME_COMMAND);
		}
	}
}

package core.controler {

	import core.config.GeneralNotification;
	import core.view.mediator.RootMediator;
	
	import flash.display.Sprite;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

	public class StartupCommand extends SimpleCommand {

		override public function execute(notification:INotification):void {

			super.execute(notification);
			facade.registerMediator(new RootMediator(notification.getBody() as Sprite));
			facade.registerCommand(GeneralNotification.GENERAL_COMMAND, GeneralCommands);
			facade.registerCommand(GeneralNotification.NEW_GAME_COMMAND, NewGameCommand);
            facade.registerCommand(GeneralNotification.LOAD_RESOURSE_COMMAND, LoadResourseCommand);
            facade.registerCommand(GeneralNotification.START_GAME_COMMAND, StartGameCommand);

			sendNotification(GeneralNotification.NEW_GAME_COMMAND);
		}
	}
}

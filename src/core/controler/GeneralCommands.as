package core.controler {

	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

	public class GeneralCommands extends SimpleCommand {

		override public function execute(notification:INotification):void {

			super.execute(notification);
		}
	}
}

package core.controler {

import core.model.ActiveFigureProxy;
import core.model.GameWindowProxy;

import org.puremvc.as3.interfaces.INotification;
import org.puremvc.as3.patterns.command.SimpleCommand;

	public class GeneralCommands extends SimpleCommand {

		override public function execute(notification:INotification):void {

			super.execute(notification);
		}

        protected function get gameWindowProxy():GameWindowProxy{
            return facade.retrieveProxy(GameWindowProxy.NAME) as GameWindowProxy;
        }
		
		protected function get activeFigureProxy():ActiveFigureProxy{
			return facade.retrieveProxy(ActiveFigureProxy.NAME) as ActiveFigureProxy;
		}
	}
}

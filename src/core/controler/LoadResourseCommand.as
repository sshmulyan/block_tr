package core.controler {

import core.config.GeneralNotification;
import core.utils.DataLoader;
import core.utils.Warehouse;

import flash.display.DisplayObjectContainer;
import flash.display.Loader;
import flash.events.Event;

import org.puremvc.as3.interfaces.INotification;

	public class LoadResourseCommand extends GeneralCommands {

		override public function execute(notification:INotification):void {

			super.execute(notification);
            var loader:DataLoader = new DataLoader("res/art/machine.swf");
            loader.addEventListener(Event.COMPLETE, onComplete);
            loader.load();
		}

        private function onComplete(event:Event):void{
            saveResult(event.target.loader as Loader);
            sendNotification(GeneralNotification.START_GAME_COMMAND);
        }

        private function saveResult(data:Loader):void{
            Warehouse.getInstance().setAsset(["game_window"], [data]);
        }
	}
}

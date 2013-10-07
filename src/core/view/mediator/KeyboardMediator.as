package core.view.mediator
{
	import core.config.GeneralConfig;
	import core.config.GeneralNotification;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class KeyboardMediator extends Mediator{
		
		public static const NAME:String = "KeyboardMediator";
		
		public function KeyboardMediator(mainView:Sprite):void{
			
			super(NAME, mainView);
		}
		
		override public function onRegister():void{
			
			super.onRegister();
			(viewComponent as Sprite).stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		}
		
		private function onKeyDown(event:KeyboardEvent):void{
			
			switch(event.keyCode){
				case GeneralConfig.KEY_DOWN:
				case GeneralConfig.KEY_LEFT:
				case GeneralConfig.KEY_RIGHT:
				case GeneralConfig.KEY_UP:
					sendNotification(GeneralNotification.SHIFT_FIGURE, event.keyCode);
					break;
			}
		}
	}
}
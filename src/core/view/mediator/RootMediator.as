package core.view.mediator
{
	import core.config.GeneralNotification;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class RootMediator extends Mediator{
		public var _mainView:Sprite;
		public static const NAME:String = "Root Mediator";
		
		public function RootMediator (mainView:Sprite){
			_mainView = mainView;
			super(NAME, _mainView);
		}
		
		private function get content():Sprite{
			return viewComponent as Sprite;
		}
		
		override public function listNotificationInterests():Array{
			return [GeneralNotification.ADD_CHILD_TO_ROOT, 
				GeneralNotification.REMOVE_CHILD_FROM_ROOT];
		}
		
		override public function handleNotification(notification:INotification):void{
			var userName:String;
			switch(notification.getName()){
				case GeneralNotification.ADD_CHILD_TO_ROOT:
					content.addChild(notification.getBody() as DisplayObject);
					break;
				case GeneralNotification.REMOVE_CHILD_FROM_ROOT:
					if (content.numChildren)
						content.removeChild(notification.getBody() as DisplayObject);
					break;
			}
		}
	}
}
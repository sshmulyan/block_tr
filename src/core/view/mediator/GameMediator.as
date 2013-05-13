package core.view.mediator
{
	import core.config.GeneralNotification;
	import core.view.vl.GameViewLogic;
	import core.view.vl.ViewLogic;
	
	import org.puremvc.as3.interfaces.INotification;

	public class GameMediator extends UIMediator{
		
		public static const NAME:String = "GameMediator";
		private var gameViewLogic:GameViewLogic;
		public function GameMediator(viewLogic:GameViewLogic):void{
			super(NAME, viewLogic);
			gameViewLogic = viewLogic;
		}
		
		override public function listNotificationInterests():Array{
			return [GeneralNotification.TIMER_CLICK];
		}
		
		override public function handleNotification(notification:INotification):void{
			switch(notification.getName()){
				case GeneralNotification.TIMER_CLICK:
					var randomX:int = Math.random() * 10;
					var randomY:int = Math.random() * 20;
					gameViewLogic.setVisibleBlock(randomX, randomY);
					break;
				default:
					break;
			}
		}
	}
}
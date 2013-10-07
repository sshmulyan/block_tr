package core.view.mediator
{
	import core.config.GeneralNotification;
	import core.model.vo.block.Figure;
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
			return [GeneralNotification.TIMER_TICK,
					GeneralNotification.ADD_NEW_FIGURE,
					GeneralNotification.SHIFT_FIGURE];
		}

		override public function handleNotification(notification:INotification):void{
			switch(notification.getName()){
				case GeneralNotification.TIMER_TICK:
					/*var randomX:int = Math.random() * 10;
					var randomY:int = Math.random() * 20;
					gameViewLogic.setVisibleBlock(randomX, randomY);*/
					gameViewLogic.shiftFigure();
					break;
				case GeneralNotification.ADD_NEW_FIGURE:
					gameViewLogic.setNewFigure(notification.getBody() as Figure);
					break;
				case GeneralNotification.SHIFT_FIGURE:
					gameViewLogic.shiftFigure(notification.getBody() as int);
					break;
				default:
					break;
			}
		}
	}
}


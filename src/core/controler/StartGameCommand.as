/**
 * Created with IntelliJ IDEA.
 * User: oshmulian
 * Date: 10.05.13
 * Time: 18:37
 * To change this template use File | Settings | File Templates.
 */
package core.controler {
	import core.config.GeneralNotification;
	import core.model.ActiveFigureProxy;
	import core.model.GameTimeProxy;
	import core.model.vo.block.Figure;
	import core.utils.ActionFigure;
	import core.view.mediator.GameMediator;
	import core.view.mediator.KeyboardMediator;
	import core.view.mediator.RootMediator;
	import core.view.vl.GameViewLogic;
	
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import org.osmf.events.TimeEvent;
	import org.puremvc.as3.interfaces.INotification;

	public class StartGameCommand extends GeneralCommands{

		override public function execute(notification:INotification):void{

			facade.registerMediator(new GameMediator(new GameViewLogic()));
			facade.registerProxy(new ActiveFigureProxy());
			facade.registerProxy(new GameTimeProxy());
			facade.registerMediator(new KeyboardMediator((facade.retrieveMediator(RootMediator.NAME) as RootMediator)._mainView));
		}
	}
}



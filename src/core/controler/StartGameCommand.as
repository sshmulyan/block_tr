/**
 * Created with IntelliJ IDEA.
 * User: oshmulian
 * Date: 10.05.13
 * Time: 18:37
 * To change this template use File | Settings | File Templates.
 */
package core.controler {
import core.config.GeneralNotification;
import core.model.vo.block.Figure;
import core.utils.ActionFigure;
import core.view.mediator.GameMediator;
import core.view.vl.GameViewLogic;

import flash.events.Event;
import flash.events.TimerEvent;
import flash.utils.Timer;

import org.osmf.events.TimeEvent;
import org.puremvc.as3.interfaces.INotification;

public class StartGameCommand extends GeneralCommands{

    override public function execute(notification:INotification):void{

		facade.registerMediator(new GameMediator(new GameViewLogic()));
		createFigure();
		var timer:Timer = new Timer(10, 10000000);
		timer.addEventListener(TimerEvent.TIMER, onTimer);
		timer.start();
    }

    private function createFigure():void{
		var i:int = Math.random() * 4;
        var figure:Figure = gameWindowProxy.figures[i];
		var newFigure:Figure = ActionFigure.rotate(figure);
    }
	
	private function onTimer(event:TimerEvent):void{
		sendNotification(GeneralNotification.TIMER_CLICK);
	}
}
}

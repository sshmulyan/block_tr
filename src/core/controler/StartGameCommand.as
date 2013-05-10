/**
 * Created with IntelliJ IDEA.
 * User: oshmulian
 * Date: 10.05.13
 * Time: 18:37
 * To change this template use File | Settings | File Templates.
 */
package core.controler {
import core.model.vo.block.Figure;

import org.puremvc.as3.interfaces.INotification;

public class StartGameCommand extends GeneralCommands{

    override public function execute(notification:INotification):void{


    }

    private function createFigure():void{
        var figure:Figure = gameWindowProxy.figures[Math.random() * 4];
    }
}
}

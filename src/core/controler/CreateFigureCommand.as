package core.controler
{
	import core.config.GeneralNotification;
	import core.model.vo.block.Figure;
	
	import org.puremvc.as3.interfaces.INotification;

	public class CreateFigureCommand extends GeneralCommands{
		
		override public function execute(notification:INotification):void{
			
			var i:int = Math.random() * 4;
			var figure:Figure = gameWindowProxy.figures[i];
			
			activeFigureProxy.activeFigure = figure;
		}
	}
}
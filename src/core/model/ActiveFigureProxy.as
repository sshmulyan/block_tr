package core.model
{
	import core.config.GeneralNotification;
	import core.model.vo.block.Figure;
	
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	public class ActiveFigureProxy extends Proxy{
		
		public static const NAME:String = "ActiveFigureProxy";
		
		private var timer:Timer;
		private var _activeFigure:Figure;
		
		public function ActiveFigureProxy():void{
			
			super(NAME);
		}
		
		override public function onRegister():void{
			
			super.onRegister();
			timer = new Timer(100);
			timer.addEventListener(TimerEvent.TIMER, onTimerTick);
			timer.start();
		}
		
		private function onTimerTick(event:TimerEvent):void{
			
			if(_activeFigure){
				return;
			}
			sendNotification(GeneralNotification.CREATE_NEW_FIGURE);
		}
		
		public function set activeFigure(figure:Figure):void{
			
			_activeFigure = figure;
			
			sendNotification(GeneralNotification.ADD_NEW_FIGURE, figure);
		}
		
		public function get activeFigure():Figure{
			
			return _activeFigure;
		}
	}
}
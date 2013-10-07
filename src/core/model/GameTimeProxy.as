package core.model
{
	import core.config.GeneralNotification;
	
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	public class GameTimeProxy extends Proxy{
		
		public static const NAME:String = "GameTimeProxy";
		private var timer:Timer;
		
		public function GameTimeProxy():void{
			
			super(NAME);
		}
		
		override public function onRegister():void{
			
			super.onRegister();
			timer = new Timer(1000);
			timer.addEventListener(TimerEvent.TIMER, onTimerTick);
			timer.start();
		}
		
		private function onTimerTick(event:TimerEvent):void{
			
			sendNotification(GeneralNotification.TIMER_TICK);
		}
	}
}
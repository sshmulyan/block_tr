package core.view.mediator
{
	import core.config.GeneralNotification;
	import core.view.vl.ViewLogic;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class UIMediator extends Mediator{
		public static const NAME:String = "UI_Mediator";
		
		public function UIMediator(NAME:String, viewElement:ViewLogic):void{
			super(NAME, viewElement);
		}
		
		protected function get viewLogic():ViewLogic{
			return viewComponent as ViewLogic;
		}
		
		override public function onRegister():void{
			super.onRegister();
			sendNotification(GeneralNotification.ADD_CHILD_TO_ROOT, viewLogic.content);
		}
		
		override public function onRemove():void{
			super.onRemove();
			viewLogic.onRemove();	
		}
	}
}
package core.view.vl
{
	import core.utils.Warehouse;
	
	import flash.display.DisplayObjectContainer;
	import flash.events.EventDispatcher;
	
	public class ViewLogic extends EventDispatcher{
		private var _grafics:DisplayObjectContainer;
		
		public function ViewLogic(viewComponentName:String){
			_grafics = Warehouse.getInstance().getAsset(viewComponentName);
		}
		
		public function get content():DisplayObjectContainer{
			return _grafics as DisplayObjectContainer;
		}
		
		public function onRemove():void{
			if (content && content.parent)
				content.parent.removeChild(content);
		}
	}
}
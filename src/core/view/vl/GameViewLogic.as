package core.view.vl
{
	import core.utils.Warehouse;
	
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;

	public class GameViewLogic extends ViewLogic{
		
		private var gameWindow:DisplayObjectContainer;
		private var allBlock:Array = [];
		private var blockForNextFigure:Array = [];
		public function GameViewLogic(){
			super("display");
			initComponent();
		}
		
		private function initComponent():void{
			gameWindow = content;
			
			initBlockOnGameField();
			initBlockNextFigure()
			setBlockOnWindow();
		}
		
		private function initBlockOnGameField():void{
			
			var slideX:Number = 8.0;
			for(var x:int = 0; x < 10; x++){
				var blockline:Array = [];				
				var slideY:Number = 12.0;
				for(var y:int = 0; y < 20; y++){					
					blockline[y] = Warehouse.getInstance().getAsset("element");
					(blockline[y] as Sprite).scaleX = 0.9;
					(blockline[y] as Sprite).scaleY = 0.9;
					(blockline[y] as Sprite).x = slideX;
					(blockline[y] as Sprite).y = slideY;
					slideY = slideY + 33.6;
				}
				slideX = slideX + 33.6;
				allBlock[x] = blockline;
			}
		}
		
		private function initBlockNextFigure():void{
			var slideX:Number = 361;
			for(var x:int = 0; x < 4; x++){
				var blockline:Array = [];				
				var slideY:Number = 180;
				for(var y:int = 0; y < 4; y++){					
					blockline[y] = Warehouse.getInstance().getAsset("element");
					(blockline[y] as Sprite).scaleX = 0.9;
					(blockline[y] as Sprite).scaleY = 0.9;
					(blockline[y] as Sprite).x = slideX;
					(blockline[y] as Sprite).y = slideY;
					slideY = slideY + 33.3;
				}
				slideX = slideX + 33.3;
				blockForNextFigure[x] = blockline;
			}
		}
		
		private function setBlockOnWindow():void{
			for(var x:int = 0; x < 10; x++){
				for(var y:int = 0; y < 20; y++){
					gameWindow.addChild(allBlock[x][y]);
					//(allBlock[x][y] as Sprite).visible = false;
				}
			}
			
			for(var x:int = 0; x < 4; x++){
				for(var y:int = 0; y < 4; y++){
					gameWindow.addChild(blockForNextFigure[x][y]);
					//(blockForNextFigure[x][y] as Sprite).visible = false;
				}
			}
		}
		
		public function setVisibleBlock(x:int, y:int):void{
			var isVisible:Boolean;
			if((allBlock[x][y] as Sprite).visible){
				isVisible = false;
			} else {
				isVisible = true;
			}
			(allBlock[x][y] as Sprite).visible = isVisible;
		}
	}
}
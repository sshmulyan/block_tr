package core.view.vl
{
	import core.config.GeneralConfig;
	import core.config.GeneralNotification;
	import core.model.vo.ZoneFigureVO;
	import core.model.vo.ZoneProperties;
	import core.model.vo.block.Figure;
	import core.utils.Warehouse;
	
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;

	public class GameViewLogic extends ViewLogic{

		private var gameWindow:DisplayObjectContainer;
		private var allBlock:Array = [];
		private var blockForNextFigure:Array = [];
		private var zoneFigure:ZoneFigureVO;
		private var activeFigure:Figure;
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
					(allBlock[x][y] as Sprite).visible = false;
				}
			}

			for(var x:int = 0; x < 4; x++){
				for(var y:int = 0; y < 4; y++){
					gameWindow.addChild(blockForNextFigure[x][y]);
					(blockForNextFigure[x][y] as Sprite).visible = false;
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

		public function setNewFigure(figure:Figure):void{
			
			activeFigure = figure;
			
			for(var xFigure:int = 0; xFigure < figure.figure.zone.length; xFigure++){
				for(var yFigure:int = 0; yFigure < figure.figure.zone.length; yFigure++){
					var zoneProperties:ZoneProperties = figure.figure.zone[xFigure][yFigure] as ZoneProperties;
					if((figure.figure.zone[xFigure][yFigure] as ZoneProperties).isBlock){
						(allBlock[zoneProperties.x][zoneProperties.y] as Sprite).visible = true;
					}else{
						(allBlock[zoneProperties.x][zoneProperties.y] as Sprite).visible = false;
					}
				}
			}
		}

		public function shiftFigure(direction:int = GeneralConfig.KEY_DOWN):void{
			
			clearOldZone(direction);
			
			for(var xFigure:int = 0; xFigure < activeFigure.figure.zone.length; xFigure++){
				for(var yFigure:int = 0; yFigure < activeFigure.figure.zone.length; yFigure++){
					var zoneProperties:ZoneProperties = activeFigure.figure.zone[xFigure][yFigure] as ZoneProperties;
					if((activeFigure.figure.zone[xFigure][yFigure] as ZoneProperties).isBlock){
						(allBlock[zoneProperties.x][zoneProperties.y] as Sprite).visible = true;
					}else{
						(allBlock[zoneProperties.x][zoneProperties.y] as Sprite).visible = false;
					}
				}
			}
		}
		
		private function clearOldZone(direction:int):void{
			
			var shiftX:int = 0;
			var shiftY:int = 0;
			
			switch (direction){
				case GeneralConfig.KEY_DOWN:
					shiftY = 1;
					break;
				case GeneralConfig.KEY_LEFT:
					shiftX = 1;
					break;
				case GeneralConfig.KEY_RIGHT:
					shiftX = -1;
					break;
			}
			
			for(var xFigure:int = 0; xFigure < activeFigure.figure.zone.length; xFigure++){
				for(var yFigure:int = 0; yFigure < activeFigure.figure.zone.length; yFigure++){
					var zoneProperties:ZoneProperties = activeFigure.figure.zone[xFigure][yFigure] as ZoneProperties;
						(allBlock[zoneProperties.x][zoneProperties.y] as Sprite).visible = false;
						zoneProperties.x += shiftX;
						zoneProperties.y += shiftY;
				}
			}
		}
	}
}


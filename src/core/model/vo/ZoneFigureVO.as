package core.model.vo {

	import core.config.GeneralConfig;

	public class ZoneFigureVO {
		public var zone:Array;
		public var globalCoordinates:Array;

		public function ZoneFigureVO(typeFigures:String):void {

			zone = [];
			globalCoordinates = [];

			switch(typeFigures) {
				case GeneralConfig.CUBE_2:
				case GeneralConfig.MINI_LINE: {
					generateZone(2, 2);
					break;
				}
				case GeneralConfig.LINE: {
					generateZone(4, 4);
					break;
				}
				case GeneralConfig.CUBE_3: {
					generateZone(3, 3);
					break;
				}
			}

		}

		private function generateZone(sizeX:int, sizeY:int):void {

			for(var x:int = 0; x < sizeX; x++) {
				var lineZone:Array = [];

				for(var y:int = 0; y < sizeY; y++) {
					var properties:ZoneProperties = new ZoneProperties;
					properties.x = x+4;
					properties.y = y;
					lineZone[y] = properties;
				}
				zone[x] = lineZone;
			}


		}
	}
}



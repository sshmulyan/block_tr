package core.model.vo {

	import core.config.GeneralConfig;

	public class ZoneFigureVO {
		public var _zone:Array;

		public function ZoneFigureVO(typeFigures:String):void {

			_zone = [];

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
					lineZone[y] = 0;
				}
				_zone[x] = lineZone;
			}
		}
	}
}

package core.model.vo {

	public class GameWindowVO {

		private var gameZone:Array;

		public function GameWindowVO(heightWindow:int, widhtWindow:int):void {

			gameZone = [];

			for(var x:int = 0; x < widhtWindow; x++) {
				var zone:Array = [];

				for(var y:int = 0; y < heightWindow; y++) {
					zone[y] = 0;
				}
				gameZone[x] = zone;
			}
		}
	}
}

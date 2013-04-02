package core.model.vo.block {

	import core.config.GeneralConfig;
	import core.model.vo.ZoneFigureVO;

	public class Line {

		private var _figure:ZoneFigureVO;

		public function Line() {

			generateFigure();
		}

		private function generateFigure():void {

			var direction:int = Math.random() * 2;
			_figure = new ZoneFigureVO(GeneralConfig.LINE);
			_figure._zone[0][1] = 1;
		}
	}
}

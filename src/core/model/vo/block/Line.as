package core.model.vo.block {

	import core.config.GeneralConfig;
	import core.model.vo.ZoneFigureVO;

	public class Line extends Figure {

		override protected function generateFigure():void {

            type = GeneralConfig.LINE;
			var direction:int = Math.random() * 2;
			figure = new ZoneFigureVO(GeneralConfig.LINE);
			for(var i:int = 0; i < figure.zone.length; i++){
                figure.zone[1][i] = 1;
            }
		}
	}
}

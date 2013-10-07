/**
 * Created with IntelliJ IDEA.
 * User: oshmulian
 * Date: 10.05.13
 * Time: 15:57
 * To change this template use File | Settings | File Templates.
 */
package core.model.vo.block {
	import core.config.GeneralConfig;
	import core.model.vo.ZoneFigureVO;
	import core.model.vo.ZoneProperties;

	public class Cube extends Figure{

		override protected function generateFigure():void{

			type = GeneralConfig.CUBE_2;
			figure = new ZoneFigureVO(GeneralConfig.CUBE_2);
			for(var i:int = 0; i < figure.zone.length; i++){
				for(var j:int = 0; j < figure.zone.length; j++){
					(figure.zone[i][j] as ZoneProperties).isBlock = true;
				}
			}
		}
	}
}



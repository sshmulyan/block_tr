/**
 * Created with IntelliJ IDEA.
 * User: oshmulian
 * Date: 10.05.13
 * Time: 17:51
 * To change this template use File | Settings | File Templates.
 */
package core.model.vo.block {
	import core.config.GeneralConfig;
	import core.model.vo.ZoneFigureVO;
	import core.model.vo.ZoneProperties;

	public class Bracket extends Figure{

		override protected function generateFigure():void{

			type = GeneralConfig.CUBE_3;
			figure = new ZoneFigureVO(GeneralConfig.CUBE_3);
			(figure.zone[0][0] as ZoneProperties).isBlock = true;
			(figure.zone[0][1] as ZoneProperties).isBlock = true;
			(figure.zone[0][2] as ZoneProperties).isBlock = true;
			(figure.zone[1][2] as ZoneProperties).isBlock = true;
		}
	}
}



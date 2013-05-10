/**
 * Created with IntelliJ IDEA.
 * User: oshmulian
 * Date: 10.05.13
 * Time: 17:31
 * To change this template use File | Settings | File Templates.
 */
package core.model.vo.block {
import core.config.GeneralConfig;
import core.model.vo.ZoneFigureVO;

public class MiniLine extends Figure{

    override protected function generateFigure():void {

        type = GeneralConfig.MINI_LINE;
        figure = new ZoneFigureVO(GeneralConfig.MINI_LINE);
        figure.zone[0][0] = 1;
        figure.zone[0][1] = 1;
    }
}
}

/**
 * Created with IntelliJ IDEA.
 * User: oshmulian
 * Date: 10.05.13
 * Time: 15:48
 * To change this template use File | Settings | File Templates.
 */
package core.model.vo.block {
import core.model.vo.ZoneFigureVO;

public class Figure {
    public var type:String;
    protected var figure:ZoneFigureVO;

    public function Figure():void{
        generateFigure();
    }
    protected function generateFigure():void{

    }
}
}

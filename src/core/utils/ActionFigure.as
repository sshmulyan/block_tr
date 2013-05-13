package core.utils
{
	import core.model.vo.ZoneFigureVO;
	import core.model.vo.block.Figure;

	public class ActionFigure{
		
		public static function rotate(figure:Figure):Figure{
			var newFigure:Figure = new Figure;
			newFigure.figure = new ZoneFigureVO(figure.type);
			newFigure.type = figure.type;
			var sizeFigure:int = figure.figure.zone.length;
			for(var x:int = 0; x < sizeFigure; x++){
				var newY:int = 0;
				for(var y:int = sizeFigure; y > 0; y--){					
					newFigure.figure.zone[x][newY] = figure.figure.zone[y-1][x]; 
					newY++;
				}
			}
			return newFigure;
		}		
	}
}
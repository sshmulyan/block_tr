package core.model.vo.block
{
	import core.config.GeneralConfig;
	import core.model.vo.ZoneFigureVO;

	public class MiniLine
	{
		public function MiniLine()
		{
			private var _figure:ZoneFigureVO;
			
			private function generateFigure():void {
				
				var direction:int = Math.random() * 2;
				_figure = new ZoneFigureVO(GeneralConfig.MINI_LINE);
				switch(direction){
					case 0:{
						_figure._zone[0, 0] = 1;
						_figure._zone[0, 1] = 1;
						break;
					}
					case 1:{
						_figure._zone[1, 0] = 1;
						_figure._zone[1, 1] = 1;
						break;
					}
				}				
			}
		}
	}
}
package core.model {

	import core.config.GeneralConfig;
	import core.model.vo.GameWindowVO;
	import core.model.vo.block.Line;

	import org.puremvc.as3.patterns.proxy.Proxy;

	public class GameWindowProxy extends Proxy {

		public static const NAME:String = "GameWindowProxy";

		public function GameWindowProxy() {

			super(NAME, new GameWindowVO(GeneralConfig.WIDHT, GeneralConfig.HEIGHT));
			//var figure1:Line = new Line;
			var figures:Array = [new Line, new Line, new Line];
		}
	}
}

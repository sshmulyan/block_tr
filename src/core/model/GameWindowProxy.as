package core.model {

	import core.config.GeneralConfig;
	import core.model.vo.GameWindowVO;
import core.model.vo.block.Bracket;
import core.model.vo.block.Cube;
import core.model.vo.block.Line;
import core.model.vo.block.MiniLine;

import org.puremvc.as3.patterns.proxy.Proxy;

	public class GameWindowProxy extends Proxy {

		public static const NAME:String = "GameWindowProxy";
        private var _figures:Array;

		public function GameWindowProxy() {

            super(NAME, new GameWindowVO(GeneralConfig.WIDHT, GeneralConfig.HEIGHT));
            _figures = [new Line, new MiniLine, new Cube, new Bracket];
		}

        public function get figures():Array{
            return _figures;
        }
	}
}

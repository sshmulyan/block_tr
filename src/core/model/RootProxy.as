package core.model {

	import flash.display.Sprite;

	import org.puremvc.as3.patterns.proxy.Proxy;

	public class RootProxy extends Proxy {
		public static const NAME:String = "RootProxy";

		public function RootProxy(mainSprite:Sprite) {

			super(NAME, mainSprite);
		}
	}
}

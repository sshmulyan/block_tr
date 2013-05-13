/**
 * Created with IntelliJ IDEA.
 * User: RS
 * Date: 11.05.13
 * Time: 1:01
 * To change this template use File | Settings | File Templates.
 */
package core.utils {
	import flash.display.DisplayObjectContainer;
	import flash.display.Loader;
	import flash.display.MovieClip;

public class Warehouse {

    private static var _instance:Warehouse;
	private var _loaderContent:Array = [];
	private var _nameContent:Array = [];

    public static function getInstance():Warehouse{
        if(!_instance){
            _instance = new Warehouse();
        }
        return _instance;
    }

	public function setAsset(nameContent:Array, content:Array):void{
		_loaderContent = _loaderContent.concat(content);
		_nameContent =  _nameContent.concat(nameContent);
	}
	
	public function getAsset(nameContent:String):DisplayObjectContainer{
		/*var index:int;
		if (parentContent != null){
			index = _nameContent.indexOf(parentContent);
		} else {
			index = _nameContent.indexOf(nameContent);
		}
		if (index != -1){*/
			var assetClass:Class = (_loaderContent[0] as Loader).contentLoaderInfo.applicationDomain.getDefinition(nameContent) as Class;
			var result:DisplayObjectContainer = new assetClass();
		/*} else result = null;*/
		return result;
	}
}
}

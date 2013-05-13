/**
 * Created with IntelliJ IDEA.
 * User: RS
 * Date: 11.05.13
 * Time: 1:16
 * To change this template use File | Settings | File Templates.
 */
package core.utils {
import flash.display.Loader;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.net.URLRequest;

public class DataLoader extends EventDispatcher{

    public var loader:Loader;
    private var urlRequest:URLRequest;

    public function DataLoader(url:String):void {
        initializeLoader(url);
    }

    private function initializeLoader(url:String):void{
        loader = new Loader();
        urlRequest= new URLRequest(url);
        loader.contentLoaderInfo.addEventListener(Event.COMPLETE, dispatchEvent);
    }

    public function load():void{
        loader.load(urlRequest);
    }
}
}

import skyui.widgets.WidgetBase;

class skyui.widgets.pcp_speedmult.CritChanceWidget extends WidgetBase
{	
  /* STAGE ELEMENTS */
	
	var _xscale, _yscale;
	public var countText: TextField;
  
  
  /* INITIALIZATION */

	public function CritChanceWidget()
	{
		super();
		
		_visible = false;
		countText.text = "0";
	}


  /* PUBLIC FUNCTIONS */
  
	// @overrides WidgetBase
	public function getWidth(): Number
	{
		return _width;
	}

	// @overrides WidgetBase
	public function getHeight(): Number
	{
		return _height;
	}

	// @Papyrus
	public function setVisible(a_visible: Boolean): Void
	{
		_visible = a_visible;
	}
	
	// @Papyrus
	public function setCount(a_count: Number): Void
	{
		var num:Number = a_count;
		num *= 10;
		num = Math.round(num);
		num /= 10;
		if (num > 100) {
			num = 100
		}
		countText.text = String(num) + " %";
	}
	
	function get Scale()
    {
        return (_xscale);
    }
	
    function set Scale(scale)
    {
        _xscale = scale;
        _yscale = scale;
        this.invalidateSize();
        //
        null;
    }
}
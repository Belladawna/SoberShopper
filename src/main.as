function onLoad():Void 
{
	
	com.GameInterface.DialogIF.SignalShowDialog.Connect( SlotShowDialog, this );
	
}

function SlotShowDialog( dialogIF:com.GameInterface.DialogIF )
{
	for (thingee in _root) 
	{
		if (thingee.indexOf("Dialog") >= 0)
		{
			if (_root[thingee].m_DialogIF.m_Message.indexOf("You cannot use this item. Are you sure you want to buy it?") == 0)
			{
				_root[thingee].m_DialogIF.Respond(0);
				_root[thingee].m_DialogIF.Close();
			}
			
		}
	}
}
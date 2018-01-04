
if (instance_exists(oZUIMain))
 return oZUIMain.id;
else
 return instance_create_depth(0, 0, -5000, oZUIMain);

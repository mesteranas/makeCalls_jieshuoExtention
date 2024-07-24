require "import"
import "android.widget.*"
import "android.view.*"
name="call maker"
description="this tool makes you to make phone calls"
layout={
    LinearLayout;
    {
        EditText;
        hint="type phone numver";
        id="phoneNumber";
    };
    {
        Button;
        text="call";
        onClick=function ()
            if phoneNumber.getText().toString()~="" then
                service.call(phoneNumber.getText().toString())
                service.speak("calling ...")
            else
                service.speak("please type phone number")
            end
        end;
    };
}
dlg=LuaDialog()
dlg.setTitle(name)
dlg.setMessage(description)
dlg.setView(loadlayout(layout))
dlg.show()
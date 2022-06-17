controladdin POSTAAPI
{
    RequestedHeight = 300;
    MinimumHeight = 300;
    MaximumHeight = 300;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;

    Scripts =
        'src/js/lib.js',
        'src/js/demo.js';

    StartupScript = 'src/js/startup.js';
    //StyleSheets ='style.css';
    event OnControlReady()

    event OnInvoke(Context: JsonObject);

    procedure OnInvokeResult(Result: JsonObject)
}
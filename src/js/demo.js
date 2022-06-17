function initialize(){
    let root = document.getElementById("controlAddin");
    let  btn = document.createElement("button");
    btn.innerText = "Invoke AL";
    root.appendChild(btn);
    btn.addEventListener("click",click);
}

function click(){
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnInvoke",[{name:"Ayman"}], false, ()=>{
        alert("This is Javascript, AL is done now.");
    })
}

function OnInvokeResult(){
    alert('Al invokes OnInvokeResult')
}
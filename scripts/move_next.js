var id = ["password", "c_password", "save"];
function focusNext(e){
    try{
        for(var i=0; i < id.length; i++){
            if(e.keyCode === 13 && e.target.id === id[i]){
            dcocument.querySelector('#${id[i+1]}').focus();
        }
    }
} catch(error){}
}

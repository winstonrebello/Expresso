var lastTabIndex = 10;
function OnFocusOut()
{
    var currentElement = $get(currentElementId); // ID set by OnFOcusIn
    var curIndex = currentElement.tabIndex; //get current elements tab index
    if(curIndex == lastTabIndex) { //if we are on the last tabindex, go back to the beginning
        curIndex = 0;
    }
    var tabbables = document.querySelectorAll(".tabable"); //get all tabable elements
    for(var i=0; i<tabbables.length; i++) { //loop through each element
        if(tabbables[i].tabIndex == (curIndex+1)) { //check the tabindex to see if it's the element we want
            tabbables[i].focus(); //if it's the one we want, focus it and exit the loop
            break;
        }
    }
}
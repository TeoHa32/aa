function selectAllCheckboxes(){
    var selectAllCheckbox = document.getElementById("select");
    var checkboxes = document.getElementsByClassName("form-check-input");
    for (var i = 0; i < checkboxes.length; i++){
        checkboxes[i].checked = selectAllCheckbox.checked;
    }
}
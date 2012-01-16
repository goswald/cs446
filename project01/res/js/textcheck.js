function checkText() {
    var string1=document.inputForm.howYouDoin.value
    if (string1.length==0) {
        alert("Surely, you must feel something!")
        document.inputForm.howYouDoin.focus()
    }
}
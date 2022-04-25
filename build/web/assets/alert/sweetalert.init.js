document.querySelector('.sweet-wrong').onclick = function(){
    sweetAlert("", "Annulation...", "error");
};
document.querySelector('.sweet-message').onclick = function(){
    swal("Hey, Here's a message !!")
};
document.querySelector('.sweet-text').onclick = function(){
    swal("Hey, Here's a message !!", "It's pretty, isn't it?")
};
document.querySelector('.sweet-success').onclick = function(){
    swal("", "Insertion avec succès...", "success")
};

document.querySelector('.sweet-confirm').onclick = function(){
    swal({
            title: "",
            text: "Voulez-vous vraiment modifier ce champ ?",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Oui",
            cancelButtonText: "Non",
            closeOnConfirm: false,
            closeOnCancel: false
        },
        function(isConfirm){
            if (isConfirm) {
                swal("", "Modification en cours ...", "success");
            }
            else {
                swal("", "Modification annuler", "error");
            }
        });
};
document.querySelector('.sweet-success-cancel').onclick = function(){
    swal({
            title: "",
            text: "Voulez-vous vraiment supprimer ce champ ?",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Oui",
            cancelButtonText: "Non",
            closeOnConfirm: false,
            closeOnCancel: false
        },
        function(isConfirm){
            if (isConfirm) {
                swal("", "Suppression avec succèss", "success");
            }
            else {
                swal("", "Suppression annuler", "error");
            }
        });
};
document.querySelector('.sweet-image-message').onclick = function(){
    swal({
        title: "Sweet !!",
        text: "Hey, Here's a custom image !!",
        imageUrl: "images/hand.jpg"
    });
};
document.querySelector('.sweet-html').onclick = function(){
    swal({
        title: "Sweet !!",
        text: "<span style='color:#ff0000'>Hey, you are using HTML !!<span>",
        html: true
    });
};
document.querySelector('.sweet-auto').onclick = function(){
    swal({
        title: "Sweet auto close alert !!",
        text: "Hey, i will close in 2 seconds !!",
        timer: 2000,
        showConfirmButton: false
    });
};
document.querySelector('.sweet-prompt').onclick = function(){
    swal({
            title: "Enter an input !!",
            text: "Write something interesting !!",
            type: "input",
            showCancelButton: true,
            closeOnConfirm: false,
            animation: "slide-from-top",
            inputPlaceholder: "Write something"
        },
        function(inputValue){
            if (inputValue === false) return false;
            if (inputValue === "") {
                swal.showInputError("You need to write something!");
                return false
            }
            swal("Hey !!", "You wrote: " + inputValue, "success");
        });
};
document.querySelector('.sweet-ajax').onclick = function(){
    swal({
            title: "Sweet ajax request !!",
            text: "Submit to run ajax request !!",
            type: "info",
            showCancelButton: true,
            closeOnConfirm: false,
            showLoaderOnConfirm: true,
        },
        function(){
            setTimeout(function(){
                swal("Hey, your ajax request finished !!");
            }, 2000);
        });
};

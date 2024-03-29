$(function(){
    $(document).on('click','#delete',function(e){
        e.preventDefault();
        var link = $(this).attr("href");

            Swal.fire({
            title: 'Êtes Vous sûr?',
            text: "Supprimer ces données ?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Oui, supprimez-le !'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = link
                    Swal.fire(
                    'Supprimé !',
                    'Votre fichier a été supprimé.',
                    'succès'
                    )
                }
            }) 

    });

  });

  $(function(){
    $(document).on('click','#ApproveBtn',function(e){
        e.preventDefault();
        var link = $(this).attr("href");


                  Swal.fire({
                    title: 'Are you sure?',
                    text: "Approve This Data?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Approve it!'
                  }).then((result) => {
                    if (result.isConfirmed) {
                      window.location.href = link
                      Swal.fire(
                        'Approved!',
                        'Your file has been Approved.',
                        'success'
                      )
                    }
                  }) 
                  
    });

  });
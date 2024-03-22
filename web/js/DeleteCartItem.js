

function deleteCartItem(productID) {
    fetch('./deletecart', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: productID
    }).then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok. Status: ' + response.status);
                }
                return response.text();
            })
            .then(data => {
                var statusDiv;
                var result = data.toString();
                if (result === "success") {
                    statusDiv = document.getElementById("deleteCartStatus");
                    statusDiv.innerHTML = "Delete success!";
                    $('#successModal').modal('show');
                    document.getElementById('Product'+productID).remove();
                    return true;
                } else {
                    statusDiv = document.getElementById("errorMessage");
                    statusDiv.innerHTML = result;
                    $('#errorModal').modal('show');
                    return false;
                }
            })
            .catch(error => {
                statusDiv = document.getElementById("errorMessage");
                    statusDiv.innerHTML = error;
                    $('#errorModal').modal('show');
                return false;
            });

}




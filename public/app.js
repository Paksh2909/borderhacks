const pharmList = document.querySelector('')

function renderPharm(doc){}

db.collection('pharmacies').get().then((snapshot) => {
    snapshot.docs.forEach(doc => {
        console.log(doc.data());
    });
    

})
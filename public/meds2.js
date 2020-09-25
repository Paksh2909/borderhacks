const docList = document.querySelector('#med-list');
const form = document.querySelector('#add-med-form');

function renderMed(doc){
    let li = document.createElement('li');
    let name = document.createElement('span');
    let price = document.createElement('span');
    let avail = document.createElement('span');

    li.setAttribute('data-id',doc.id);
    name.textContent = doc.data().name;
    price.textContent = doc.data().price;
    avail.textContent = doc.data().avail;

    li.appendChild(name);
    li.appendChild(price);
    li.appendChild(avail);

    docList.appendChild(li);
}

// db.collection('doctors').get().then((snapshot) => {
//     snapshot.docs.forEach(doc => {
//         renderPharm(doc);
//     });
// })

form.addEventListener('submit', (e) => {
    e.preventDefault();
    db.collection('doctors').add({
        name: form.name.value,
        location: new firebase.firestore.GeoPoint(parseFloat(form.latitude.value), parseFloat(form.longitude.value)),
        specialization: form.specialization.value,
        contact: parseInt(form.contact.value)
    })
    form.name.value = '';
    form.latitude.value = '';
    form.longitude.value = '';
    form.specialization.value ='';
    form.contact.value = '';
    
    

})


//Real Time Listening

db.collection('doctors').onSnapshot(snapshot => {
    let changes = snapshot.docChanges();
    changes.forEach(change => {
        if(change.type=='added')
        {
            renderMed(change.doc);
        }
    })
    
})
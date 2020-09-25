const docList = document.querySelector('#doc-list');
const form = document.querySelector('#add-doc-form');

function renderPharm(doc){
    let li = document.createElement('li');
    let name = document.createElement('span');
    let spec = document.createElement('span');
    let loc = document.createElement('span');
    let contact = document.createElement('span');

    li.setAttribute('data-id',doc.id);
    name.textContent = doc.data().name;
    loc.textContent = doc.data().location;
    spec.textContent = doc.data().specialization;
    contact.textContent = doc.data().contact;

    li.appendChild(name);
    li.appendChild(loc);
    li.appendChild(spec);
    li.appendChild(contact);

    docList.appendChild(li);
}

db.collection('doctors').get().then((snapshot) => {
    snapshot.docs.forEach(doc => {
        renderPharm(doc);
    });
})

form.addEventListener('submit', (e) => {
    e.preventDefault();
    db.collection('doctors').add({
        name: form.name.value,
        location: form.location.value,
        specialization: form.specialization.value,
        contact: form.contact.value

    })

})
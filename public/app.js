const pharmList = document.querySelector('')



db.collection('doctors').get().then((snapshot) => {
    snapshot.docs.forEach(doc => {
        console.log(doc.data());
    });
    

})
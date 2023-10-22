// function getData()
// {
//     axios.get('http://localhost/dbms_project/doctor_api.php')
//     .then((res)=>{
//         console.log(res);
//     })
//     .catch((err)=>{
//         console.log(err);
//     })
// }
// getData();


let card = ``;
function getData()
{
    fetch('http://localhost/hms/doctor_api.php')
    .then((response)=>{
        // console.log('fetched');
        return response.json();
    })
    .then((result)=>{
        // console.log(result);
        // const doc_name = document.querySelector('.card-title');
        // doc_name.innerText = result.data[0].doctor_name;
        // const doc_spec = document.querySelector('.card-text');
        // doc_spec.innerText = result.data[0].specialization;
        // const img = document.querySelector('img');
        // img.src = 'https://st.depositphotos.com/1258191/3252/i/600/depositphotos_32524605-stock-photo-portrait-of-a-handsome-doctor.jpg';
        result.data.forEach(element => {
           card = card + 
           `
           <div class="col mb-5">
           <div class="card" style="width: 18rem;">
           <img src="${element.photos}">
           <div class="card-body">
               <h5 class="card-title">Dr. ${element.doctor_name}</h5>
               <p class="card-text fs-3">${element.specialization}</p>
               <a href="#" class="btn btn-primary">Contact Now</a>
           </div>
           </div>
            </div>
           `;  
          let row = document.querySelector('.row');
          row.innerHTML = card;   
        });
    })   
}

getData();
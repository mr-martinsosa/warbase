document.addEventListener('DOMContentLoaded', domContentLoadedEvent => {
    // gets reference to the button element on the page
    let button = document.querySelector('button')
  
    // sets up the click event handler when clicking the button
    
  
      // makes the ujs call
      Rails.ajax({
        type: 'get', 
        url: '/home/foursquare',
        // use the following only if you making an POST, PUT / PATCH, DELETE
        // data: {
        //   id: 6
        // },
        success: (response) => {
          // this is what executes when the request is successful
        //   let users = response.users
        //   let usersUl = document.querySelector("ul#users")
  
        //   users.forEach(user => {
        //     let userLi = document.createElement("li")
  
        //     userLi.id = user.id
        //     userLi.innerHTML = user.name
  
        //     usersUl.appendChild(userLi)
                // console.log(response)
                let p = document.createElement("p")
                let body = document.querySelector("body")
                p = response.body 
                console.log(p.innerHTML)
                body.appendChild(p)
                
        //   })
        },
        error: (error) => {
          // this is what executes when the request is unsuccessful
          console.log(error)
        }
      })
    })

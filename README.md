# paperClip Rails Backend
## User Authentication and Creation
### Registration
```Javascript
const SERVER_URL = "http://localhost:3000/registrations";

axios.post(SERVER_URL, { user: { username, email,	password,	password_confirmation }},	{ withCredentials: true })
     .then((response) => {
				if (response.data.status === "created") {
					this.props.handleSuccessfulAuth(response.data);
				}
			})
			.catch((error) => {
				console.log("registration error", error);
			});
```

Make sure { withCredentials: true } is included in the axios request as this will allow the API to access the local session cookie. Otherwise your request won't work as intended.

### Login

```Javascript
const SERVER_URL = "http://localhost:3000/sessions";

	axios.post(SERVER_URL, { user: { username, password }	}, { withCredentials: true })
       .then((response) => {
				if (response.data.logged_in) {
					this.props.handleSuccessfulAuth(response.data);
				}
			})
			.catch((error) => {
				console.log("login error", error);
			});
```
Make sure { withCredentials: true } is included in the axios request as this will allow the API to access the local session cookie. Otherwise your request won't work as intended.

### Logout
```Javascript
const SERVER_URL = "http://localhost:3000/logout";

	axios.delete(SERVER_URL, { withCredentials: true })
			 .then((response) => {
			  	this.props.handleLogout();
			  })
			 .catch((error) => {
			  	console.log("logout error", error);
			  });
```

Make sure { withCredentials: true } is included in the axios request as this will allow the API to access the local session cookie. Otherwise your request won't work as intended.

- On the Rails backend, the action will run the reset_session method which will clear all session info for that session.
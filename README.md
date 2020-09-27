# hackathon_app

A new Flutter application.

# *Medicino*

### Problem Statement (*Borderhacks - Hackathon'20*)
- Implement a App Based solution through which doctors and pharmacies
can share their information and inventory with patients. The solution
should explain the process involved and the benefits of information
exchange to the user.
- The purpose of such an exchange is to provide a user with
information about their disease by searching for symptoms and then
finding the nearest doctor according to the disease.
- Users can also find the prescribed drugs on the app and find there
nearest pharmacy with all the required medicine with adequete
inventory.

## Tech Stack
- Frontend
- HTML5
- CSS3
- Flutter
- Python

- Backend
- Firebase
- Google Cloud Platform

- Database
- Firestore

### For the Live Demo, click [here](https://tusharnankani.github.io/Swadeshi/).

- The live demo replicates the behavior of the site without the need
for a real server. Instead, there is a mock server that is implemented
in client side JavaScript, using `localStorage` as the database.
- Please refer to [`frontend/mock-server.js`](frontend/mock-server.js)
if you are curious about how the mock server is implemented.
- To get a better understanding of how the site works, please open the
developer console (<kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>J</kbd>).
  The live demo logs a lot of details like network requests, responses
and messages to the browser console.
- The database can be inspected directly from the console by typing
`Database.tables`.
  When the page is unloaded, the database is saved to `localStorage`
with the key `database`. You can access this with
`localStorage.database`.
- Since this is just a prototype, there isn't any real OTP integration.
  If you run the server locally, then the OTP will be generated and
logged to the server output.
  If you view the live demo then the OTP will be displayed as an alert
and also logged to the browser console.

## Landing page flow
- Unified landing page loads.
- select **SIGN UP**
- If successful, go to login page.
- Wait for user to enter valid email, and password and press continue.
    - If successful, go to home page.
- On **Home Page**
    - select **Symptom Checker**
        - Enter Symptoms and find the curresponding disease or enter
the disease and find the curresponding symptoms
    - select **Find Doctor
    - (*) Wait for user to enter valid OTP, and press next.
    - Do **POST** `/authenticate` body: `{phoneNumber, otp}`
    - If post is successful, do **GET** `/user`
    - If user is found then go to respective dashboard.
    - Else user does not exist, goto signup.
- Inform user that OTP is wrong, goto (*)

## Local Setup
- Clone repository.
- Setup MongoDB, either locally, in a Docker container or on the cloud.
- Edit the MongoDB server Url in `/server/server.js`.
- Run `npm install` and `npm start` in the `/server` folder.
- Go to `https://localhost:5000` in your web browser.


# *App Demo*
### Medicino
### Welcome Page
https://github.com/Paksh2909/borderhacks/blob/webapp/WhatsApp%20Image%202020-09-27%20at%206.26.02%20PM%20(1).jpeg

### User profile photo
https://github.com/Paksh2909/borderhacks/blob/webapp/WhatsApp%20Image%202020-09-27%20at%205.39.25%20PM%20(1).jpeg


### Search for a Doctor by name or by specialization
https://github.com/Paksh2909/borderhacks/blob/webapp/WhatsApp%20Image%202020-09-27%20at%205.39.23%20PM.jpeg

### Type in minimum 3 symptoms so that we can diagnose and recommend you a doctor for the particular diagnosis
https://github.com/Paksh2909/borderhacks/blob/webapp/WhatsApp%20Image%202020-09-27%20at%205.39.24%20PM%20(1).jpeg


### Doctor Details and Location for reference
https://github.com/Paksh2909/borderhacks/blob/webapp/WhatsApp%20Image%202020-09-27%20at%206.46.03%20PM.jpeg

### List of all  registerd doctors available on database
https://github.com/Paksh2909/borderhacks/blob/webapp/WhatsApp%20Image%202020-09-27%20at%206.57.50%20PM.jpeg



# *Authors*
* Vedant Agarwal (vedantagarwal4, vedantagarwal4@gmail.com)
* Pakshal Shah (paksh2909, pakshals29@gmail.com)
* Hritvik Agarwal(hritupitu, hritvik.agarwal@gmail.com)
* Saumya Karia (saumyakaria, saumyakaria.51200@gmail.com)

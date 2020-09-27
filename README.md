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


# *Website Demo*
### Swadeshi
#### Clean and simple UI.

![0](https://user-images.githubusercontent.com/61280281/86548601-a71ed900-bf5a-11ea-8d31-2070803e1115.png)

### Implemented Hindi and English, Font+ and Font- features for accesibilities.

![1](https://user-images.githubusercontent.com/61280281/86548607-ab4af680-bf5a-11ea-8088-c1fb6920affc.png)

### Simple Sign Up: Mobile - OTP authentication (*no need for e-mail
or password*)


![2](https://user-images.githubusercontent.com/61280281/86548624-bbfb6c80-bf5a-11ea-92d6-b62202ece254.png)

## *Farmer's Portal*:
* Minimized the number of buttons and pages for accesibility for the farmer.
* Everything on one page.
* Simple add and remove icon.

![3](https://user-images.githubusercontent.com/61280281/86548628-bef65d00-bf5a-11ea-8705-221f173032dd.png)

### Simple add item page: Farmer can add quantity orginally with him
and *price per unit item*.

![4](https://user-images.githubusercontent.com/61280281/86548630-c0278a00-bf5a-11ea-9ef8-462fe8a65af7.png)

![5](https://user-images.githubusercontent.com/61280281/86548636-c289e400-bf5a-11ea-8fed-45689bf76d6a.png)

### Initially, the original added quantity is set to available
quantity. As quantity is sold, the available quantity is updated,
helping farmer keep track of what he added initially to the Farmer's
Portal

![6](https://user-images.githubusercontent.com/61280281/86548641-c4ec3e00-bf5a-11ea-9058-d6a4e25e9892.png)

## *Wholesaler's Portal*:

![7](https://user-images.githubusercontent.com/61280281/86548644-c7e72e80-bf5a-11ea-9e2b-9623a855af30.png)

### Simple search bar to search product by category or item.

![8](https://user-images.githubusercontent.com/61280281/86548648-cb7ab580-bf5a-11ea-88b4-4cd8a4cfdffb.png)


![9](https://user-images.githubusercontent.com/61280281/86548652-cf0e3c80-bf5a-11ea-99eb-80d6e0b4701d.png)

### Simply selecting the item, and ordering directly the required
quantity. It will be added to *Ordered Items* for Wholesalers, and
*Open Orders* for Farmers.

![10](https://user-images.githubusercontent.com/61280281/86548657-d46b8700-bf5a-11ea-84a3-0fc5b3dfd806.png)

### Simply, pressing the tick icon, if the order is delivered, the
wholesaler can update it for himself and the farmers.

![11](https://user-images.githubusercontent.com/61280281/86548665-da616800-bf5a-11ea-9b33-a22c2c2a1ba8.png)

### Both the Farmer's and the Wholesaler's numbers will be provided on
the portals and how the transactions will take place can be discussed
over call, according to one's convenience.

# *Contact Page* - Simple and User-friendly:
* **24 X 7 Helpline Service Center**
* **[Videos](https://github.com/tusharnankani/Swadeshi/tree/master/frontend/videos)
in Hindi explaining working of site to help both, the farmers and the
wholesalers.**
* **Added FAQs, in Hindi and English**

![12](https://user-images.githubusercontent.com/61280281/86548673-e1887600-bf5a-11ea-9fca-7104ec9d52f4.png)
![13](https://user-images.githubusercontent.com/61280281/86548675-e3523980-bf5a-11ea-87bf-feaf419a03c7.png)
![14](https://user-images.githubusercontent.com/61280281/86548678-e3ead000-bf5a-11ea-8ee2-63145bfcaec7.png)


# *Authors*
* Harsh Kapadia (HarshKapadia2, harshgkapadia@gmail.com)
- [LinkedIn](http://www.linkedin.com/in/harsh-kapadia-426999175)
* Kartik Soneji (KartikSoneji, kartiksoneji@rocketmail.com)
- [LinkedIn](https://www.linkedin.com/in/kartiksoneji)
* Tushar Nankani (tusharnankani, tusharnankani3@gmail.com)
- [LinkedIn](https://www.linkedin.com/in/tusharnankani)

On Sun, Sep 27, 2020 at 5:56 PM Vedant Agarwal <vedantagarwal4@gmail.com> wrote:
>
>

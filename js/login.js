import { initializeApp } from "firebase/app";
import { getFirestore, collection, getDocs } from "firebase/firestore";
import { firebaseConfig } from "firebase.js";

initializeApp(firebaseConfig);
const authCheck = getFirestore();
const collectionRef = collection(authCheck, "authCheck");
let adminUsers = [];
getDocs(collectionRef)
  .then((snapshot) => {
    snapshot.docs.forEach((doc) => {
      adminUsers.push({ ...doc.data(), id: doc.id });
    });
    console.log(adminUsers);
  })
  .catch((err) => console.error(err));

const usernameEl = document.querySelector("#username");
const passwordEl = document.querySelector("#password");
const submitEl = document.querySelector("button");
const form = document.querySelector("form");

submitEl.addEventListener("click", function (e) {
  e.preventDefault();
  console.log("Hello from inside");
  if (usernameEl.value === "admin" && passwordEl.value === "admin") {
    console.log(
      "username = ",
      usernameEl.textContent,
      "password = ",
      passwordEl.textContent
    );
    window.location.href = "admin.html";
  } else {
    alert("Wrong username or password");
  }
});

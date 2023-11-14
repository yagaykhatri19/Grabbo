const contentSection = document.querySelector(".content-section");

const navbarBrandSec = document.querySelector(".navbar-brand");
const homeButton = document.querySelector(".home-button");
const footerTitleButton = document.querySelector(".title-name");
const aboutUsButton = document.querySelector(".aboutUs-button");

const snacks = document.querySelector(".snacks");
const instantFood = document.querySelector(".instantFood");
const dairy = document.querySelector(".dairy");
const categoryButtons = document.querySelectorAll(".category-button");

const getRandomNumber = function (min, max) {
  // Generate a random decimal number between 0 and 1
  const randomDecimal = Math.random();

  // Scale the random number to fit within the range [min, max]
  const randomInRange = randomDecimal * (max - min) + min;

  // Use Math.floor to truncate the decimal and return an integer
  return Math.floor(randomInRange);
};

const generateQuote = function () {
  const quotes = [
    "I'm not saying Maggi is the answer to all of life's problems, but it's definitely the answer to most of them.",
    "They say you can't buy happiness, but you can buy Maggi, and that's pretty much the same thing.",
    "There are two types of people in this world: those who love Jim Jams and those who haven't tried them yet.",
    "My relationship status: In a committed and steamy relationship with ramen.",
  ];
  const randomNum = getRandomNumber(0, quotes.length);
  return quotes[randomNum];
  //   return quotes[3];
};
const generateOutOfStock = function () {
  const quotes = [
    `The product's taking a little time off the shelf. It'll
    be back!`,
    `Sorry, but it's not in stock today. It's exploring
    new horizons!`,
    `Our inventory is having a product party, and this one's fashionably late. It will join the celebration shortly!`,
    `This item is in a cozy hide-and-seek game with our inventory. Keep looking!`,
    `Whoops, the product is currently on vacation from our shelves. It will be back soon!`,
  ];
  const randomNum = getRandomNumber(0, quotes.length);
  return quotes[randomNum];
  //   return quotes[3];
};

const generateAboutUs = function (e) {
  e.preventDefault();
  const html = `<div class="about-us">
  <div class="section__title">
      <h2 class="section__description">Why Built this?</h2>
      <h5 class="section__header">
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quidem dicta cumque a? Numquam saepe corrupti nostrum nesciunt porro necessitatibus iste! A, vitae expedita deleniti accusamus exercitationem facilis. Neque, assumenda debitis! Lorem ipsum dolor
          sit amet consectetur adipisicing elit. Hic veritatis perspiciatis deserunt qui, dolor recusandae provident pariatur obcaecati architecto delectus, fugiat, dicta id sequi inventore! Praesentium ipsa doloremque provident cumque.
      </h5>
  </div>

  <div class="section__title">
      <h2 class="section__description team-title">Meet the Team</h2>
  </div>
  <div class="about-the-team">
      <img src="images/Priyansh.jpg" data-src="img/digital.jpg" alt="Priyansh" class="member__img1 lazy-img" />
      <div class="member-description1">
          <h5 class="member-name">Priyansh Singhal</h5>
          <p class="member-paragraph">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde alias sint quos? Accusantium a fugiat porro reiciendis saepe quibusdam debitis ducimus.
          </p>
      </div>

      <div class="member-description2">
          <h5 class="member-name">Yagay Khatri</h5>
          <p class="member-paragraph">
              Nesciunt quos autem dolorum voluptates cum dolores dicta fuga inventore ab? Nulla incidunt eius numquam sequi iste pariatur quibusdam!
          </p>
      </div>
      <img src="images/Yagay.jpg" data-src="img/grow.jpg" alt="Yagay" class="member__img2 lazy-img" />
  </div> -->
</div>`;

  contentSection.innerHTML = html;
};

aboutUsButton.addEventListener("click", generateAboutUs);

const generateHomePage = function (e) {
  e.preventDefault();

  const html = `<div class="search-container">
  <div class = "heading-container">
    <div class="heading">
        <h3 class="quote">" ${generateQuote()} "
        </h3>
    </div>
    <input type="text" class="search-bar"
        placeholder="Search for your favourite items">
    <button class="search-button">Search</button>
    </div>
</div>`;
  contentSection.innerHTML = html;
};
homeButton.addEventListener("click", generateHomePage);
navbarBrandSec.addEventListener("click", generateHomePage);
footerTitleButton.addEventListener("click", generateHomePage);

const generateNoProductFound = function () {
  const html = ` <div class="no-product-found">
    <div class="not-found-searchBar">
        <input type="text" class="search-bar"
            placeholder="Search for your favourite items">
        <button class="search-button">Search</button>
    </div>
    <div class="not-found-heading">
        <h5>${generateOutOfStock()}</h5>
    </div>
</div>
`;
  contentSection.innerHTML = html;
};

snacks.addEventListener("click", generateNoProductFound);

// const generateProducts = function () {
//   const html = `                <div class="show-products">

//   <div class="not-found-searchBar">
//       <input type="text" class="search-bar"
//           placeholder="Search for your favourite items">
//       <button class="search-button">Search</button>
//   </div>

//   <div class="products">

//       <div class="card">
//           <div class="card-img"><img></div>
//           <div class="card-info">
//               <p class="text-title">Maggi</p>
//           </div>
//           <div class="card-footer">
//               <span class="text-title">₹14</span>
//           </div>
//       </div>
//   </div>
// </div>`;
//   contentSection.innerHTML = html;
// };

const generateProductsOnPage = function (category) {
  const cardImg = document.querySelector(".card-image-container img");
  // Fetch product data from the server
  fetch(`http://localhost:8800/student/products/${category}`)
    .then((response) => response.json())
    .then((data) => {
      // console.log(data);
      // Generate product cards on the page
      const productsHtml = data
        .map(
          (product) => `
          <div class="card">
            <div class="card-image-container">
              <img src="${product.url}" alt="${product.name}" class="card-image">
            </div>
            <p class="card-title">${product.name}</p>
            <p class="card-des">
              Quantity:&nbsp${product.quantity}
            </p>
            <div class="card-btn"> ₹${product.price}</div>
          </div>
  `
        )
        .join("");
      // Insert the generated HTML inside the existing "productsSection" div
      contentSection.innerHTML = `
      <div class="show-products">
      <div class="not-found-searchBar">
      <input type="text" class="search-bar" placeholder="Search for your favourite items">
        <button class="search-button">Search</button>
        </div>
          <div class="products">${productsHtml}</div>
        </div>
        `;
    })
    .catch((error) => {
      console.error("Error fetching data:", error);
    });
};

categoryButtons.forEach((button) => {
  button.addEventListener("click", () => {
    const category = button.dataset.category;
    generateProductsOnPage(category);
  });
});

// instantFood.addEventListener("click", generateProductsOnPage);

// Dropdown functionality
document.addEventListener("DOMContentLoaded", function () {
  const toggleDropdownButton = document.querySelector(".dropdown-toggle");
  const dropdownMenu = document.querySelector(".dropdown-menu");
  let isDropdownVisible = false;

  // Function to toggle the dropdown
  function toggleDropdown() {
    if (isDropdownVisible) {
      dropdownMenu.style.display = "none";
    } else {
      dropdownMenu.style.display = "block";
    }
    isDropdownVisible = !isDropdownVisible;
  }

  // Toggle the dropdown when clicking the "Categories" button
  toggleDropdownButton.addEventListener("click", function (e) {
    e.stopPropagation(); // Prevent the parent menu item from following the link
    toggleDropdown();
  });

  // Hide the dropdown when clicking any dropdown item or the "Categories" button again
  dropdownMenu.addEventListener("click", function (e) {
    if (e.target.classList.contains("dropdown-item")) {
      toggleDropdown();
    }
  });

  document.addEventListener("click", function (e) {
    if (e.target !== toggleDropdownButton && isDropdownVisible) {
      toggleDropdown();
    }
  });
});

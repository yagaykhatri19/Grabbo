const productNameEL = document.querySelector("#product_name");
const productIdEL = document.querySelector("#product_id");
const productCategoryEL = document.querySelector("#category");
const productQuantityEL = document.querySelector("#quantity");
const productPriceEL = document.querySelector("#price");

function fetchProductDetails() {
  fetch(`http://localhost:8800/updateProductQuantity`)
    .then((response) => response.json())
    .then((data) => {
      const name = data.product_name;
      const id = data.product_id;
      const category = data.category;
      const price = data.price;
      const quantity = data.quantity;

      productNameEL.value = name;
      productIdEL.value = id;
      productCategoryEL.value = category;
      productPriceEL.value = price;
      productQuantityEL.value = quantity;
    })
    .catch((error) => console.error(error));
}

fetchProductDetails();

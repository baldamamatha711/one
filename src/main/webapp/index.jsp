<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ShopEase - E-Commerce</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }

    body {
      background: #f5f6fa;
      color: #222;
    }

    /* Header */
    header {
      background: #2874f0;
      color: white;
      padding: 15px 6%;
      display: flex;
      align-items: center;
      gap: 25px;
      position: sticky;
      top: 0;
      z-index: 100;
    }

    .logo {
      font-size: 25px;
      font-weight: bold;
      white-space: nowrap;
    }

    .search-box {
      flex: 1;
      display: flex;
    }

    .search-box input {
      width: 100%;
      padding: 12px;
      border: none;
      outline: none;
      border-radius: 5px 0 0 5px;
      font-size: 15px;
    }

    .search-box button {
      padding: 12px 18px;
      border: none;
      background: #ff9f00;
      color: white;
      cursor: pointer;
      border-radius: 0 5px 5px 0;
    }

    .cart-btn {
      background: white;
      color: #2874f0;
      border: none;
      padding: 10px 18px;
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
    }

    /* Hero */
    .hero {
      padding: 50px 6%;
      background: linear-gradient(135deg, #2874f0, #6c5ce7);
      color: white;
      text-align: center;
    }

    .hero h1 {
      font-size: 42px;
      margin-bottom: 10px;
    }

    .hero p {
      font-size: 18px;
      margin-bottom: 20px;
    }

    .shop-btn {
      padding: 12px 25px;
      background: #ff9f00;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }

    /* Filters */
    .filters {
      padding: 25px 6%;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 15px;
    }

    .filters select {
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 5px;
    }

    /* Products */
    .products {
      padding: 0 6% 40px;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 25px;
    }

    .product {
      background: white;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 3px 12px rgba(0,0,0,0.08);
      transition: 0.3s;
    }

    .product:hover {
      transform: translateY(-5px);
    }

    .product img {
      width: 100%;
      height: 220px;
      object-fit: cover;
    }

    .product-info {
      padding: 15px;
    }

    .product h3 {
      margin-bottom: 8px;
    }

    .price {
      color: #2874f0;
      font-size: 20px;
      font-weight: bold;
      margin: 8px 0;
    }

    .rating {
      color: #f39c12;
      margin-bottom: 10px;
    }

    .add-cart {
      width: 100%;
      padding: 10px;
      background: #2874f0;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .add-cart:hover {
      background: #1258c7;
    }

    /* Cart */
    .cart-panel {
      position: fixed;
      right: -400px;
      top: 0;
      width: 380px;
      max-width: 100%;
      height: 100vh;
      background: white;
      z-index: 200;
      box-shadow: -4px 0 15px rgba(0,0,0,0.2);
      padding: 25px;
      transition: 0.3s;
      overflow-y: auto;
    }

    .cart-panel.active {
      right: 0;
    }

    .cart-header {
      display: flex;
      justify-content: space-between;
      margin-bottom: 20px;
    }

    .close-cart {
      border: none;
      background: #eee;
      padding: 7px 12px;
      cursor: pointer;
      border-radius: 5px;
    }

    .cart-item {
      display: flex;
      gap: 10px;
      border-bottom: 1px solid #ddd;
      padding: 12px 0;
    }

    .cart-item img {
      width: 70px;
      height: 70px;
      object-fit: cover;
      border-radius: 5px;
    }

    .cart-details {
      flex: 1;
    }

    .quantity {
      display: flex;
      gap: 8px;
      align-items: center;
      margin-top: 7px;
    }

    .quantity button {
      border: none;
      background: #ddd;
      padding: 4px 9px;
      cursor: pointer;
      border-radius: 3px;
    }

    .remove {
      color: red;
      cursor: pointer;
      font-size: 13px;
      margin-top: 5px;
    }

    .cart-total {
      margin-top: 25px;
      font-size: 20px;
      font-weight: bold;
    }

    .checkout {
      width: 100%;
      margin-top: 15px;
      padding: 13px;
      border: none;
      background: #ff9f00;
      color: white;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
    }

    /* Footer */
    footer {
      background: #172337;
      color: white;
      text-align: center;
      padding: 25px;
    }

    @media (max-width: 700px) {
      header {
        flex-wrap: wrap;
      }

      .search-box {
        order: 3;
        flex-basis: 100%;
      }

      .hero h1 {
        font-size: 30px;
      }

      .filters {
        flex-direction: column;
        align-items: stretch;
      }
    }
  </style>
</head>

<body>

  <!-- Header -->
  <header>
    <div class="logo">ShopEase</div>

    <div class="search-box">
      <input
        type="text"
        id="searchInput"
        placeholder="Search for products..."
        oninput="displayProducts()"
      >
      <button>🔍</button>
    </div>

    <button class="cart-btn" onclick="openCart()">
      🛒 Cart (<span id="cartCount">0</span>)
    </button>
  </header>

  <!-- Hero -->
  <section class="hero">
    <h1>Welcome to ShopEase</h1>
    <p>Discover amazing products at great prices.</p>
    <button class="shop-btn" onclick="scrollToProducts()">
      Shop Now
    </button>
  </section>

  <!-- Filters -->
  <section class="filters">
    <h2>Our Products</h2>

    <select id="categoryFilter" onchange="displayProducts()">
      <option value="all">All Categories</option>
      <option value="electronics">Electronics</option>
      <option value="fashion">Fashion</option>
      <option value="home">Home</option>
    </select>
  </section>

  <!-- Products -->
  <main class="products" id="productContainer"></main>

  <!-- Cart -->
  <aside class="cart-panel" id="cartPanel">

    <div class="cart-header">
      <h2>Shopping Cart</h2>
      <button class="close-cart" onclick="closeCart()">✕</button>
    </div>

    <div id="cartItems"></div>

    <div class="cart-total">
      Total: ₹<span id="cartTotal">0</span>
    </div>

    <button class="checkout" onclick="checkout()">
      Proceed to Checkout
    </button>

  </aside>

  <!-- Footer -->
  <footer>
    <p>© 2026 ShopEase. All Rights Reserved.</p>
  </footer>

  <script>

    const products = [
      {
        id: 1,
        name: "Wireless Headphones",
        category: "electronics",
        price: 1999,
        rating: 4.5,
        image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e"
      },
      {
        id: 2,
        name: "Smart Watch",
        category: "electronics",
        price: 2499,
        rating: 4.3,
        image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30"
      },
      {
        id: 3,
        name: "Running Shoes",
        category: "fashion",
        price: 1799,
        rating: 4.4,
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff"
      },
      {
        id: 4,
        name: "Casual T-Shirt",
        category: "fashion",
        price: 699,
        rating: 4.2,
        image: "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab"
      },
      {
        id: 5,
        name: "Modern Chair",
        category: "home",
        price: 3499,
        rating: 4.6,
        image: "https://images.unsplash.com/photo-1503602642458-232111445657"
      },
      {
        id: 6,
        name: "Coffee Mug",
        category: "home",
        price: 399,
        rating: 4.1,
        image: "https://images.unsplash.com/photo-1514228742587-6b1558fcf93a"
      }
    ];

    let cart = [];

    function displayProducts() {

      const container = document.getElementById("productContainer");

      const search =
        document.getElementById("searchInput").value.toLowerCase();

      const category =
        document.getElementById("categoryFilter").value;

      const filtered = products.filter(product => {

        const matchesSearch =
          product.name.toLowerCase().includes(search);

        const matchesCategory =
          category === "all" ||
          product.category === category;

        return matchesSearch && matchesCategory;
      });

      container.innerHTML = "";

      if (filtered.length === 0) {
        container.innerHTML =
          "<p>No products found.</p>";
        return;
      }

      filtered.forEach(product => {

        container.innerHTML += `
          <div class="product">

            <img src="${product.image}" alt="${product.name}">

            <div class="product-info">

              <h3>${product.name}</h3>

              <div class="rating">
                ⭐ ${product.rating}
              </div>

              <div class="price">
                ₹${product.price.toLocaleString("en-IN")}
              </div>

              <button
                class="add-cart"
                onclick="addToCart(${product.id})">
                Add to Cart
              </button>

            </div>

          </div>
        `;
      });
    }

    function addToCart(id) {

      const product = products.find(p => p.id === id);

      const existing = cart.find(item => item.id === id);

      if (existing) {
        existing.quantity++;
      } else {
        cart.push({
          ...product,
          quantity: 1
        });
      }

      updateCart();

      alert(product.name + " added to cart!");
    }

    function updateCart() {

      const cartItems =
        document.getElementById("cartItems");

      const cartCount =
        document.getElementById("cartCount");

      const cartTotal =
        document.getElementById("cartTotal");

      cartItems.innerHTML = "";

      let total = 0;
      let count = 0;

      cart.forEach(item => {

        total += item.price * item.quantity;
        count += item.quantity;

        cartItems.innerHTML += `
          <div class="cart-item">

            <img src="${item.image}" alt="${item.name}">

            <div class="cart-details">

              <strong>${item.name}</strong>

              <p>₹${item.price.toLocaleString("en-IN")}</p>

              <div class="quantity">

                <button onclick="changeQuantity(${item.id}, -1)">
                  -
                </button>

                <span>${item.quantity}</span>

                <button onclick="changeQuantity(${item.id}, 1)">
                  +
                </button>

              </div>

              <div
                class="remove"
                onclick="removeFromCart(${item.id})">
                Remove
              </div>

            </div>

          </div>
        `;
      });

      cartCount.textContent = count;
      cartTotal.textContent =
        total.toLocaleString("en-IN");
    }

    function changeQuantity(id, amount) {

      const item = cart.find(item => item.id === id);

      if (!item) return;

      item.quantity += amount;

      if (item.quantity <= 0) {
        cart = cart.filter(item => item.id !== id);
      }

      updateCart();
    }

    function removeFromCart(id) {

      cart = cart.filter(item => item.id !== id);

      updateCart();
    }

    function openCart() {

      document
        .getElementById("cartPanel")
        .classList.add("active");
    }

    function closeCart() {

      document
        .getElementById("cartPanel")
        .classList.remove("active");
    }

    function checkout() {

      if (cart.length === 0) {
        alert("Your cart is empty!");
        return;
      }

      alert(
        "Order placed successfully! Thank you for shopping with ShopEase."
      );

      cart = [];
      updateCart();
      closeCart();
    }

    function scrollToProducts() {

      document
        .getElementById("productContainer")
        .scrollIntoView({
          behavior: "smooth"
        });
    }

    displayProducts();

  </script>

</body>
</html>

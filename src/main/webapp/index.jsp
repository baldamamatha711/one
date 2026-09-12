<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopEasy - E-Commerce</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f5f5f5;
            color: #333;
        }

        /* Navbar */
        nav {
            background: #131921;
            color: white;
            padding: 15px 5%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
        }

        .logo {
            font-size: 25px;
            font-weight: bold;
            color: #ff9900;
        }

        .search {
            flex: 1;
            display: flex;
            max-width: 600px;
        }

        .search input {
            width: 100%;
            padding: 12px;
            border: none;
            outline: none;
        }

        .search button {
            padding: 12px 20px;
            border: none;
            background: #ff9900;
            cursor: pointer;
        }

        .cart {
            font-size: 18px;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            background: linear-gradient(
                rgba(0,0,0,.5),
                rgba(0,0,0,.5)
            ),
            url("https://images.unsplash.com/photo-1441986300917-64674bd600d8")
            center/cover;

            height: 350px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
        }

        .hero h1 {
            font-size: 45px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 20px;
        }

        .shop-btn {
            padding: 12px 25px;
            background: #ff9900;
            color: black;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        /* Categories */
        .categories {
            padding: 30px 5%;
            text-align: center;
        }

        .categories h2 {
            margin-bottom: 20px;
        }

        .category-buttons button {
            padding: 10px 20px;
            margin: 5px;
            border: 1px solid #ddd;
            background: white;
            cursor: pointer;
        }

        .category-buttons button:hover {
            background: #ff9900;
        }

        /* Products */
        .products {
            padding: 20px 5%;
        }

        .products h2 {
            margin-bottom: 25px;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 25px;
        }

        .product {
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 8px rgba(0,0,0,.1);
            transition: .3s;
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

        .product-info h3 {
            margin-bottom: 8px;
        }

        .price {
            color: #e47911;
            font-size: 20px;
            font-weight: bold;
            margin: 10px 0;
        }

        .add-cart {
            width: 100%;
            padding: 10px;
            border: none;
            background: #ffd814;
            cursor: pointer;
            font-weight: bold;
        }

        .add-cart:hover {
            background: #ff9900;
        }

        /* Footer */
        footer {
            margin-top: 50px;
            background: #131921;
            color: white;
            text-align: center;
            padding: 30px;
        }

        @media(max-width: 700px) {
            nav {
                flex-direction: column;
            }

            .search {
                width: 100%;
            }

            .hero h1 {
                font-size: 30px;
            }
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <nav>
        <div class="logo">ShopEasy</div>

        <div class="search">
            <input
                type="text"
                id="searchInput"
                placeholder="Search products..."
                onkeyup="searchProducts()"
            >
            <button>Search</button>
        </div>

        <div class="cart">
            🛒 Cart: <span id="cartCount">0</span>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div>
            <h1>Welcome to ShopEasy</h1>
            <p>Find the best products at the best prices</p>
            <button class="shop-btn"
                    onclick="scrollToProducts()">
                Shop Now
            </button>
        </div>
    </section>

    <!-- Categories -->
    <section class="categories">
        <h2>Categories</h2>

        <div class="category-buttons">
            <button onclick="filterProducts('all')">All</button>
            <button onclick="filterProducts('electronics')">
                Electronics
            </button>
            <button onclick="filterProducts('fashion')">
                Fashion
            </button>
            <button onclick="filterProducts('shoes')">
                Shoes
            </button>
        </div>
    </section>

    <!-- Products -->
    <section class="products" id="products">
        <h2>Featured Products</h2>

        <div class="product-grid">

            <div class="product" data-category="electronics">
                <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e">
                <div class="product-info">
                    <h3>Wireless Headphones</h3>
                    <p>Premium wireless headphones</p>
                    <div class="price">₹2,499</div>
                    <button class="add-cart"
                            onclick="addToCart()">
                        Add to Cart
                    </button>
                </div>
            </div>

            <div class="product" data-category="electronics">
                <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30">
                <div class="product-info">
                    <h3>Smart Watch</h3>
                    <p>Fitness and health tracking</p>
                    <div class="price">₹3,999</div>
                    <button class="add-cart"
                            onclick="addToCart()">
                        Add to Cart
                    </button>
                </div>
            </div>

            <div class="product" data-category="fashion">
                <img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b">
                <div class="product-info">
                    <h3>Fashion Jacket</h3>
                    <p>Modern casual jacket</p>
                    <div class="price">₹1,999</div>
                    <button class="add-cart"
                            onclick="addToCart()">
                        Add to Cart
                    </button>
                </div>
            </div>

            <div class="product" data-category="shoes">
                <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff">
                <div class="product-info">
                    <h3>Running Shoes</h3>
                    <p>Comfortable sports shoes</p>
                    <div class="price">₹2,799</div>
                    <button class="add-cart"
                            onclick="addToCart()">
                        Add to Cart
                    </button>
                </div>
            </div>

        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>© 2026 ShopEasy. All rights reserved.</p>
    </footer>

    <script>

        let cartCount = 0;

        function addToCart() {
            cartCount++;

            document.getElementById("cartCount")
                    .innerText = cartCount;

            alert("Product added to cart!");
        }

        function scrollToProducts() {
            document.getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });
        }

        function filterProducts(category) {

            const products =
                document.querySelectorAll(".product");

            products.forEach(product => {

                if (
                    category === "all" ||
                    product.dataset.category === category
                ) {
                    product.style.display = "block";
                } else {
                    product.style.display = "none";
                }

            });
        }

        function searchProducts() {

            const search =
                document.getElementById("searchInput")
                .value
                .toLowerCase();

            const products =
                document.querySelectorAll(".product");

            products.forEach(product => {

                const name =
                    product.querySelector("h3")
                    .innerText
                    .toLowerCase();

                if (name.includes(search)) {
                    product.style.display = "block";
                } else {
                    product.style.display = "none";
                }

            });
        }

    </script>

</body>
</html>

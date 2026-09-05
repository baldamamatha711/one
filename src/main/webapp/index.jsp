<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>EasyBuy - Online Shopping</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>

    <!-- ================= HEADER ================= -->

    <header class="header">

        <div class="logo">
            Easy<span>Buy</span>
        </div>

        <div class="search">
            <input
                type="text"
                id="searchInput"
                placeholder="Search products..."
            >

            <button onclick="searchProducts()">🔍</button>
        </div>

        <div class="header-buttons">

            <button onclick="showWishlist()">
                ❤️ <span id="wishlistCount">0</span>
            </button>

            <button onclick="openCart()">
                🛒 <span id="cartCount">0</span>
            </button>

        </div>

    </header>


    <!-- ================= NAVIGATION ================= -->

    <nav class="navbar">

        <a href="#home">Home</a>
        <a href="#products">Products</a>
        <a href="#categories">Categories</a>
        <a href="#offers">Offers</a>
        <a href="#contact">Contact</a>

    </nav>


    <!-- ================= HERO ================= -->

    <section class="hero" id="home">

        <div class="hero-content">

            <p class="small-title">
                BIG SALE IS LIVE
            </p>

            <h1>
                Shop Smart.<br>
                Live Better.
            </h1>

            <p>
                Discover quality products at amazing prices.
            </p>

            <button
                class="primary-button"
                onclick="goToProducts()"
            >
                Shop Now
            </button>

        </div>

    </section>


    <!-- ================= CATEGORIES ================= -->

    <section class="categories" id="categories">

        <h2>Shop by Category</h2>

        <div class="category-buttons">

            <button onclick="filterProducts('all')">
                🛍️ All
            </button>

            <button onclick="filterProducts('electronics')">
                💻 Electronics
            </button>

            <button onclick="filterProducts('fashion')">
                👕 Fashion
            </button>

            <button onclick="filterProducts('home')">
                🏠 Home
            </button>

        </div>

    </section>


    <!-- ================= PRODUCTS ================= -->

    <section class="product-section" id="products">

        <div class="section-heading">

            <div>
                <h2>Popular Products</h2>
                <p>Choose your favorite products</p>
            </div>

            <select id="sortProducts" onchange="sortProducts()">

                <option value="default">
                    Sort By
                </option>

                <option value="low">
                    Price: Low to High
                </option>

                <option value="high">
                    Price: High to Low
                </option>

                <option value="rating">
                    Highest Rating
                </option>

            </select>

        </div>

        <div
            class="product-grid"
            id="productContainer"
        ></div>

    </section>


    <!-- ================= OFFER ================= -->

    <section class="offer" id="offers">

        <div>

            <h2>Special Offer 🎉</h2>

            <p>
                Get up to <strong>50% OFF</strong>
                on selected products.
            </p>

            <button
                class="primary-button"
                onclick="goToProducts()"
            >
                Explore Deals
            </button>

        </div>

    </section>


    <!-- ================= CART SIDEBAR ================= -->

    <div
        class="overlay"
        id="overlay"
        onclick="closeCart()"
    ></div>

    <aside
        class="cart"
        id="cart"
    >

        <div class="cart-header">

            <h2>Shopping Cart</h2>

            <button onclick="closeCart()">
                ✕
            </button>

        </div>

        <div
            id="cartItems"
            class="cart-items"
        ></div>

        <div class="cart-footer">

            <div class="total">
                <span>Total</span>

                <strong>
                    ₹<span id="cartTotal">0</span>
                </strong>
            </div>

            <button
                class="checkout-button"
                onclick="checkout()"
            >
                Proceed to Checkout
            </button>

        </div>

    </aside>


    <!-- ================= FOOTER ================= -->

    <footer id="contact">

        <div class="footer-content">

            <div>
                <h3>EasyBuy</h3>

                <p>
                    Your simple and trusted online
                    shopping destination.
                </p>
            </div>

            <div>
                <h3>Quick Links</h3>

                <p>Home</p>
                <p>Products</p>
                <p>Offers</p>
            </div>

            <div>
                <h3>Contact</h3>

                <p>📧 support@easybuy.com</p>
                <p>📞 +91 98765 43210</p>
            </div>

        </div>

        <p class="copyright">
            © 2026 EasyBuy. All Rights Reserved.
        </p>

    </footer>


    <!-- ================= JAVASCRIPT ================= -->

    <script src="script.js"></script>

</body>

</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Shop - E-commerce UI</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-color: #6366f1;
            --secondary-color: #8b5cf6;
            --dark-color: #1f2937;
            --light-color: #f9fafb;
            --gray-color: #6b7280;
            --border-color: #e5e7eb;
            --success-color: #10b981;
            --danger-color: #ef4444;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, sans-serif;
            background-color: var(--light-color);
            color: var(--dark-color);
            line-height: 1.6;
        }

        /* Header Styles */
        header {
            background: white;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .header-top {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 0.5rem 0;
            text-align: center;
            font-size: 0.875rem;
        }

        .header-main {
            padding: 1rem 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1rem;
        }

        .header-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 2rem;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            cursor: pointer;
        }

        .search-bar {
            flex: 1;
            max-width: 500px;
            position: relative;
        }

        .search-bar input {
            width: 100%;
            padding: 0.75rem 1rem 0.75rem 3rem;
            border: 2px solid var(--border-color);
            border-radius: 50px;
            font-size: 0.95rem;
            transition: all 0.3s;
            background: var(--light-color);
        }

        .search-bar input:focus {
            outline: none;
            border-color: var(--primary-color);
            background: white;
        }

        .search-icon {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray-color);
        }

        .header-actions {
            display: flex;
            gap: 1rem;
            align-items: center;
        }

        .icon-btn {
            background: none;
            border: none;
            cursor: pointer;
            padding: 0.5rem;
            position: relative;
            color: var(--dark-color);
            transition: color 0.3s;
        }

        .icon-btn:hover {
            color: var(--primary-color);
        }

        .badge {
            position: absolute;
            top: 0;
            right: 0;
            background: var(--danger-color);
            color: white;
            font-size: 0.75rem;
            padding: 0.125rem 0.375rem;
            border-radius: 10px;
            font-weight: 600;
        }

        /* Navigation */
        .nav-bar {
            border-top: 1px solid var(--border-color);
            padding: 0.75rem 0;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
            list-style: none;
            overflow-x: auto;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--gray-color);
            font-weight: 500;
            font-size: 0.95rem;
            transition: color 0.3s;
            white-space: nowrap;
        }

        .nav-links a:hover,
        .nav-links a.active {
            color: var(--primary-color);
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 4rem 0;
            margin-bottom: 3rem;
        }

        .hero-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
        }

        .hero-text h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
            line-height: 1.2;
        }

        .hero-text p {
            font-size: 1.125rem;
            margin-bottom: 2rem;
            opacity: 0.95;
        }

        .btn {
            padding: 0.875rem 2rem;
            border: none;
            border-radius: 50px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            text-decoration: none;
            display: inline-block;
        }

        .btn-primary {
            background: white;
            color: var(--primary-color);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .hero-image {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hero-image img {
            max-width: 100%;
            height: auto;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
        }

        /* Categories */
        .categories {
            margin-bottom: 3rem;
        }

        .section-title {
            font-size: 2rem;
            margin-bottom: 0.5rem;
            color: var(--dark-color);
        }

        .section-subtitle {
            color: var(--gray-color);
            margin-bottom: 2rem;
        }

        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 1.5rem;
        }

        .category-card {
            background: white;
            padding: 2rem 1rem;
            border-radius: 16px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
            border: 2px solid transparent;
        }

        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border-color: var(--primary-color);
        }

        .category-icon {
            font-size: 2.5rem;
            margin-bottom: 0.75rem;
        }

        .category-name {
            font-weight: 600;
            color: var(--dark-color);
        }

        /* Products Grid */
        .products-section {
            margin-bottom: 3rem;
        }

        .products-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .filter-buttons {
            display: flex;
            gap: 0.5rem;
            flex-wrap: wrap;
        }

        .filter-btn {
            padding: 0.5rem 1rem;
            border: 2px solid var(--border-color);
            background: white;
            border-radius: 50px;
            cursor: pointer;
            font-weight: 500;
            transition: all 0.3s;
            font-size: 0.875rem;
        }

        .filter-btn:hover,
        .filter-btn.active {
            background: var(--primary-color);
            color: white;
            border-color: var(--primary-color);
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 1.5rem;
        }

        .product-card {
            background: white;
            border-radius: 16px;
            overflow: hidden;
            transition: all 0.3s;
            position: relative;
            cursor: pointer;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .product-badge {
            position: absolute;
            top: 1rem;
            left: 1rem;
            background: var(--danger-color);
            color: white;
            padding: 0.25rem 0.75rem;
            border-radius: 50px;
            font-size: 0.75rem;
            font-weight: 600;
            z-index: 1;
        }

        .product-badge.new {
            background: var(--success-color);
        }

        .product-image {
            width: 100%;
            height: 250px;
            background: linear-gradient(135deg, #f3f4f6, #e5e7eb);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 4rem;
            position: relative;
            overflow: hidden;
        }

        .product-actions {
            position: absolute;
            top: 1rem;
            right: 1rem;
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
            opacity: 0;
            transition: opacity 0.3s;
        }

        .product-card:hover .product-actions {
            opacity: 1;
        }

        .action-btn {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: white;
            border: none;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            transition: all 0.3s;
        }

        .action-btn:hover {
            background: var(--primary-color);
            color: white;
            transform: scale(1.1);
        }

        .product-info {
            padding: 1.25rem;
        }

        .product-category {
            font-size: 0.75rem;
            color: var(--primary-color);
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 0.5rem;
        }

        .product-name {
            font-size: 1.125rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: var(--dark-color);
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 1rem;
        }

        .stars {
            color: #fbbf24;
            font-size: 0.875rem;
        }

        .rating-count {
            font-size: 0.75rem;
            color: var(--gray-color);
        }

        .product-price {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            margin-bottom: 1rem;
        }

        .price-current {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--dark-color);
        }

        .price-old {
            font-size: 1rem;
            color: var(--gray-color);
            text-decoration: line-through;
        }

        .add-to-cart {
            width: 100%;
            padding: 0.75rem;
            background: var(--primary-color);
            color: white;
            border: none;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        .add-to-cart:hover {
            background: var(--secondary-color);
            transform: scale(1.02);
        }

        /* Features Section */
        .features {
            background: white;
            padding: 3rem 0;
            margin-bottom: 3rem;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .feature-card {
            text-align: center;
            padding: 1.5rem;
        }

        .feature-icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .feature-title {
            font-size: 1.125rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .feature-description {
            color: var(--gray-color);
            font-size: 0.95rem;
        }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 3rem 0;
            text-align: center;
            margin-bottom: 3rem;
            border-radius: 20px;
        }

        .newsletter h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }

        .newsletter p {
            margin-bottom: 2rem;
            opacity: 0.95;
        }

        .newsletter-form {
            display: flex;
            max-width: 500px;
            margin: 0 auto;
            gap: 0.5rem;
        }

        .newsletter-form input {
            flex: 1;
            padding: 1rem 1.5rem;
            border: none;
            border-radius: 50px;
            font-size: 1rem;
        }

        .newsletter-form input:focus {
            outline: 2px solid white;
            outline-offset: 2px;
        }

        .newsletter-form button {
            padding: 1rem 2rem;
            background: var(--dark-color);
            color: white;
            border: none;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
        }

        .newsletter-form button:hover {
            background: #000;
            transform: scale(1.05);
        }

        /* Footer */
        footer {
            background: var(--dark-color);
            color: white;
            padding: 3rem 0 1rem;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            margin-bottom: 2rem;
        }

        .footer-section h3 {
            margin-bottom: 1rem;
            font-size: 1.125rem;
        }

        .footer-section ul {
            list-style: none;
        }

        .footer-section ul li {
            margin-bottom: 0.5rem;
        }

        .footer-section a {
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-section a:hover {
            color: white;
        }

        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 1.5rem;
            text-align: center;
            color: rgba(255, 255, 255, 0.7);
        }

        /* Mobile Menu */
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
            color: var(--dark-color);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .header-content {
                flex-wrap: wrap;
                gap: 1rem;
            }

            .search-bar {
                order: 3;
                width: 100%;
                max-width: 100%;
            }

            .mobile-menu-btn {
                display: block;
            }

            .hero-content {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .hero-text h1 {
                font-size: 2rem;
            }

            .hero-image {
                display: none;
            }

            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            }

            .newsletter-form {
                flex-direction: column;
            }

            .products-header {
                flex-direction: column;
                align-items: flex-start;
            }
        }

        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr;
            }

            .category-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .section-title {
                font-size: 1.5rem;
            }

            .hero-text h1 {
                font-size: 1.75rem;
            }
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .product-card {
            animation: fadeIn 0.5s ease-out;
        }

        /* Loading Skeleton */
        .skeleton {
            background: linear-gradient(90deg, #f0f0f0 25%, #e0e0e0 50%, #f0f0f0 75%);
            background-size: 200% 100%;
            animation: loading 1.5s infinite;
        }

        @keyframes loading {
            0% {
                background-position: 200% 0;
            }
            100% {
                background-position: -200% 0;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="header-top">
            🎉 Free shipping on orders over $50 | Use code: WELCOME10 for 10% off
        </div>
        <div class="header-main">
            <div class="container">
                <div class="header-content">
                    <button class="mobile-menu-btn" onclick="toggleMobileMenu()">☰</button>
                    <div class="logo">ShopHub</div>
                    
                    <div class="search-bar">
                        <span class="search-icon">🔍</span>
                        <input type="text" placeholder="Search for products, brands and more...">
                    </div>

                    <div class="header-actions">
                        <button class="icon-btn" title="Wishlist">
                            ❤️
                            <span class="badge">3</span>
                        </button>
                        <button class="icon-btn" title="Cart">
                            🛒
                            <span class="badge">5</span>
                        </button>
                        <button class="icon-btn" title="Account">
                            👤
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-bar">
            <div class="container">
                <ul class="nav-links">
                    <li><a href="#" class="active">Home</a></li>
                    <li><a href="#">New Arrivals</a></li>
                    <li><a href="#">Best Sellers</a></li>
                    <li><a href="#">Electronics</a></li>
                    <li><a href="#">Fashion</a></li>
                    <li><a href="#">Home & Living</a></li>
                    <li><a href="#">Beauty</a></li>
                    <li><a href="#">Sports</a></li>
                    <li><a href="#">Sale</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <div class="hero-text">
                    <h1>Discover Amazing Products</h1>
                    <p>Shop the latest trends with exclusive discounts up to 70% off. Free shipping on orders over $50.</p>
                    <a href="#" class="btn btn-primary">Shop Now →</a>
                </div>
                <div class="hero-image">
                    <div style="font-size: 15rem;">🛍️</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section class="categories">
        <div class="container">
            <h2 class="section-title">Shop by Category</h2>
            <p class="section-subtitle">Browse our wide range of categories</p>
            <div class="category-grid">
                <div class="category-card">
                    <div class="category-icon">📱</div>
                    <div class="category-name">Electronics</div>
                </div>
                <div class="category-card">
                    <div class="category-icon">👕</div>
                    <div class="category-name">Fashion</div>
                </div>
                <div class="category-card">
                    <div class="category-icon">🏠</div>
                    <div class="category-name">Home</div>
                </div>
                <div class="category-card">
                    <div class="category-icon">💄</div>
                    <div class="category-name">Beauty</div>
                </div>
                <div class="category-card">
                    <div class="category-icon">⚽</div>
                    <div class="category-name">Sports</div>
                </div>
                <div class="category-card">
                    <div class="category-icon">📚</div>
                    <div class="category-name">Books</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Products -->
    <section class="products-section">
        <div class="container">
            <div class="products-header">
                <div>
                    <h2 class="section-title">Featured Products</h2>
                    <p class="section-subtitle">Handpicked just for you</p>
                </div>
                <div class="filter-buttons">
                    <button class="filter-btn active">All</button>
                    <button class="filter-btn">New</button>
                    <button class="filter-btn">Popular</button>
                    <button class="filter-btn">Sale</button>
                </div>
            </div>

            <div class="products-grid">
                <!-- Product 1 -->
                <div class="product-card">
                    <span class="product-badge">-30%</span>
                    <div class="product-image">
                        🎧
                        <div class="product-actions">
                            <button class="action-btn" title="Add to wishlist">❤️</button>
                            <button class="action-btn" title="Quick view">👁️</button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Electronics</div>
                        <h3 class="product-name">Wireless Headphones Pro</h3>
                        <div class="product-rating">
                            <span class="stars">★★★★★</span>
                            <span class="rating-count">(128)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">$89.99</span>
                            <span class="price-old">$129.99</span>
                        </div>
                        <button class="add-to-cart">
                            🛒 Add to Cart
                        </button>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="product-card">
                    <span class="product-badge new">NEW</span>
                    <div class="product-image">
                        ⌚
                        <div class="product-actions">
                            <button class="action-btn" title="Add to wishlist">❤️</button>
                            <button class="action-btn" title="Quick view">👁️</button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Electronics</div>
                        <h3 class="product-name">Smart Watch Series 5</h3>
                        <div class="product-rating">
                            <span class="stars">★★★★☆</span>
                            <span class="rating-count">(95)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">$199.99</span>
                        </div>
                        <button class="add-to-cart">
                            🛒 Add to Cart
                        </button>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="product-card">
                    <div class="product-image">
                        👟
                        <div class="product-actions">
                            <button class="action-btn" title="Add to wishlist">❤️</button>
                            <button class="action-btn" title="Quick view">👁️</button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Fashion</div>
                        <h3 class="product-name">Running Shoes Ultra</h3>
                        <div class="product-rating">
                            <span class="stars">★★★★★</span>
                            <span class="rating-count">(256)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">$79.99</span>
                            <span class="price-old">$99.99</span>
                        </div>
                        <button class="add-to-cart">
                            🛒 Add to Cart
                        </button>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="product-card">
                    <span class="product-badge">-25%</span>
                    <div class="product-image">
                        🎒
                        <div class="product-actions">
                            <button class="action-btn" title="Add to wishlist">❤️</button>
                            <button class="action-btn" title="Quick view">👁️</button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Fashion</div>
                        <h3 class="product-name">Travel Backpack Pro</h3>
                        <div class="product-rating">
                            <span class="stars">★★★★☆</span>
                            <span class="rating-count">(67)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">$59.99</span>
                            <span class="price-old">$79.99</span>
                        </div>
                        <button class="add-to-cart">
                            🛒 Add to Cart
                        </button>
                    </div>
                </div>

                <!-- Product 5 -->
                <div class="product-card">
                    <span class="product-badge new">NEW</span>
                    <div class="product-image">
                        📷
                        <div class="product-actions">
                            <button class="action-btn" title="Add to wishlist">❤️</button>
                            <button class="action-btn" title="Quick view">👁️</button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Electronics</div>
                        <h3 class="product-name">DSLR Camera 4K</h3>
                        <div class="product-rating">
                            <span class="stars">★★★★★</span>
                            <span class="rating-count">(189)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">$599.99</span>
                        </div>
                        <button class="add-to-cart">
                            🛒 Add to Cart
                        </button>
                    </div>
                </div>

                <!-- Product 6 -->
                <div class="product-card">
                    <div class="product-image">
                        🕶️
                        <div class="product-actions">
                            <button class="action-btn" title="Add to wishlist">❤️</button>
                            <button class="action-btn" title="Quick view">👁️</button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Fashion</div>
                        <h3 class="product-name">Sunglasses Premium</h3>
                        <div class="product-rating">
                            <span class="stars">★★★★☆</span>
                            <span class="rating-count">(42)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">$149.99</span>
                            <span class="price-old">$199.99</span>
                        </div>
                        <button class="add-to-cart">
                            🛒 Add to Cart
                        </button>
                    </div>
                </div>

                <!-- Product 7 -->
                <div class="product-card">
                    <span class="product-badge">-40%</span>
                    <div class="product-image">
                        💻
                        <div class="product-actions">
                            <button class="action-btn" title="Add to wishlist">❤️</button>
                            <button class="action-btn" title="Quick view">👁️</button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Electronics</div>
                        <h3 class="product-name">Laptop UltraBook</h3>
                        <div class="product-rating">
                            <span class="stars">★★★★★</span>
                            <span class="rating-count">(312)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">$899.99</span>
                            <span class="price-old">$1499.99</span>
                        </div>
                        <button class="add-to-cart">
                            🛒 Add to Cart
                        </button>
                    </div>
                </div>

                <!-- Product 8 -->
                <div class="product-card">
                    <div class="product-image">
                        🎮
                        <div class="product-actions">
                            <button class="action-btn" title="Add to wishlist">❤️</button>
                            <button class="action-btn" title="Quick view">👁️</button>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Electronics</div>
                        <h3 class="product-name">Gaming Controller</h3>
                        <div class="product-rating">
                            <span class="stars">★★★★☆</span>
                            <span class="rating-count">(78)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">$69.99</span>
                        </div>
                        <button class="add-to-cart">
                            🛒 Add to Cart
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features -->
    <section class="features">
        <div class="container">
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">🚚</div>
                    <h3 class="feature-title">Free Shipping</h3>
                    <p class="feature-description">On orders over $50</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">↩️</div>
                    <h3 class="feature-title">Easy Returns</h3>
                    <p class="feature-description">30-day return policy</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">🔒</div>
                    <h3 class="feature-title">Secure Payment</h3>
                    <p class="feature-description">100% secure transactions</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">💬</div>
                    <h3 class="feature-title">24/7 Support</h3>
                    <p class="feature-description">Dedicated customer service</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter -->
    <section class="newsletter">
        <div class="container">
            <h2>Stay in the Loop</h2>
            <p>Subscribe to get special offers, free giveaways, and exclusive deals.</p>
            <form class="newsletter-form" onsubmit="handleNewsletter(event)">
                <input type="email" placeholder="Enter your email address" required>
                <button type="submit">Subscribe</button>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>ShopHub</h3>
                    <p style="color: rgba(255,255,255,0.7); margin-bottom: 1rem;">Your one-stop shop for everything you need.</p>
                    <div style="display: flex; gap: 1rem; font-size: 1.5rem;">
                        <a href="#">📘</a>
                        <a href="#">📷</a>
                        <a href="#">🐦</a>
                        <a href="#">📺</a>
                    </div>
                </div>
                <div class="footer-section">
                    <h3>Shop</h3>
                    <ul>
                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Sale</a></li>
                        <li><a href="#">Gift Cards</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Help</h3>
                    <ul>
                        <li><a href="#">Customer Service</a></li>
                        <li><a href="#">Shipping Info</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Track Order</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Company</h3>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 ShopHub. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile menu toggle
        function toggleMobileMenu() {
            const navLinks = document.querySelector('.nav-links');
            navLinks.style.display = navLinks.style.display === 'flex' ? 'none' : 'flex';
        }

        // Filter buttons
        document.querySelectorAll('.filter-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
                this.classList.add('active');
            });
        });

        // Add to cart functionality
        document.querySelectorAll('.add-to-cart').forEach(btn => {
            btn.addEventListener('click', function(e) {
                e.stopPropagation();
                const cartBadge = document.querySelector('.icon-btn[title="Cart"] .badge');
                let count = parseInt(cartBadge.textContent);
                cartBadge.textContent = count + 1;
                
                // Animation
                this.textContent = '✓ Added!';
                this.style.background = 'var(--success-color)';
                
                setTimeout(() => {
                    this.textContent = '🛒 Add to Cart';
                    this.style.background = '';
                }, 1500);
            });
        });

        // Wishlist functionality
        document.querySelectorAll('.action-btn[title="Add to wishlist"]').forEach(btn => {
            btn.addEventListener('click', function(e) {
                e.stopPropagation();
                const wishlistBadge = document

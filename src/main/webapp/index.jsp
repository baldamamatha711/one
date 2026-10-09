<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Neat Shop · e‑commerce UI</title>
  <!-- Google Font & simple icons via font-awesome (optional but adds polish) -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
      background-color: #f8fafc;
      color: #0f172a;
      line-height: 1.5;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    /* ----- global container ----- */
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 2rem;
      width: 100%;
    }

    /* ----- header / nav ----- */
    .navbar {
      background-color: #ffffff;
      box-shadow: 0 1px 3px rgba(0, 0, 0, 0.02), 0 1px 2px rgba(0, 0, 0, 0.03);
      padding: 1rem 0;
      position: sticky;
      top: 0;
      z-index: 20;
      border-bottom: 1px solid #eef2f6;
    }

    .navbar .container {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .logo {
      font-size: 1.6rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: #0f172a;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .logo i {
      color: #3b82f6;
      font-size: 1.8rem;
    }

    .nav-links {
      display: flex;
      gap: 2rem;
      align-items: center;
    }

    .nav-links a {
      text-decoration: none;
      font-weight: 500;
      color: #334155;
      transition: color 0.2s;
      font-size: 0.95rem;
    }

    .nav-links a:hover,
    .nav-links a.active {
      color: #3b82f6;
    }

    .nav-icons {
      display: flex;
      align-items: center;
      gap: 1.5rem;
      color: #334155;
      font-size: 1.2rem;
    }

    .nav-icons i {
      cursor: pointer;
      transition: color 0.2s;
    }

    .nav-icons i:hover {
      color: #3b82f6;
    }

    .cart-badge {
      position: relative;
    }

    .cart-badge span {
      position: absolute;
      top: -8px;
      right: -12px;
      background-color: #3b82f6;
      color: white;
      font-size: 0.7rem;
      font-weight: 600;
      border-radius: 999px;
      padding: 0.15rem 0.45rem;
      min-width: 18px;
      text-align: center;
      line-height: 1.2;
    }

    /* ----- hero / banner (subtle & neat) ----- */
    .hero {
      background: linear-gradient(135deg, #eef6ff 0%, #ffffff 100%);
      border-radius: 2rem;
      margin: 2rem 0 1.5rem;
      padding: 3rem 2.5rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 1.5rem;
      border: 1px solid #e2e8f0;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
    }

    .hero-content h1 {
      font-size: 2.4rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: #0f172a;
      line-height: 1.2;
      margin-bottom: 0.5rem;
    }

    .hero-content p {
      color: #475569;
      font-size: 1.1rem;
      max-width: 500px;
      margin-bottom: 1.5rem;
    }

    .btn {
      display: inline-block;
      background-color: #0f172a;
      color: white;
      font-weight: 600;
      padding: 0.7rem 2rem;
      border-radius: 3rem;
      text-decoration: none;
      font-size: 0.95rem;
      transition: background 0.2s, transform 0.1s;
      border: none;
      cursor: pointer;
      box-shadow: 0 2px 8px rgba(15, 23, 42, 0.1);
    }

    .btn:hover {
      background-color: #1e293b;
    }

    .btn:active {
      transform: scale(0.98);
    }

    .hero-illustration {
      font-size: 4.5rem;
      color: #3b82f6;
      opacity: 0.8;
      background: #ffffff;
      padding: 1.2rem 1.8rem;
      border-radius: 2rem;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.02);
      border: 1px solid #e9eef4;
    }

    /* ----- filters & heading ----- */
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin: 2rem 0 1.5rem;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .section-header h2 {
      font-size: 1.6rem;
      font-weight: 600;
      letter-spacing: -0.01em;
      color: #0f172a;
    }

    .filter-group {
      display: flex;
      gap: 0.5rem;
      flex-wrap: wrap;
    }

    .filter-chip {
      background: white;
      border: 1px solid #e2e8f0;
      color: #334155;
      padding: 0.4rem 1rem;
      border-radius: 2rem;
      font-size: 0.85rem;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.15s;
    }

    .filter-chip.active,
    .filter-chip:hover {
      background-color: #0f172a;
      color: white;
      border-color: #0f172a;
    }

    /* ----- product grid (neat, modern cards) ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 1.8rem;
      margin-bottom: 3rem;
    }

    .product-card {
      background-color: #ffffff;
      border-radius: 1.5rem;
      padding: 1.2rem 1.2rem 1.5rem;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02), 0 1px 3px rgba(0, 0, 0, 0.03);
      border: 1px solid #f0f4f9;
      transition: transform 0.2s ease, box-shadow 0.2s ease;
      display: flex;
      flex-direction: column;
    }

    .product-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 20px 30px -12px rgba(0, 0, 0, 0.08), 0 4px 12px rgba(0, 0, 0, 0.02);
      border-color: #e0e7ef;
    }

    .product-image {
      background: #f1f5f9;
      border-radius: 1.2rem;
      height: 160px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 1rem;
      color: #3b82f6;
      font-size: 2.5rem;
      transition: background 0.2s;
    }

    .product-card:hover .product-image {
      background: #e9eff8;
    }

    .product-title {
      font-weight: 600;
      font-size: 1.05rem;
      color: #0f172a;
      margin-bottom: 0.25rem;
      line-height: 1.3;
    }

    .product-category {
      font-size: 0.75rem;
      text-transform: uppercase;
      letter-spacing: 0.03em;
      color: #64748b;
      margin-bottom: 0.6rem;
      font-weight: 500;
    }

    .product-meta {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: auto;
      margin-bottom: 0.9rem;
    }

    .price {
      font-weight: 700;
      font-size: 1.2rem;
      color: #0f172a;
      letter-spacing: -0.01em;
    }

    .rating {
      color: #f59e0b;
      font-size: 0.8rem;
      display: flex;
      align-items: center;
      gap: 0.2rem;
    }

    .rating span {
      color: #64748b;
      margin-left: 0.2rem;
      font-weight: 500;
    }

    .btn-add {
      width: 100%;
      background: #f8fafc;
      border: 1px solid #e2e8f0;
      border-radius: 2rem;
      padding: 0.6rem 1rem;
      font-weight: 600;
      font-size: 0.9rem;
      color: #1e293b;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
      cursor: pointer;
      transition: all 0.2s;
    }

    .btn-add i {
      font-size: 0.9rem;
      color: #3b82f6;
    }

    .btn-add:hover {
      background-color: #0f172a;
      color: white;
      border-color: #0f172a;
    }

    .btn-add:hover i {
      color: white;
    }

    /* ----- compact cart summary (floating neat) ----- */
    .cart-summary {
      background: white;
      border-radius: 1.5rem;
      padding: 1.5rem 2rem;
      border: 1px solid #eef2f6;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.02);
      margin-bottom: 2.5rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .cart-summary-info {
      display: flex;
      align-items: center;
      gap: 1.2rem;
    }

    .cart-icon-wrapper {
      background: #eef6ff;
      border-radius: 1rem;
      width: 3.5rem;
      height: 3.5rem;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #3b82f6;
      font-size: 1.6rem;
    }

    .cart-details h4 {
      font-size: 1rem;
      font-weight: 600;
      margin-bottom: 0.2rem;
    }

    .cart-details p {
      font-size: 0.9rem;
      color: #475569;
    }

    .cart-total {
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      color: #0f172a;
    }

    .btn-checkout {
      background-color: #3b82f6;
      color: white;
      border: none;
      border-radius: 3rem;
      padding: 0.75rem 2rem;
      font-weight: 600;
      font-size: 0.95rem;
      cursor: pointer;
      transition: background 0.2s, transform 0.1s;
      display: flex;
      align-items: center;
      gap: 0.6rem;
      box-shadow: 0 8px 18px -6px rgba(59, 130, 246, 0.3);
    }

    .btn-checkout:hover {
      background-color: #2563eb;
    }

    .btn-checkout:active {
      transform: scale(0.98);
    }

    /* ----- footer (minimal) ----- */
    .footer {
      margin-top: auto;
      padding: 2rem 0;
      border-top: 1px solid #e2e8f0;
      color: #64748b;
      font-size: 0.9rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .footer-links {
      display: flex;
      gap: 1.8rem;
    }

    .footer-links a {
      text-decoration: none;
      color: #64748b;
      transition: color 0.2s;
    }

    .footer-links a:hover {
      color: #0f172a;
    }

    /* ----- responsive tweaks ----- */
    @media (max-width: 700px) {
      .container {
        padding: 0 1.2rem;
      }

      .navbar .container {
        flex-direction: column;
        align-items: flex-start;
      }

      .nav-links {
        flex-wrap: wrap;
        gap: 1rem;
      }

      .hero {
        padding: 2rem 1.5rem;
      }

      .hero-content h1 {
        font-size: 1.8rem;
      }

      .hero-illustration {
        font-size: 3rem;
        padding: 1rem;
      }

      .cart-summary {
        flex-direction: column;
        align-items: flex-start;
      }

      .btn-checkout {
        width: 100%;
        justify-content: center;
      }

      .section-header {
        flex-direction: column;
        align-items: flex-start;
      }

      .footer {
        flex-direction: column;
        align-items: flex-start;
      }
    }

    @media (max-width: 480px) {
      .product-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header class="navbar">
    <div class="container">
      <div class="logo">
        <i class="fas fa-circle-nodes"></i> neat<span style="font-weight:400;">shop</span>
      </div>
      <div class="nav-links">
        <a href="#" class="active">Home</a>
        <a href="#">Shop</a>
        <a href="#">Collections</a>
        <a href="#">About</a>
      </div>
      <div class="nav-icons">
        <i class="fas fa-search"></i>
        <i class="far fa-heart"></i>
        <div class="cart-badge">
          <i class="fas fa-shopping-bag"></i>
          <span>3</span>
        </div>
      </div>
    </div>
  </header>

  <!-- ===== MAIN CONTENT ===== -->
  <main class="container">
    <!-- hero banner -->
    <section class="hero">
      <div class="hero-content">
        <h1>Curated essentials,<br>clean & neat.</h1>
        <p>Discover minimal, high‑quality products designed for modern living. Free shipping on all orders over $50.</p>
        <a href="#" class="btn">Shop the collection</a>
      </div>
      <div class="hero-illustration">
        <i class="fas fa-bag-shopping"></i>
      </div>
    </section>

    <!-- filter + section heading -->
    <div class="section-header">
      <h2>Featured products</h2>
      <div class="filter-group">
        <span class="filter-chip active">All</span>
        <span class="filter-chip">Audio</span>
        <span class="filter-chip">Wearables</span>
        <span class="filter-chip">Home</span>
        <span class="filter-chip">Accessories</span>
      </div>
    </div>

    <!-- product grid -->
    <div class="product-grid">
      <!-- card 1 -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-headphones"></i>
        </div>
        <div class="product-title">Aura Studio Headphones</div>
        <div class="product-category">Audio</div>
        <div class="product-meta">
          <span class="price">$189</span>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><span>(42)</span></div>
        </div>
        <button class="btn-add"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- card 2 -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-watch"></i>
        </div>
        <div class="product-title">Minimal Smartwatch</div>
        <div class="product-category">Wearables</div>
        <div class="product-meta">
          <span class="price">$249</span>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><span>(18)</span></div>
        </div>
        <button class="btn-add"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- card 3 -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-laptop"></i>
        </div>
        <div class="product-title">Air Book Pro 13"</div>
        <div class="product-category">Electronics</div>
        <div class="product-meta">
          <span class="price">$1099</span>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><span>(56)</span></div>
        </div>
        <button class="btn-add"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- card 4 -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-mug-hot"></i>
        </div>
        <div class="product-title">Stoneware Mug Set</div>
        <div class="product-category">Home</div>
        <div class="product-meta">
          <span class="price">$42</span>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><span>(31)</span></div>
        </div>
        <button class="btn-add"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- card 5 -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-camera"></i>
        </div>
        <div class="product-title">Compact Travel Camera</div>
        <div class="product-category">Electronics</div>
        <div class="product-meta">
          <span class="price">$549</span>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><span>(23)</span></div>
        </div>
        <button class="btn-add"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- card 6 -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-headphones-simple"></i>
        </div>
        <div class="product-title">Wireless Earbuds</div>
        <div class="product-category">Audio</div>
        <div class="product-meta">
          <span class="price">$129</span>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><span>(67)</span></div>
        </div>
        <button class="btn-add"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
    </div>

    <!-- neat cart summary (mini) -->
    <div class="cart-summary">
      <div class="cart-summary-info">
        <div class="cart-icon-wrapper">
          <i class="fas fa-shopping-bag"></i>
        </div>
        <div class="cart-details">
          <h4>Your cart · 3 items</h4>
          <p>Subtotal: $489.00</p>
        </div>
      </div>
      <div style="display: flex; align-items: center; gap: 2rem; flex-wrap: wrap;">
        <div class="cart-total">$489.00</div>
        <button class="btn-checkout">
          <i class="fas fa-arrow-right"></i> Checkout
        </button>
      </div>
    </div>
  </main>

  <!-- ===== FOOTER ===== -->
  <footer class="footer container">
    <div>© 2025 NeatShop — clean design, curated goods.</div>
    <div class="footer-links">
      <a href="#">Privacy</a>
      <a href="#">Terms</a>
      <a href="#">Shipping</a>
      <a href="#">Contact</a>
    </div>
  </footer>

  <!-- tiny interaction for filter chips (just for demo) -->
  <script>
    (function() {
      const chips = document.querySelectorAll('.filter-chip');
      chips.forEach(chip => {
        chip.addEventListener('click', function() {
          chips.forEach(c => c.classList.remove('active'));
          this.classList.add('active');
        });
      });

      // Add to cart button micro feedback (non-functional demo)
      const addButtons = document.querySelectorAll('.btn-add');
      addButtons.forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.preventDefault();
          const originalText = this.innerHTML;
          this.innerHTML = '<i class="fas fa-check"></i> Added';
          this.style.backgroundColor = '#0f172a';
          this.style.color = 'white';
          this.style.borderColor = '#0f172a';
          setTimeout(() => {
            this.innerHTML = originalText;
            this.style.backgroundColor = '';
            this.style.color = '';
            this.style.borderColor = '';
          }, 1000);
        });
      });
    })();
  </script>
</body>
</html>

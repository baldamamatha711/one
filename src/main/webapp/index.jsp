<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>neat · e‑commerce ui</title>
  <!-- Font & Icons -->
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
      font-family: 'Inter', sans-serif;
      background: #f8fafc;
      color: #0f172a;
      line-height: 1.5;
      padding: 2rem 1.5rem;
    }

    /* main container – keeps everything tidy */
    .store {
      max-width: 1280px;
      margin: 0 auto;
    }

    /* ---------- HEADER ---------- */
    .header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 1.25rem;
      margin-bottom: 2rem;
    }

    .logo-area {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .logo-icon {
      background: #0f172a;
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.3rem;
      box-shadow: 0 6px 12px -4px rgba(15, 23, 42, 0.15);
    }

    .logo-text {
      font-weight: 700;
      font-size: 1.5rem;
      letter-spacing: -0.02em;
      color: #0f172a;
    }

    .logo-text span {
      color: #64748b;
      font-weight: 400;
      font-size: 1rem;
      margin-left: 0.2rem;
    }

    .search-bar {
      flex: 1;
      min-width: 240px;
      max-width: 400px;
      display: flex;
      align-items: center;
      background: white;
      padding: 0.6rem 1rem;
      border-radius: 48px;
      border: 1px solid #e2e8f0;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
      transition: 0.2s;
    }

    .search-bar:focus-within {
      border-color: #94a3b8;
      box-shadow: 0 4px 12px rgba(0,0,0,0.04);
    }

    .search-bar i {
      color: #94a3b8;
      font-size: 1rem;
      margin-right: 0.65rem;
    }

    .search-bar input {
      border: none;
      outline: none;
      width: 100%;
      font-size: 0.95rem;
      font-weight: 400;
      background: transparent;
      color: #0f172a;
    }

    .search-bar input::placeholder {
      color: #94a3b8;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 1rem;
    }

    .icon-btn {
      background: white;
      border: 1px solid #e2e8f0;
      border-radius: 40px;
      width: 42px;
      height: 42px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #1e293b;
      font-size: 1.15rem;
      cursor: default;
      transition: 0.15s;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
      position: relative;
    }

    .icon-btn:hover {
      background: #f1f5f9;
      border-color: #cbd5e1;
    }

    .cart-badge {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #0f172a;
      color: white;
      font-size: 0.65rem;
      font-weight: 600;
      width: 20px;
      height: 20px;
      border-radius: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid #f8fafc;
    }

    /* ---------- NAV / CATEGORY CHIPS ---------- */
    .nav-chips {
      display: flex;
      flex-wrap: wrap;
      gap: 0.5rem;
      margin-bottom: 2.5rem;
    }

    .chip {
      background: white;
      border: 1px solid #e2e8f0;
      padding: 0.5rem 1.15rem;
      border-radius: 30px;
      font-size: 0.9rem;
      font-weight: 500;
      color: #334155;
      cursor: default;
      transition: 0.15s;
      box-shadow: 0 2px 4px rgba(0,0,0,0.02);
    }

    .chip.active {
      background: #0f172a;
      border-color: #0f172a;
      color: white;
      box-shadow: 0 6px 12px -4px rgba(15, 23, 42, 0.2);
    }

    .chip:hover:not(.active) {
      background: #f1f5f9;
      border-color: #cbd5e1;
    }

    /* ---------- PRODUCT GRID ---------- */
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 1.25rem;
    }

    .section-header h2 {
      font-size: 1.35rem;
      font-weight: 600;
      letter-spacing: -0.02em;
      color: #0f172a;
    }

    .section-header a {
      font-size: 0.9rem;
      font-weight: 500;
      color: #64748b;
      text-decoration: none;
      border-bottom: 1px solid transparent;
      transition: 0.15s;
      cursor: default;
    }

    .section-header a i {
      font-size: 0.75rem;
      margin-left: 0.25rem;
    }

    .section-header a:hover {
      color: #0f172a;
      border-bottom-color: #cbd5e1;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 1.5rem;
      margin-bottom: 1rem;
    }

    /* ---------- PRODUCT CARD ---------- */
    .product-card {
      background: white;
      border-radius: 24px;
      border: 1px solid #eef2f6;
      overflow: hidden;
      transition: 0.2s ease;
      box-shadow: 0 4px 10px -2px rgba(0, 0, 0, 0.02);
      display: flex;
      flex-direction: column;
    }

    .product-card:hover {
      transform: translateY(-4px);
      border-color: #e2e8f0;
      box-shadow: 0 20px 25px -12px rgba(0, 0, 0, 0.08);
    }

    .card-image {
      background: #f1f5f9;
      height: 190px;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      overflow: hidden;
      transition: 0.2s;
    }

    .card-image i {
      font-size: 3.2rem;
      color: #94a3b8;
      opacity: 0.7;
      transition: 0.2s;
    }

    .product-card:hover .card-image i {
      transform: scale(1.05);
      color: #64748b;
    }

    .wishlist-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      background: white;
      border: none;
      width: 34px;
      height: 34px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #64748b;
      font-size: 0.95rem;
      cursor: default;
      box-shadow: 0 4px 10px rgba(0,0,0,0.03);
      transition: 0.15s;
      border: 1px solid #eef2f6;
    }

    .wishlist-btn:hover {
      background: #f8fafc;
      color: #0f172a;
    }

    .card-content {
      padding: 1.25rem 1.25rem 1.5rem;
      display: flex;
      flex-direction: column;
      flex: 1;
    }

    .product-category {
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      font-weight: 600;
      color: #64748b;
      margin-bottom: 0.4rem;
    }

    .product-title {
      font-size: 1.05rem;
      font-weight: 600;
      letter-spacing: -0.01em;
      color: #0f172a;
      margin-bottom: 0.35rem;
      line-height: 1.3;
    }

    .product-price {
      font-size: 1.15rem;
      font-weight: 700;
      color: #0f172a;
      margin-bottom: 1rem;
    }

    .product-price small {
      font-size: 0.8rem;
      font-weight: 400;
      color: #94a3b8;
      margin-left: 0.3rem;
    }

    .add-btn {
      margin-top: auto;
      background: white;
      border: 1.5px solid #e2e8f0;
      border-radius: 40px;
      padding: 0.7rem 1rem;
      font-weight: 600;
      font-size: 0.85rem;
      color: #0f172a;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
      cursor: default;
      transition: 0.15s;
      font-family: 'Inter', sans-serif;
    }

    .add-btn i {
      font-size: 0.9rem;
      color: #475569;
    }

    .add-btn:hover {
      background: #0f172a;
      border-color: #0f172a;
      color: white;
    }

    .add-btn:hover i {
      color: white;
    }

    /* subtle micro‑interaction for realism */
    .product-card, .icon-btn, .chip, .add-btn, .wishlist-btn {
      cursor: default;
    }

    /* ---------- FOOTER / TRUST MARKERS ---------- */
    .trust-bar {
      margin-top: 3.5rem;
      padding-top: 1.5rem;
      border-top: 1px solid #e2e8f0;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      gap: 1.5rem;
      font-size: 0.85rem;
      color: #64748b;
    }

    .trust-item {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .trust-item i {
      font-size: 1rem;
      color: #94a3b8;
    }

    /* Responsive touches */
    @media (max-width: 640px) {
      body { padding: 1.25rem 1rem; }
      .header { flex-direction: column; align-items: stretch; }
      .search-bar { max-width: none; }
      .header-actions { justify-content: flex-end; }
      .product-grid { grid-template-columns: 1fr 1fr; gap: 1rem; }
      .card-image { height: 140px; }
      .card-image i { font-size: 2.5rem; }
      .product-title { font-size: 0.95rem; }
      .trust-bar { flex-direction: column; align-items: flex-start; }
    }

    @media (max-width: 420px) {
      .product-grid { grid-template-columns: 1fr; }
    }

    /* decorative dots (just for clean look) */
    .badge-dot {
      width: 6px;
      height: 6px;
      background: #22c55e;
      border-radius: 10px;
      display: inline-block;
      margin-right: 6px;
    }
  </style>
</head>
<body>
  <div class="store">
    <!-- HEADER -->
    <header class="header">
      <div class="logo-area">
        <div class="logo-icon">
          <i class="fas fa-bag-shopping"></i>
        </div>
        <div class="logo-text">
          neat<span>.store</span>
        </div>
      </div>

      <div class="search-bar">
        <i class="fas fa-search"></i>
        <input type="text" placeholder="Search products…" value="wireless headphones">
      </div>

      <div class="header-actions">
        <div class="icon-btn">
          <i class="far fa-heart"></i>
        </div>
        <div class="icon-btn">
          <i class="far fa-user"></i>
        </div>
        <div class="icon-btn">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-badge">3</span>
        </div>
      </div>
    </header>

    <!-- CATEGORY CHIPS -->
    <div class="nav-chips">
      <div class="chip active">All</div>
      <div class="chip">Audio</div>
      <div class="chip">Watches</div>
      <div class="chip">Accessories</div>
      <div class="chip">Cameras</div>
      <div class="chip">Gaming</div>
      <div class="chip">Smart home</div>
    </div>

    <!-- PRODUCT SECTION -->
    <div class="section-header">
      <h2>Featured products</h2>
      <a href="#">View all <i class="fas fa-arrow-right"></i></a>
    </div>

    <div class="product-grid">
      <!-- CARD 1 -->
      <div class="product-card">
        <div class="card-image">
          <i class="fas fa-headphones"></i>
          <div class="wishlist-btn"><i class="far fa-heart"></i></div>
        </div>
        <div class="card-content">
          <div class="product-category">Audio</div>
          <div class="product-title">Aura Studio Pro</div>
          <div class="product-price">$249 <small>USD</small></div>
          <button class="add-btn"><i class="fas fa-plus"></i> Add to cart</button>
        </div>
      </div>

      <!-- CARD 2 -->
      <div class="product-card">
        <div class="card-image">
          <i class="fas fa-clock"></i>
          <div class="wishlist-btn"><i class="far fa-heart"></i></div>
        </div>
        <div class="card-content">
          <div class="product-category">Watches</div>
          <div class="product-title">Minimal Chrono</div>
          <div class="product-price">$189 <small>USD</small></div>
          <button class="add-btn"><i class="fas fa-plus"></i> Add to cart</button>
        </div>
      </div>

      <!-- CARD 3 -->
      <div class="product-card">
        <div class="card-image">
          <i class="fas fa-camera"></i>
          <div class="wishlist-btn"><i class="far fa-heart"></i></div>
        </div>
        <div class="card-content">
          <div class="product-category">Cameras</div>
          <div class="product-title">VlogMate 4K</div>
          <div class="product-price">$329 <small>USD</small></div>
          <button class="add-btn"><i class="fas fa-plus"></i> Add to cart</button>
        </div>
      </div>

      <!-- CARD 4 -->
      <div class="product-card">
        <div class="card-image">
          <i class="fas fa-gamepad"></i>
          <div class="wishlist-btn"><i class="far fa-heart"></i></div>
        </div>
        <div class="card-content">
          <div class="product-category">Gaming</div>
          <div class="product-title">Nova Controller</div>
          <div class="product-price">$89 <small>USD</small></div>
          <button class="add-btn"><i class="fas fa-plus"></i> Add to cart</button>
        </div>
      </div>

      <!-- CARD 5 -->
      <div class="product-card">
        <div class="card-image">
          <i class="fas fa-laptop"></i>
          <div class="wishlist-btn"><i class="far fa-heart"></i></div>
        </div>
        <div class="card-content">
          <div class="product-category">Accessories</div>
          <div class="product-title">AluStand Hub</div>
          <div class="product-price">$79 <small>USD</small></div>
          <button class="add-btn"><i class="fas fa-plus"></i> Add to cart</button>
        </div>
      </div>

      <!-- CARD 6 -->
      <div class="product-card">
        <div class="card-image">
          <i class="fas fa-mobile-alt"></i>
          <div class="wishlist-btn"><i class="far fa-heart"></i></div>
        </div>
        <div class="card-content">
          <div class="product-category">Smart home</div>
          <div class="product-title">SmartHub Mini</div>
          <div class="product-price">$129 <small>USD</small></div>
          <button class="add-btn"><i class="fas fa-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>

    <!-- subtle trust / footer info -->
    <div class="trust-bar">
      <div class="trust-item">
        <i class="fas fa-truck"></i> Free shipping over $50
      </div>
      <div class="trust-item">
        <i class="fas fa-undo-alt"></i> 30‑day returns
      </div>
      <div class="trust-item">
        <i class="fas fa-lock"></i> Secure checkout
      </div>
      <div class="trust-item">
        <span class="badge-dot"></span> 24/7 support
      </div>
    </div>
  </div>
</body>
</html>

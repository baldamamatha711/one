<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LUMINA | modern e‑commerce UI</title>
  <!-- Font Awesome (icons) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <!-- Google font for clean typography -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Inter', sans-serif;
    }

    body {
      background: #f8fafc;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      padding: 2rem 1rem;
    }

    /* main card – clean, spacious, subtle depth */
    .product-card {
      max-width: 1200px;
      width: 100%;
      background: #ffffff;
      border-radius: 2.5rem;
      box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.15), 0 8px 20px -8px rgba(0, 0, 0, 0.05);
      display: flex;
      flex-wrap: wrap;
      overflow: hidden;
      transition: all 0.2s ease;
    }

    /* image gallery area – left side */
    .gallery {
      flex: 1 1 45%;
      background: #f1f5f9;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 2rem 2rem 1.5rem 2rem;
    }

    .main-image {
      width: 100%;
      max-width: 420px;
      aspect-ratio: 1/1;
      background: #e9eef3;
      border-radius: 2rem;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 1.5rem;
      box-shadow: inset 0 2px 6px rgba(0, 0, 0, 0.02), 0 6px 14px rgba(0, 0, 0, 0.02);
      transition: transform 0.3s ease;
      background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200" width="200" height="200"><circle cx="100" cy="100" r="70" fill="%23d9e2ec" /><circle cx="100" cy="100" r="45" fill="%23bcccdc" /><circle cx="100" cy="100" r="25" fill="%239fb3c9" /></svg>');
      background-size: cover;
      background-position: center;
      background-blend-mode: overlay;
    }

    /* product illustration – nice abstract e‑commerce vibe */
    .main-image i {
      font-size: 8rem;
      color: #2c3e50;
      opacity: 0.85;
      filter: drop-shadow(0 8px 12px rgba(0, 0, 0, 0.08));
    }

    .thumbnail-grid {
      display: flex;
      gap: 0.75rem;
      justify-content: center;
      flex-wrap: wrap;
    }

    .thumb {
      width: 70px;
      height: 70px;
      background: #ffffff;
      border-radius: 1.2rem;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.02), 0 0 0 1px rgba(0, 0, 0, 0.02);
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: all 0.2s ease;
      color: #4b6584;
      font-size: 1.6rem;
    }

    .thumb:hover {
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.06), 0 0 0 1px #94a3b8;
      transform: translateY(-3px);
    }

    .thumb.active {
      box-shadow: 0 0 0 2px #0f172a, 0 8px 16px rgba(0, 0, 0, 0.08);
      background: #ffffff;
    }

    /* product info – right side */
    .info {
      flex: 1 1 55%;
      padding: 3rem 3rem 3rem 2.5rem;
      display: flex;
      flex-direction: column;
    }

    .badge {
      display: inline-block;
      background: #e6f0ff;
      color: #1e4f8a;
      font-weight: 600;
      font-size: 0.8rem;
      letter-spacing: 0.02em;
      padding: 0.35rem 1rem;
      border-radius: 50px;
      margin-bottom: 1.25rem;
      align-self: flex-start;
      text-transform: uppercase;
    }

    .product-title {
      font-size: 2.5rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: #0f172a;
      line-height: 1.2;
      margin-bottom: 0.5rem;
    }

    .product-sub {
      font-size: 1rem;
      color: #64748b;
      font-weight: 400;
      margin-bottom: 1.5rem;
      border-left: 3px solid #cbd5e1;
      padding-left: 1rem;
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      margin-bottom: 1.75rem;
    }

    .stars {
      color: #fbbf24;
      letter-spacing: 0.1rem;
      font-size: 1rem;
    }

    .rating-count {
      color: #475569;
      font-size: 0.9rem;
      font-weight: 500;
    }

    .price-section {
      display: flex;
      align-items: baseline;
      gap: 1rem;
      margin-bottom: 2rem;
    }

    .current-price {
      font-size: 2.2rem;
      font-weight: 700;
      color: #0f172a;
      letter-spacing: -0.02em;
    }

    .old-price {
      font-size: 1.2rem;
      color: #94a3b8;
      text-decoration: line-through;
      font-weight: 400;
    }

    .discount {
      background: #fee2e2;
      color: #b91c1c;
      font-weight: 600;
      font-size: 0.85rem;
      padding: 0.25rem 0.75rem;
      border-radius: 40px;
    }

    .description {
      color: #334155;
      font-size: 0.95rem;
      line-height: 1.6;
      margin-bottom: 2rem;
      max-width: 90%;
    }

    /* color & size selectors */
    .options {
      display: flex;
      flex-direction: column;
      gap: 1.5rem;
      margin-bottom: 2.5rem;
    }

    .option-group {
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 0.75rem;
    }

    .option-label {
      font-weight: 600;
      font-size: 0.9rem;
      color: #0f172a;
      width: 50px;
    }

    .color-dots {
      display: flex;
      gap: 0.6rem;
    }

    .color-dot {
      width: 32px;
      height: 32px;
      border-radius: 50%;
      cursor: pointer;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.04);
      transition: all 0.15s ease;
      border: 2px solid transparent;
    }

    .color-dot:hover {
      transform: scale(1.08);
    }

    .color-dot.active {
      border-color: #0f172a;
      box-shadow: 0 0 0 2px #ffffff, 0 0 0 4px #0f172a;
    }

    /* sizes */
    .size-options {
      display: flex;
      gap: 0.5rem;
      flex-wrap: wrap;
    }

    .size-btn {
      background: #ffffff;
      border: 1px solid #e2e8f0;
      color: #1e293b;
      font-weight: 500;
      font-size: 0.9rem;
      padding: 0.6rem 1.2rem;
      border-radius: 2rem;
      cursor: pointer;
      transition: all 0.15s ease;
      min-width: 56px;
      text-align: center;
    }

    .size-btn:hover {
      border-color: #94a3b8;
      background: #f8fafc;
    }

    .size-btn.active {
      background: #0f172a;
      border-color: #0f172a;
      color: #ffffff;
      font-weight: 600;
      box-shadow: 0 6px 12px rgba(15, 23, 42, 0.12);
    }

    /* actions: quantity + add to cart */
    .actions {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 1.25rem;
      margin-bottom: 2rem;
    }

    .quantity-selector {
      display: flex;
      align-items: center;
      background: #ffffff;
      border: 1px solid #e2e8f0;
      border-radius: 3rem;
      padding: 0.25rem;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.02);
    }

    .quantity-btn {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      border: none;
      background: transparent;
      font-size: 1.2rem;
      font-weight: 500;
      color: #1e293b;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: background 0.15s;
    }

    .quantity-btn:hover {
      background: #f1f5f9;
    }

    .quantity-value {
      width: 45px;
      text-align: center;
      font-weight: 600;
      font-size: 1rem;
      color: #0f172a;
    }

    .btn-primary {
      background: #0f172a;
      border: none;
      color: #ffffff;
      font-weight: 600;
      font-size: 1rem;
      padding: 1rem 2.5rem;
      border-radius: 3rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.75rem;
      cursor: pointer;
      transition: all 0.2s ease;
      flex: 1 1 200px;
      box-shadow: 0 12px 24px -8px rgba(15, 23, 42, 0.25);
      letter-spacing: 0.01em;
    }

    .btn-primary i {
      font-size: 1.1rem;
    }

    .btn-primary:hover {
      background: #1e293b;
      transform: translateY(-2px);
      box-shadow: 0 20px 30px -8px rgba(15, 23, 42, 0.3);
    }

    .btn-primary:active {
      transform: translateY(0);
    }

    .btn-secondary {
      background: transparent;
      border: 1.5px solid #e2e8f0;
      color: #0f172a;
      font-weight: 500;
      padding: 1rem 1.5rem;
      border-radius: 3rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
      cursor: pointer;
      transition: all 0.2s ease;
      font-size: 0.95rem;
    }

    .btn-secondary i {
      color: #64748b;
    }

    .btn-secondary:hover {
      border-color: #94a3b8;
      background: #f8fafc;
    }

    /* delivery + trust */
    .delivery-info {
      display: flex;
      flex-wrap: wrap;
      gap: 1.5rem;
      margin-top: 1rem;
      border-top: 1px solid #e9eef3;
      padding-top: 2rem;
      font-size: 0.9rem;
      color: #1e293b;
    }

    .delivery-item {
      display: flex;
      align-items: center;
      gap: 0.6rem;
      color: #334155;
    }

    .delivery-item i {
      font-size: 1.2rem;
      color: #3b5e8c;
      width: 20px;
    }

    /* micro responsiveness */
    @media (max-width: 900px) {
      .product-card {
        flex-direction: column;
        border-radius: 2rem;
      }

      .gallery {
        padding: 2rem 1.5rem;
      }

      .info {
        padding: 2rem 1.8rem 2.5rem;
      }

      .product-title {
        font-size: 2rem;
      }

      .main-image i {
        font-size: 6rem;
      }

      .description {
        max-width: 100%;
      }
    }

    @media (max-width: 480px) {
      .info {
        padding: 1.8rem 1.2rem;
      }

      .product-title {
        font-size: 1.8rem;
      }

      .current-price {
        font-size: 1.8rem;
      }

      .actions {
        flex-direction: column;
        align-items: stretch;
      }

      .btn-primary {
        justify-content: center;
      }

      .quantity-selector {
        align-self: flex-start;
      }
    }

    /* little heart icon micro interaction */
    .wishlist-btn {
      background: transparent;
      border: none;
      font-size: 1.3rem;
      color: #94a3b8;
      cursor: pointer;
      transition: color 0.15s;
      padding: 0.4rem;
    }

    .wishlist-btn:hover {
      color: #e11d48;
    }

    /* stock indicator */
    .stock-indicator {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      font-size: 0.85rem;
      color: #1e4620;
      background: #e6f7e6;
      padding: 0.3rem 1rem;
      border-radius: 40px;
      font-weight: 500;
      align-self: flex-start;
      margin-bottom: 1rem;
    }

    .stock-indicator i {
      font-size: 0.75rem;
      color: #1e7e34;
    }
  </style>
</head>
<body>
  <div class="product-card">
    <!-- Left: image gallery -->
    <div class="gallery">
      <div class="main-image">
        <!-- big abstract icon representing the product -->
        <i class="fas fa-headphones"></i>
      </div>
      <div class="thumbnail-grid">
        <div class="thumb active"><i class="fas fa-headphones"></i></div>
        <div class="thumb"><i class="fas fa-headphones-alt"></i></div>
        <div class="thumb"><i class="fas fa-headphones-simple"></i></div>
        <div class="thumb"><i class="fas fa-ear-listen"></i></div>
      </div>
    </div>

    <!-- Right: product details -->
    <div class="info">
      <!-- small badge -->
      <div class="badge">New arrival</div>
      <!-- stock tag -->
      <div class="stock-indicator">
        <i class="fas fa-circle"></i> In stock · ships free
      </div>
      
      <h1 class="product-title">Studio Pro Wireless</h1>
      <div class="product-sub">Active noise cancelling · 40h battery</div>

      <!-- rating -->
      <div class="rating">
        <span class="stars">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star-half-alt"></i>
        </span>
        <span class="rating-count">4.8 (2.4k reviews)</span>
      </div>

      <!-- price -->
      <div class="price-section">
        <span class="current-price">$249.00</span>
        <span class="old-price">$329.00</span>
        <span class="discount">-24%</span>
      </div>

      <!-- short desc -->
      <p class="description">
        Premium wireless headphones with adaptive sound, plush memory foam earcups, 
        and crystal‑clear calls. Designed for all‑day comfort.
      </p>

      <!-- options: colors and sizes -->
      <div class="options">
        <div class="option-group">
          <span class="option-label">Color</span>
          <div class="color-dots">
            <div class="color-dot active" style="background: #1e293b;" title="Midnight black"></div>
            <div class="color-dot" style="background: #b0b8c1;" title="Silver"></div>
            <div class="color-dot" style="background: #9f7e69;" title="Tan"></div>
            <div class="color-dot" style="background: #3b5e8c;" title="Navy blue"></div>
          </div>
          <!-- wishlist heart icon -->
          <button class="wishlist-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
        </div>

        <div class="option-group">
          <span class="option-label">Size</span>
          <div class="size-options">
            <button class="size-btn">S</button>
            <button class="size-btn active">M</button>
            <button class="size-btn">L</button>
            <button class="size-btn">XL</button>
          </div>
        </div>
      </div>

      <!-- actions: quantity + add to cart -->
      <div class="actions">
        <div class="quantity-selector">
          <button class="quantity-btn" aria-label="Decrease quantity">−</button>
          <span class="quantity-value">1</span>
          <button class="quantity-btn" aria-label="Increase quantity">+</button>
        </div>
        <button class="btn-primary">
          <i class="fas fa-bag-shopping"></i> Add to cart
        </button>
        <button class="btn-secondary" aria-label="Save for later">
          <i class="far fa-bookmark"></i> Save
        </button>
      </div>

      <!-- delivery / trust badges -->
      <div class="delivery-info">
        <div class="delivery-item">
          <i class="fas fa-truck-fast"></i> Free 2‑day shipping
        </div>
        <div class="delivery-item">
          <i class="fas fa-rotate-left"></i> 30‑day returns
        </div>
        <div class="delivery-item">
          <i class="fas fa-shield-halved"></i> 2‑year warranty
        </div>
      </div>
    </div>
  </div>
</body>
</html>

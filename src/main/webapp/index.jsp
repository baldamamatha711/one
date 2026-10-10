<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Store</title>
<style>
  :root {
    --bg: #fafaf7;
    --fg: #1a1a1a;
    --muted: #6b6b6b;
    --accent: #1a1a1a;
    --card: #ffffff;
    --border: #e5e5e0;
  }
  * { margin: 0; padding: 0; box-sizing: border-box; }
  body {
    font-family: 'Inter', -apple-system, sans-serif;
    background: var(--bg);
    color: var(--fg);
    line-height: 1.5;
  }
  header {
    position: sticky; top: 0; z-index: 100;
    background: rgba(250,250,247,0.9);
    backdrop-filter: blur(10px);
    border-bottom: 1px solid var(--border);
    padding: 1rem 2rem;
    display: flex; justify-content: space-between; align-items: center;
  }
  .logo { font-weight: 700; font-size: 1.25rem; letter-spacing: -0.02em; }
  nav { display: flex; gap: 2rem; }
  nav a { color: var(--fg); text-decoration: none; font-size: 0.9rem; }
  nav a:hover { color: var(--muted); }
  .actions { display: flex; gap: 1rem; align-items: center; }
  .icon-btn {
    background: none; border: none; cursor: pointer;
    font-size: 1.1rem; padding: 0.4rem;
  }
  .cart-count {
    background: var(--fg); color: var(--bg);
    font-size: 0.7rem; border-radius: 999px;
    padding: 0.1rem 0.4rem; margin-left: -0.5rem;
  }

  .hero {
    padding: 6rem 2rem;
    text-align: center;
    background: linear-gradient(180deg, #fafaf7 0%, #f0efe9 100%);
  }
  .hero h1 {
    font-size: clamp(2.5rem, 6vw, 4.5rem);
    font-weight: 600;
    letter-spacing: -0.03em;
    line-height: 1.05;
    margin-bottom: 1rem;
  }
  .hero p { color: var(--muted); font-size: 1.1rem; margin-bottom: 2rem; }
  .btn {
    display: inline-block;
    background: var(--accent); color: var(--bg);
    padding: 0.9rem 2rem; border-radius: 999px;
    text-decoration: none; font-size: 0.9rem; font-weight: 500;
    transition: transform 0.2s, opacity 0.2s;
  }
  .btn:hover { transform: translateY(-1px); opacity: 0.9; }

  .section { padding: 4rem 2rem; max-width: 1400px; margin: 0 auto; }
  .section-header {
    display: flex; justify-content: space-between; align-items: baseline;
    margin-bottom: 2rem;
  }
  .section-header h2 {
    font-size: 1.5rem; font-weight: 600; letter-spacing: -0.02em;
  }
  .section-header a { color: var(--muted); font-size: 0.9rem; text-decoration: none; }

  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
    gap: 1.5rem;
  }
  .product {
    background: var(--card);
    border-radius: 12px;
    overflow: hidden;
    transition: transform 0.3s;
    cursor: pointer;
  }
  .product:hover { transform: translateY(-4px); }
  .product-img {
    aspect-ratio: 1;
    background: #f0efe9;
    display: flex; align-items: center; justify-content: center;
    color: var(--muted); font-size: 0.85rem;
    position: relative;
  }
  .badge {
    position: absolute; top: 0.75rem; left: 0.75rem;
    background: var(--fg); color: var(--bg);
    font-size: 0.7rem; padding: 0.25rem 0.6rem;
    border-radius: 999px; font-weight: 500;
  }
  .product-info { padding: 1rem; }
  .product-info h3 { font-size: 0.95rem; font-weight: 500; margin-bottom: 0.25rem; }
  .product-info .price { color: var(--muted); font-size: 0.9rem; }
  .product-info .price s { margin-left: 0.5rem; opacity: 0.6; }

  footer {
    border-top: 1px solid var(--border);
    padding: 3rem 2rem;
    text-align: center;
    color: var(--muted);
    font-size: 0.85rem;
  }

  @media (max-width: 640px) {
    nav { display: none; }
    .hero { padding: 4rem 1.5rem; }
    .section { padding: 3rem 1.5rem; }
  }
</style>
</head>
<body>
  <header>
    <div class="logo">STORE.</div>
    <nav>
      <a href="#">New</a>
      <a href="#">Shop</a>
      <a href="#">Collections</a>
      <a href="#">About</a>
    </nav>
    <div class="actions">
      <button class="icon-btn">🔍</button>
      <button class="icon-btn">👤</button>
      <button class="icon-btn">🛒 <span class="cart-count">2</span></button>
    </div>
  </header>

  <section class="hero">
    <h1>Essentials, refined.</h1>
    <p>Timeless pieces designed to last. Free shipping over $50.</p>
    <a href="#" class="btn">Shop the collection</a>
  </section>

  <section class="section">
    <div class="section-header">
      <h2>Featured</h2>
      <a href="#">View all →</a>
    </div>
    <div class="grid">
      <div class="product">
        <div class="product-img">Product image<span class="badge">New</span></div>
        <div class="product-info">
          <h3>Merino Wool Sweater</h3>
          <div class="price">$128</div>
        </div>
      </div>
      <div class="product">
        <div class="product-img">Product image</div>
        <div class="product-info">
          <h3>Canvas Tote</h3>
          <div class="price">$68</div>
        </div>
      </div>
      <div class="product">
        <div class="product-img">Product image<span class="badge">Sale</span></div>
        <div class="product-info">
          <h3>Leather Wallet</h3>
          <div class="price">$45 <s>$80</s></div>
        </div>
      </div>
      <div class="product">
        <div class="product-img">Product image</div>
        <div class="product-info">
          <h3>Ceramic Mug</h3>
          <div class="price">$24</div>
        </div>
      </div>
    </div>
  </section>

  <footer>
    © 2025 Store. All rights reserved.
  </footer>
</body>
</html>

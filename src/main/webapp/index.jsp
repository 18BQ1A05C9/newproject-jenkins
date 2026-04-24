<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --primary: #0a2540;
            --accent: #00d4ff;
            --accent-dark: #0099cc;
            --muted: #5f6c7a;
            --card: #ffffff;
            --surface: #f6f9fc;
            --border-light: rgba(10, 37, 64, 0.08);
            --success: #28a745;
            --warning: #ff4757;
            --radius: 1rem;
            --container: 1280px;
            --shadow-sm: 0 8px 20px rgba(10, 37, 64, 0.04);
            --shadow-md: 0 12px 28px rgba(0, 0, 0, 0.04);
            --transition: all 0.2s ease;
        }

        body {
            background: var(--bg);
            font-family: 'Inter', system-ui, -apple-system, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* header sticky */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.96);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border-light);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 14px 0;
        }

        .brand {
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 1.6rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, var(--primary) 0%, #1e496d 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .brand .accent {
            background: linear-gradient(135deg, var(--accent), #0088ff);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
            align-items: center;
        }

        .main-nav li a {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 14px;
            border-radius: 40px;
            font-weight: 500;
            transition: var(--transition);
            color: var(--primary);
        }

        .main-nav li a:hover {
            background: var(--surface);
            color: var(--accent-dark);
        }

        .search {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 60px;
            padding: 8px 16px;
            gap: 10px;
            border: 1px solid transparent;
            transition: var(--transition);
        }

        .search:focus-within {
            border-color: var(--accent);
            background: white;
            box-shadow: 0 0 0 3px rgba(0, 212, 255, 0.2);
        }

        .search input {
            border: none;
            background: transparent;
            outline: none;
            font-size: 0.9rem;
            width: 200px;
        }

        .icon-btn {
            background: transparent;
            border: none;
            cursor: pointer;
            font-size: 1.2rem;
            color: var(--primary);
            transition: var(--transition);
            padding: 6px;
            border-radius: 50%;
        }

        .icon-btn:hover {
            background: var(--surface);
            color: var(--accent-dark);
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 4px;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: var(--warning);
            color: white;
            font-size: 11px;
            font-weight: 700;
            min-width: 20px;
            height: 20px;
            border-radius: 30px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 0 5px;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            background: linear-gradient(107deg, rgba(10, 37, 64, 0.85) 0%, rgba(0, 106, 128, 0.75) 100%), url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=2000&q=80') center/cover no-repeat;
            color: white;
            padding: 80px 20px;
            border-radius: 0 0 2rem 2rem;
            margin-bottom: 24px;
        }

        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 3.2rem;
            font-weight: 700;
            line-height: 1.2;
            max-width: 800px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 26px;
            border-radius: 40px;
            font-weight: 600;
            transition: var(--transition);
            cursor: pointer;
            border: none;
            font-size: 0.95rem;
        }

        .btn-primary {
            background: var(--accent);
            color: #042233;
            box-shadow: 0 4px 8px rgba(0, 212, 255, 0.2);
        }

        .btn-primary:hover {
            background: #00c2e8;
            transform: translateY(-2px);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            color: white;
        }

        /* sections */
        .section {
            padding: 56px 0;
        }

        .section-title {
            font-family: 'Poppins', sans-serif;
            font-size: 2rem;
            margin-bottom: 8px;
        }

        .grid {
            display: grid;
            gap: 28px;
        }

        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 20px 12px;
            text-align: center;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid var(--border-light);
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-md);
            border-color: var(--accent);
        }

        .cat-card .icon {
            font-size: 2rem;
            color: var(--accent-dark);
            margin-bottom: 10px;
        }

        /* products */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            border: 1px solid var(--border-light);
            display: flex;
            flex-direction: column;
        }

        .product:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-md);
        }

        .product img {
            width: 100%;
            height: 210px;
            object-fit: cover;
            background: #f0f2f5;
        }

        .product-body {
            padding: 16px;
            flex: 1;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin-top: 8px;
        }

        .price {
            font-weight: 800;
            font-size: 1.2rem;
            color: var(--primary);
        }

        .old-price {
            font-size: 0.8rem;
            text-decoration: line-through;
            color: var(--muted);
            margin-left: 8px;
        }

        .rating {
            color: #f5b042;
            font-size: 0.85rem;
        }

        .product-footer {
            padding: 12px 16px 16px;
            display: flex;
            gap: 12px;
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: none;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
        }

        .add-btn:hover {
            background: #0f2f4a;
        }

        .wish-btn {
            background: var(--surface);
            border: none;
            padding: 0 14px;
            border-radius: 40px;
            cursor: pointer;
        }

        .deal {
            display: flex;
            background: linear-gradient(145deg, #ffffff 0%, #f8fafd 100%);
            border-radius: 2rem;
            overflow: hidden;
            box-shadow: var(--shadow-md);
            border: 1px solid var(--border-light);
        }

        .deal img {
            width: 45%;
            object-fit: cover;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin: 20px 0;
        }

        .time-box {
            background: var(--primary);
            color: white;
            padding: 12px 14px;
            border-radius: 16px;
            text-align: center;
            min-width: 70px;
            font-weight: 700;
        }

        .testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px 20px;
        }

        .testimonial {
            background: var(--card);
            padding: 20px;
            border-radius: 1.5rem;
            min-width: 320px;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-light);
        }

        .newsletter {
            background: linear-gradient(125deg, var(--primary) 0%, #103c58 100%);
            border-radius: 2rem;
            padding: 48px 32px;
            text-align: center;
            color: white;
        }

        .newsletter input {
            padding: 14px 20px;
            border-radius: 60px;
            border: none;
            width: 280px;
            margin-right: 12px;
            font-size: 0.9rem;
        }

        footer {
            background: var(--surface);
            margin-top: 32px;
            padding: 48px 0 24px;
            border-top: 1px solid var(--border-light);
        }

        @media (max-width: 1100px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width: 860px) {
            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .hero h1 {
                font-size: 2.2rem;
            }

            .deal {
                flex-direction: column;
            }

            .deal img {
                width: 100%;
                height: 240px;
            }
        }

        @media (max-width: 600px) {
            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .container {
                padding: 0 16px;
            }
        }

        .badge {
            position: absolute;
            margin: 12px;
            background: var(--success);
            color: white;
            padding: 4px 12px;
            border-radius: 40px;
            font-size: 0.7rem;
            font-weight: 700;
        }

        .deal-discount {
            background: var(--warning);
            padding: 4px 12px;
            border-radius: 40px;
            font-weight: 800;
        }

        [aria-live="polite"] {
            transition: all 0.2s;
        }

        button:disabled {
            opacity: 0.7;
            cursor: default;
        }
    </style>
</head>

<body>

    <header>
        <div class="container header-inner">
            <div style="display: flex; align-items: center; gap: 18px;">
                <button class="mobile-toggle" id="mobileToggleBtn" aria-label="Menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
            </div>

            <nav class="main-nav" id="primaryNav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Flash Sale</a></li>
                    <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
            </nav>

            <div style="display: flex; align-items: center; gap: 16px;">
                <div class="search">
                    <input type="text" id="globalSearch" placeholder="Search products, categories..." aria-label="Search">
                    <button class="icon-btn" id="searchTrigger"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions" style="display: flex; gap: 8px;">
                    <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
                    <a class="cart" href="#" id="cartIcon">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count" id="cartCounter">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- mobile menu drawer -->
        <div id="mobileMenuDrawer" style="display: none; background: white; border-top: 1px solid var(--border-light);">
            <div class="container" style="padding: 20px 0;">
                <ul style="list-style: none; display: flex; flex-direction: column; gap: 12px;">
                    <li><a href="#">🏠 Home</a></li>
                    <li><a href="#categories">📁 Categories</a></li>
                    <li><a href="#products">🔥 Trending</a></li>
                    <li><a href="#deals">🏷️ Deals</a></li>
                    <li><a href="#about">ℹ️ About</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <h1>Your ultimate style & tech destination</h1>
                <p style="max-width: 620px; margin: 20px 0;">Discover curated collections, flash sales, and free express shipping on orders over $99.</p>
                <div style="display: flex; gap: 16px; flex-wrap: wrap;">
                    <button class="btn btn-primary" id="shopNowHero"><i class="fas fa-bag-shopping"></i> Shop Now</button>
                    <button class="btn btn-ghost" id="dealsHeroBtn"><i class="fas fa-clock"></i> Flash Deals</button>
                </div>
            </div>
        </section>

        <section id="categories" class="section container">
            <div class="text-center" style="margin-bottom: 32px;">
                <h2 class="section-title">Shop by Category</h2>
                <p class="muted">Explore our thoughtfully curated departments</p>
            </div>
            <div class="grid categories" id="categoriesContainer"></div>
        </section>

        <section id="products" class="section container">
            <div class="text-center" style="margin-bottom: 32px;">
                <h2 class="section-title">⭐ Trending Now</h2>
                <p class="muted">Best sellers & editor’s picks</p>
            </div>
            <div class="grid products" id="productsContainer"></div>
        </section>

        <section id="deals" class="section container">
            <div class="deal" id="flashDealBlock">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="MacBook Air M2">
                <div class="content" style="padding: 32px;">
                    <h3>🔥 MacBook Air M2 — Midnight</h3>
                    <p class="muted">8-core CPU, 10-core GPU, 512GB SSD. Ultimate portability.</p>
                    <div class="timer">
                        <div class="time-box"><span id="dealDays">0</span><div style="font-size: 11px;">Days</div></div>
                        <div class="time-box"><span id="dealHours">00</span><div>Hours</div></div>
                        <div class="time-box"><span id="dealMinutes">00</span><div>Mins</div></div>
                        <div class="time-box"><span id="dealSeconds">00</span><div>Secs</div></div>
                    </div>
                    <div style="display: flex; align-items: center; gap: 16px; flex-wrap: wrap;">
                        <div><span class="price" style="font-size: 1.8rem;">$999</span> <span class="old-price">$1,299</span></div>
                        <span class="deal-discount">-23% OFF</span>
                    </div>
                    <p style="margin: 16px 0;">⚡ Only <strong id="stockLeft">14</strong> left at this price! </p>
                    <button class="btn btn-primary" id="flashDealBtn"><i class="fas fa-cart-shopping"></i> Grab deal</button>
                </div>
            </div>
        </section>

        <section class="section container">
            <div class="text-center"><h2 class="section-title">❤️ Customer Love</h2><p class="muted">Real voices, real experiences</p></div>
            <div class="testimonials" id="testimonialsList">
                <div class="testimonial"><div class="rating">★★★★★</div><p>"Incredible quality & fast delivery. Will purchase again!"</p><strong>– Elena R.</strong></div>
                <div class="testimonial"><div class="rating">★★★★☆</div><p>"NexusShop has the best customer support. The products are premium."</p><strong>– David K.</strong></div>
                <div class="testimonial"><div class="rating">★★★★★</div><p>"Flash sale prices are unbeatable. I recommend strongly."</p><strong>– Maria S.</strong></div>
            </div>
        </section>

        <section class="section container">
            <div class="newsletter">
                <h3>Join the Inner Circle</h3>
                <p>Get 10% off your first order + exclusive early access to sales</p>
                <form id="newsletterFormMain" style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap; margin-top: 20px;">
                    <input type="email" id="newsEmail" placeholder="Your email address" required>
                    <button type="submit" class="btn btn-primary">Subscribe →</button>
                </form>
                <div id="newsFeedback" style="margin-top: 14px; font-size: 0.8rem;"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
            <div><h4 style="font-weight: 700;">NexusShop</h4><p class="muted">Modern E‑Commerce experience<br />© <span id="currentYear"></span> All rights reserved.</p></div>
            <div><strong>Company</strong><br/>About<br/>Careers<br/>Press</div>
            <div><strong>Help</strong><br/>Support<br/>Returns<br/>FAQs</div>
        </div>
    </footer>

    <script>
        // ------ DATA ------
        const categoriesData = [
            { id: "phones", name: "Smartphones", icon: "fa-mobile-alt" },
            { id: "laptops", name: "Laptops", icon: "fa-laptop" },
            { id: "clothing", name: "Clothing", icon: "fa-tshirt" },
            { id: "gadgets", name: "Gadgets", icon: "fa-headphones" },
            { id: "footwear", name: "Footwear", icon: "fa-shoe-prints" },
            { id: "accessories", name: "Accessories", icon: "fa-watch" }
        ];

        const productsData = [
            { id: 101, title: "iPhone 14 Pro Max", price: 1099, oldPrice: 1249, rating: 5, reviews: 230, badge: "🔥Hot", img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80", category: "Smartphones" },
            { id: 102, title: "MacBook Pro 14\"", price: 1899, oldPrice: 2099, rating: 5, reviews: 112, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80", category: "Laptops" },
            { id: 103, title: "Apple Watch Ultra", price: 749, oldPrice: 799, rating: 4, reviews: 89, badge: "Sale", img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80", category: "Accessories" },
            { id: 104, title: "Nike Air Max 90", price: 129, rating: 4, reviews: 340, img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80", category: "Footwear" },
            { id: 105, title: "Sony WH-1000XM5", price: 379, oldPrice: 449, rating: 5, reviews: 410, img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80", category: "Gadgets" },
            { id: 106, title: "Dyson Supersonic", price: 399, rating: 5, reviews: 98, badge: "⭐Limited", img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80", category: "Accessories" },
            { id: 107, title: "Travel Backpack Pro", price: 89, oldPrice: 129, rating: 4, reviews: 203, img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80", category: "Accessories" },
            { id: 108, title: "Samsung Odyssey G9", price: 1299, rating: 5, reviews: 67, img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80", category: "Gadgets" }
        ];

        let cartItemCount = 0;
        const cartCounterSpan = document.getElementById('cartCounter');
        const productsContainer = document.getElementById('productsContainer');
        const categoriesContainer = document.getElementById('categoriesContainer');
        const searchInput = document.getElementById('globalSearch');

        function renderCategories() {
            categoriesContainer.innerHTML = categoriesData.map(cat => `
                <div class="cat-card" data-cat="${cat.name.toLowerCase()}">
                    <div class="icon"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:12px">shop now</div>
                </div>
            `).join('');
            document.querySelectorAll('.cat-card').forEach(card => {
                card.addEventListener('click', (e) => {
                    const catName = card.getAttribute('data-cat');
                    searchInput.value = catName;
                    filterProductsBySearch(catName);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
                });
            });
        }

        function renderProducts(productList) {
            productsContainer.innerHTML = productList.map(p => `
                <div class="product">
                    ${p.badge ? `<div class="badge">${p.badge}</div>` : ''}
                    <img src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-body">
                        <h5>${p.title}</h5>
                        <div class="muted" style="font-size:12px">${p.category}</div>
                        <div class="price-row">
                            <div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
                            <div class="rating">${'★'.repeat(p.rating)} (${p.reviews})</div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                        <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
                    </div>
                </div>
            `).join('');

            document.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.getAttribute('data-id'));
                    addToCartById(id);
                });
            });
        }

        function addToCartById(productId) {
            const product = productsData.find(p => p.id === productId);
            if (!product) return;
            cartItemCount++;
            cartCounterSpan.innerText = cartItemCount;
            const clickedBtn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (clickedBtn) {
                const original = clickedBtn.innerHTML;
                clickedBtn.innerHTML = '✓ Added';
                clickedBtn.disabled = true;
                setTimeout(() => {
                    clickedBtn.innerHTML = original;
                    clickedBtn.disabled = false;
                }, 1200);
            }
            showToastMessage(`✨ ${product.title} added to cart`);
        }

        function showToastMessage(msg) {
            let toast = document.createElement('div');
            toast.innerText = msg;
            toast.style.position = 'fixed';
            toast.style.bottom = '24px';
            toast.style.left = '24px';
            toast.style.backgroundColor = '#0a2540';
            toast.style.color = 'white';
            toast.style.padding = '12px 20px';
            toast.style.borderRadius = '40px';
            toast.style.zIndex = '1000';
            toast.style.fontWeight = '500';
            toast.style.boxShadow = '0 8px 20px rgba(0,0,0,0.1)';
            document.body.appendChild(toast);
            setTimeout(() => toast.remove(), 2000);
        }

        function filterProductsBySearch(query) {
            const term = query.trim().toLowerCase();
            if (!term) {
                renderProducts(productsData);
                return;
            }
            const filtered = productsData.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
            renderProducts(filtered);
            if(filtered.length === 0) productsContainer.innerHTML = `<div class="text-center" style="grid-column:1/-1">🔍 No products match "${term}"</div>`;
        }

        // event handlers
        document.getElementById('searchTrigger').addEventListener('click', () => filterProductsBySearch(searchInput.value));
        searchInput.addEventListener('keypress', (e) => { if (e.key === 'Enter') filterProductsBySearch(searchInput.value); });

        // mobile menu toggle
        const mobileToggle = document.getElementById('mobileToggleBtn');
        const drawer = document.getElementById('mobileMenuDrawer');
        mobileToggle.addEventListener('click', () => {
            drawer.style.display = drawer.style.display === 'none' || drawer.style.display === '' ? 'block' : 'none';
        });

        // countdown
        function initDealTimer() {
            const targetTime = new Date().getTime() + (25 * 3600 * 1000); // 25h countdown
            const interval = setInterval(() => {
                const now = new Date().getTime();
                const diff = targetTime - now;
                if (diff <= 0) {
                    clearInterval(interval);
                    document.getElementById('dealDays').innerText = '0';
                    document.getElementById('dealHours').innerText = '00';
                    document.getElementById('dealMinutes').innerText = '00';
                    document.getElementById('dealSeconds').innerText = '00';
                    return;
                }
                const days = Math.floor(diff / (1000 * 60 * 60 * 24));
                const hours = Math.floor((diff % (86400000)) / 3600000);
                const mins = Math.floor((diff % 3600000) / 60000);
                const secs = Math.floor((diff % 60000) / 1000);
                document.getElementById('dealDays').innerText = days;
                document.getElementById('dealHours').innerText = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').innerText = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').innerText = String(secs).padStart(2, '0');
            }, 1000);
        }

        // Newsletter handler
        const newsletterForm = document.getElementById('newsletterFormMain');
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsEmail').value.trim();
            const feedback = document.getElementById('newsFeedback');
            if (!email || !email.includes('@')) {
                feedback.innerHTML = '❌ Valid email required.';
                feedback.style.color = '#ffb8b8';
                setTimeout(() => feedback.innerHTML = '', 2000);
                return;
            }
            feedback.innerHTML = '🎉 Subscribed! Check your inbox for 10% off.';
            feedback.style.color = '#c0ffd0';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => feedback.innerHTML = '', 3000);
        });

        // Flash deal button
        document.getElementById('flashDealBtn').addEventListener('click', () => {
            cartItemCount++;
            cartCounterSpan.innerText = cartItemCount;
            showToastMessage('🔥 MacBook Air M2 added to cart');
            let stockSpan = document.getElementById('stockLeft');
            let curr = parseInt(stockSpan.innerText);
            if(curr > 0) stockSpan.innerText = curr - 1;
        });

        document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('dealsHeroBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));

        // update year
        document.getElementById('currentYear').innerText = new Date().getFullYear();

        // initial load
        renderCategories();
        renderProducts(productsData);
        initDealTimer();

        // fix cart count from localStorage? persist demo
        window.addEventListener('load', () => { cartCounterSpan.innerText = cartItemCount; });
    </script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: OAEC
  Date: 2018/1/11
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <c:import url="${ctx}/common/common.jsp"/>
    <title>Catalog (list type view)</title>

    <script>
        $(document).ready(function() {
            $("select").selectBox();
        });
    </script>

    <script>
        $(document).ready(function(){
            $("#myController").jFlow({
                controller: ".control", // must be class, use . sign
                slideWrapper : "#jFlowSlider", // must be id, use # sign
                slides: "#slider",  // the div where all your sliding divs are nested in
                selectedWrapper: "jFlowSelected",  // just pure text, no sign
                width: "984px",  // this is the width for the content-slider
                height: "480px",  // this is the height for the content-slider
                duration: 400,  // time in miliseconds to transition one slide
                prev: ".slidprev", // must be class, use . sign
                next: ".slidnext", // must be class, use . sign
                auto: true
            });
        });
    </script>
    <script>
        $(function() {
            $('#list_product').carouFredSel({
                prev: '#prev_c1',
                next: '#next_c1',
                auto: false
            });
            $('#list_product2').carouFredSel({
                prev: '#prev_c2',
                next: '#next_c2',
                auto: false
            });
            $(window).resize();
        });
    </script>
    <script>
        $(document).ready(function(){
            $("button").click(function(){
                $(this).addClass('click')
            });
        })
    </script>

</head>
<body>
<div class="container_12">
    <div id="top">
        <div class="grid_3">
            <div class="phone_top">
                Call Us +777 (100) 1234
            </div><!-- .phone_top -->
        </div><!-- .grid_3 -->

        <div class="grid_6">
            <div class="welcome">
                Welcome visitor you can <a href="login.html">login</a> or <a href="login.html">create an account</a>.
            </div><!-- .welcome -->
        </div><!-- .grid_6 -->

        <div class="grid_3">
            <div class="valuta">
                <ul>
                    <li class="curent"><a href="#">$</a></li>
                    <li><a href="#">&#8364;</a></li>
                    <li><a href="#">&#163;</a></li>
                </ul>
            </div><!-- .valuta -->

            <div class="lang">
                <ul>
                    <li class="curent"><a href="#">EN</a></li>
                    <li><a href="#">FR</a></li>
                    <li><a href="#">GM</a></li>
                </ul>
            </div><!-- .lang -->
        </div><!-- .grid_3 -->
    </div><!-- #top -->

    <div class="clear"></div>

    <header id="branding">
        <div class="grid_3">
            <hgroup>
                <h1 id="site_logo"><a href="index.html" title=""><img src="images/logo.png" alt="Online Store Theme Logo"/></a></h1>
                <h2 id="site_description">Online Store Theme</h2>
            </hgroup>
        </div><!-- .grid_3 -->

        <div class="grid_3">
            <form class="search">
                <input type="text" name="search" class="entry_form" value="" placeholder="Search entire store here..."/>
            </form>
        </div><!-- .grid_3 -->

        <div class="grid_6">
            <ul id="cart_nav">
                <li>
                    <a class="cart_li" href="#">Cart <span>$0.00</span></a>
                    <ul class="cart_cont">
                        <li class="no_border"><p>Recently added item(s)</p></li>
                        <li>
                            <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="images/cart_img.png" alt="" title="" /></div></a>
                            <div class="cont_cart">
                                <h4>Caldrea Linen and Room Spray</h4>
                                <div class="price">1 x $399.00</div>
                            </div>
                            <a title="close" class="close" href="#"></a>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="images/produkt_slid1.png" alt="" title="" /></div></a>
                            <div class="cont_cart">
                                <h4>Caldrea Linen and Room Spray</h4>
                                <div class="price">1 x $399.00</div>
                            </div>
                            <a title="close" class="close" href="#"></a>
                            <div class="clear"></div>
                        </li>
                        <li class="no_border">
                            <a href="shopping_cart.html" class="view_cart">View shopping cart</a>
                            <a href="checkout.html" class="checkout">Procced to Checkout</a>
                        </li>
                    </ul>
                </li>
            </ul>

            <nav class="private">
                <ul>
                    <li><a href="#">My Account</a></li>
                    <li class="separator">|</li>
                    <li><a href="#">My Wishlist</a></li>
                    <li class="separator">|</li>
                    <li><a href="login.html">Log In</a></li>
                    <li class="separator">|</li>
                    <li><a href="login.html">Sign Up</a></li>
                </ul>
            </nav><!-- .private -->
        </div><!-- .grid_6 -->
    </header><!-- #branding -->
</div><!-- .container_12 -->

<div class="clear"></div>

<div id="block_nav_primary">
    <div class="container_12">
        <div class="grid_12">
            <nav class="primary">
                <ul>
                    <li class="curent"><a href="index.html">Home</a></li>
                    <li><a href="catalog_grid.html">Solids</a></li>
                    <li><a href="catalog_grid.html">Liquids</a></li>
                    <li>
                        <a href="catalog_grid.html">Spray</a>
                        <ul class="sub">
                            <li><a href="catalog_grid.html">For home</a></li>
                            <li><a href="catalog_grid.html">For Garden</a></li>
                            <li><a href="catalog_grid.html">For Car</a></li>
                            <li><a href="catalog_grid.html">Other spray</a></li>
                        </ul>
                    </li>
                    <li><a href="catalog_grid.html">Electric</a></li>
                    <li><a href="catalog_grid.html">For cars</a></li>
                    <li>
                        <a href="#">All pages</a>
                        <ul class="sub">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="text_page.html">Typography and basic styles</a></li>
                            <li><a href="catalog_grid.html">Catalog (grid view)</a></li>
                            <li><a href="catalog_list.html">Catalog (list type view)</a></li>
                            <li><a href="product_page.html">Product view</a></li>
                            <li><a href="shopping_cart.html">Shoping cart</a></li>
                            <li><a href="checkout.html">Proceed to checkout</a></li>
                            <li><a href="compare.html">Products comparison</a></li>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="contact_us.html">Contact us</a></li>
                            <li><a href="404.html">404</a></li>
                            <li><a href="blog.html">Blog posts</a></li>
                            <li><a href="blog_post.html">Blog post view</a></li>
                        </ul>
                    </li>
                </ul>
            </nav><!-- .primary -->
        </div><!-- .grid_12 -->
    </div><!-- .container_12 -->
</div><!-- .block_nav_primary -->

<div class="clear"></div>

<div class="container_12">
    <div class="grid_12">
        <div class="breadcrumbs">
            <a href="index.html">Home</a><span>&#8250;</span><a href="#">Category</a><span>&#8250;</span><span class="current">This page</span>
        </div><!-- .breadcrumbs -->
    </div><!-- .grid_12 -->
</div><!-- .container_12 -->

<div class="clear"></div>

<section id="main">
    <div class="container_12">
        <div id="sidebar" class="grid_3">
            <aside id="categories_nav">
                <h3>Categories</h3>

                <nav class="left_menu">
                    <ul>
                        <li><a href="#">Solids <span>(21)</span></a></li>
                        <li><a href="#">Liquids <span> (27)</span></a></li>
                        <li><a href="#">Spray <span>(33)</span></a></li>
                        <li><a href="#">Electric <span>(17)</span></a></li>
                        <li><a href="#">For Cars <span>(23)</span></a></li>
                        <li><a href="#">For Room <span>(7)</span></a></li>
                        <li class="last"><a href="#">Other <span>(135)</span></a></li>
                    </ul>
                </nav><!-- .left_menu -->
            </aside><!-- #categories_nav -->

            <aside id="shop_by">
                <h3>Shop By</h3>

                <div class="currently_shopping">
                    <p>Currently Shopping by:</p>
                    <ul>
                        <li><a title="close" class="close" href="#"></a>Price: <span>$0.00 - $999.99</span></li>
                        <li><a title="close" class="close" href="#"></a>Manufacturer: <span>Apple</span></li>
                    </ul>

                    <a class="clear_all" href="#">Clear All</a>

                    <div class="clear"></div>
                </div><!-- .currently_shopping -->

                <h4>Category</h4>

                <form action="#" class="check_opt">
                    <p><input class="niceCheck" type="checkbox" >For Home (23)</p>
                    <p><input class="niceCheck" type="checkbox" name="" value="">For Car (27)</p>
                    <p><input class="niceCheck" type="checkbox" name="" value="">For Office (9)</p>
                </form>

                <h4>Price</h4>

                <form action="#" class="check_opt">
                    <p><input class="niceCheck" type="checkbox" name="" value="">0.00 - $49.99 (21)</p>
                    <p><input class="niceCheck" type="checkbox" name="" value="">$50.00 - $99.99 (7)</p>
                    <p><input class="niceCheck" type="checkbox" name="" value="">0$100.00 and above (15)</p>
                </form>
            </aside><!-- #shop_by -->

            <aside id="specials" class="specials">
                <h3>Specials</h3>

                <ul>
                    <li>
                        <div class="prev">
                            <a href="product_page.html"><img src="images/special1.png" alt="" title="" /></a>
                        </div>

                        <div class="cont">
                            <a href="product_page.html">Honeysuckle Flameless Luminary Refill</a>
                            <div class="prise"><span class="old">$177.00</span>$75.00</div>
                        </div>
                    </li>

                    <li>
                        <div class="prev">
                            <a href="product_page.html"><img src="images/special2.png" alt="" title="" /></a>
                        </div>

                        <div class="cont">
                            <a href="product_page.html">Honeysuckle Flameless Luminary Refill</a>
                            <div class="prise"><span class="old">$177.00</span>$75.00</div>
                        </div>
                    </li>
                </ul>
            </aside><!-- #specials -->

            <aside id="newsletter_signup">
                <h3>Newsletter Signup</h3>
                <p>Phasellus vel ultricies felis. Duis
                    rhoncus risus eu urna pretium.</p>

                <form class="newsletter">
                    <input type="email" name="newsletter" class="your_email" value="" placeholder="Enter your email address..."/>
                    <input type="submit" id="submit" value="Subscribe" />
                </form>
            </aside><!-- #newsletter_signup -->
        </div><!-- .sidebar -->

        <div id="content" class="grid_9">
            <h1 class="page_title">Product List</h1>

            <div class="options">
                <div class="grid-list">
                    <a class="grid" href="catalog_grid.html"><span>img</span></a>
                    <a class="list curent" href="index.html"><span>img</span></a>
                </div><!-- .grid-list -->

                <div class="show">
                    Show
                    <select>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                    </select>

                    per page
                </div><!-- .show -->

                <div class="sort">
                    Sort By
                    <select>
                        <option>Position</option>
                        <option>Price</option>
                        <option>Rating</option>
                        <option>Name</option>
                    </select>

                    <a class="sort_up" href="#">&#8593;</a>
                </div><!-- .sort -->
            </div><!-- .options -->

            <div class="listing_product">
                <div class="product_li">
                    <div class="grid_3">
                        <img class="sale" src="images/new.png" alt="New"/>
                        <div class="prev">
                            <a href="product_page.html"><img src="images/product_1.png" alt="" title="" /></a>
                        </div><!-- .prev -->
                    </div><!-- .grid_3 -->

                    <div class="grid_4">
                        <div class="entry_content">
                            <a href="product_page.html"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
                            <div class="review">
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a href="#"></a>
                                <a href="#"></a>
                                <span>1 REVIEW(S)</span>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
                            <a class="more" href="product_page.html">Learn More</a>
                        </div><!-- .entry_content -->
                    </div><!-- .grid_4 -->

                    <div class="grid_2">
                        <div class="cart">
                            <div class="price">
                                <div class="price_new">$550.00</div>
                                <div class="price_old">$725.00</div>
                            </div>
                            <a href="#" class="bay">Add to Cart</a>
                            <a href="#" class="obn"></a>
                            <a href="#" class="like"></a>
                        </div><!-- .cart -->
                    </div><!-- .grid_2 -->

                    <div class="clear"></div>
                </div><!-- .article -->

                <div class="product_li">
                    <div class="grid_3">
                        <img class="sale" src="images/sale.png" alt="Sale"/>
                        <div class="prev">
                            <a href="product_page.html"><img src="images/product_2.png" alt="" title="" /></a>
                        </div><!-- .prev -->
                    </div><!-- .grid_3 -->

                    <div class="grid_4">
                        <div class="entry_content">
                            <a href="product_page.html"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
                            <div class="review">
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a href="#"></a>
                                <a href="#"></a>
                                <span>1 REVIEW(S)</span>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
                            <a class="more" href="product_page.html">Learn More</a>
                        </div><!-- .entry_content -->
                    </div><!-- .grid_4 -->

                    <div class="grid_2">
                        <div class="cart">
                            <div class="price">
                                <div class="price_new">$550.00</div>
                            </div>
                            <a href="#" class="bay">Add to Cart</a>
                            <a href="#" class="obn"></a>
                            <a href="#" class="like"></a>
                        </div><!-- .cart -->
                    </div><!-- .grid_2 -->

                    <div class="clear"></div>
                </div><!-- .article -->

                <div class="product_li">
                    <div class="grid_3">
                        <img class="sale" src="images/top.png" alt="Top"/>
                        <div class="prev">
                            <a href="product_page.html"><img src="images/product_3.png" alt="" title="" /></a>
                        </div><!-- .prev -->
                    </div><!-- .grid_3 -->

                    <div class="grid_4">
                        <div class="entry_content">
                            <a href="product_page.html"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
                            <div class="review">
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a href="#"></a>
                                <a href="#"></a>
                                <span>1 REVIEW(S)</span>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
                            <a class="more" href="product_page.html">Learn More</a>
                        </div><!-- .entry_content -->
                    </div><!-- .grid_4 -->

                    <div class="grid_2">
                        <div class="cart">
                            <div class="price">
                                <div class="price_new">$550.00</div>
                                <div class="price_old">$725.00</div>
                            </div>
                            <a href="#" class="bay">Add to Cart</a>
                            <a href="#" class="obn"></a>
                            <a href="#" class="like"></a>
                        </div><!-- .cart -->
                    </div><!-- .grid_2 -->

                    <div class="clear"></div>
                </div><!-- .article -->

                <div class="product_li">
                    <div class="grid_3">
                        <div class="prev">
                            <a href="product_page.html"><img src="images/product_4.png" alt="" title="" /></a>
                        </div><!-- .prev -->
                    </div><!-- .grid_3 -->

                    <div class="grid_4">
                        <div class="entry_content">
                            <a href="product_page.html"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
                            <div class="review">
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a href="#"></a>
                                <a href="#"></a>
                                <span>1 REVIEW(S)</span>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
                            <a class="more" href="product_page.html">Learn More</a>
                        </div><!-- .entry_content -->
                    </div><!-- .grid_4 -->

                    <div class="grid_2">
                        <div class="cart">
                            <div class="price">
                                <div class="price_new">$550.00</div>
                                <div class="price_old">$725.00</div>
                            </div>
                            <a href="#" class="bay">Add to Cart</a>
                            <a href="#" class="obn"></a>
                            <a href="#" class="like"></a>
                        </div><!-- .cart -->
                    </div><!-- .grid_2 -->

                    <div class="clear"></div>
                </div><!-- .article -->

                <div class="product_li">
                    <div class="grid_3">
                        <img class="sale" src="images/new.png" alt="New"/>
                        <div class="prev">
                            <a href="product_page.html"><img src="images/product_5.png" alt="" title="" /></a>
                        </div><!-- .prev -->
                    </div><!-- .grid_3 -->

                    <div class="grid_4">
                        <div class="entry_content">
                            <a href="product_page.html"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
                            <div class="review">
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a href="#"></a>
                                <a href="#"></a>
                                <span>1 REVIEW(S)</span>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
                            <a class="more" href="product_page.html">Learn More</a>
                        </div><!-- .entry_content -->
                    </div><!-- .grid_4 -->

                    <div class="grid_2">
                        <div class="cart">
                            <div class="price">
                                <div class="price_new">$550.00</div>
                                <div class="price_old">$725.00</div>
                            </div>
                            <a href="#" class="bay">Add to Cart</a>
                            <a href="#" class="obn"></a>
                            <a href="#" class="like"></a>
                        </div><!-- .cart -->
                    </div><!-- .grid_2 -->

                    <div class="clear"></div>
                </div><!-- .article -->

                <div class="product_li">
                    <div class="grid_3">
                        <div class="prev">
                            <a href="product_page.html"><img src="images/product_6.png" alt="" title="" /></a>
                        </div><!-- .prev -->
                    </div><!-- .grid_3 -->

                    <div class="grid_4">
                        <div class="entry_content">
                            <a href="product_page.html"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
                            <div class="review">
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a class="plus" href="#"></a>
                                <a href="#"></a>
                                <a href="#"></a>
                                <span>1 REVIEW(S)</span>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
                            <a class="more" href="product_page.html">Learn More</a>
                        </div><!-- .entry_content -->
                    </div><!-- .grid_4 -->

                    <div class="grid_2">
                        <div class="cart">
                            <div class="price">
                                <div class="price_new">$550.00</div>
                                <div class="price_old">$725.00</div>
                            </div>
                            <a href="#" class="bay">Add to Cart</a>
                            <a href="#" class="obn"></a>
                            <a href="#" class="like"></a>
                        </div><!-- .cart -->
                    </div><!-- .grid_2 -->

                    <div class="clear"></div>
                </div><!-- .article -->

                <div class="clear"></div>
            </div><!-- .listing_product -->

            <div class="clear"></div>

            <div class="pagination">
                <ul>
                    <li class="prev"><span>&#8592;</span></li>
                    <li class="curent"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><span>...</span></li>
                    <li><a href="#">100</a></li>
                    <li class="next"><a href="#">&#8594;</a></li>
                </ul>
            </div><!-- .pagination -->
            <p class="pagination_info">Displaying 1 to 12 (of 100 products)</p>
        </div><!-- #content -->

        <div class="clear"></div>

    </div><!-- .container_12 -->
</section><!-- #main -->

<div class="clear"></div>

<footer>
    <div class="f_navigation">
        <div class="container_12">
            <div class="grid_3">
                <h3>Contact Us</h3>
                <ul class="f_contact">
                    <li>49 Archdale, 2B Charlestone</li>
                    <li>+777 (100) 1234</li>
                    <li>mail@example.com</li>
                </ul><!-- .f_contact -->
            </div><!-- .grid_3 -->

            <div class="grid_3">
                <h3>Information</h3>
                <nav class="f_menu">
                    <ul>
                        <li><a href="#">About As</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms & Conditions</a></li>
                        <li><a href="#">Secure payment</a></li>
                    </ul>
                </nav><!-- .private -->
            </div><!-- .grid_3 -->

            <div class="grid_3">
                <h3>Costumer Servise</h3>
                <nav class="f_menu">
                    <ul>
                        <li><a href="contact_us.html">Contact As</a></li>
                        <li><a href="#">Return</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Site Map</a></li>
                    </ul>
                </nav><!-- .private -->
            </div><!-- .grid_3 -->

            <div class="grid_3">
                <h3>My Account</h3>
                <nav class="f_menu">
                    <ul>
                        <li><a href="#">My Account</a></li>
                        <li><a href="#">Order History</a></li>
                        <li><a href="#">Wish List</a></li>
                        <li><a href="#">Newsletter</a></li>
                    </ul>
                </nav><!-- .private -->
            </div><!-- .grid_3 -->

            <div class="clear"></div>
        </div><!-- .container_12 -->
    </div><!-- .f_navigation -->

    <div class="f_info">
        <div class="container_12">
            <div class="grid_6">
                <p class="copyright">© Breeze Store Theme, 2013. Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></p>
            </div><!-- .grid_6 -->

            <div class="grid_6">
                <div class="soc">
                    <a class="google" href="#"></a>
                    <a class="twitter" href="#"></a>
                    <a class="facebook" href="#"></a>
                </div><!-- .soc -->
            </div><!-- .grid_6 -->

            <div class="clear"></div>
        </div><!-- .container_12 -->
    </div><!-- .f_info -->
</footer>

</body>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
</html>
<ul class="navbar-nav attr-nav align-items-center">
    <li><a href="javascript:void(0);" class="nav-link search_trigger"><i class="linearicons-magnifier"></i></a>
        <div class="search_wrap">
            <span class="close-search"><i class="ion-ios-close-empty"></i></span>
            <form>
                <input type="text" placeholder="Search" class="form-control" id="search_input">
                <button type="submit" class="search_icon"><i class="ion-ios-search-strong"></i></button>
            </form>
        </div><div class="search_overlay"></div>
    </li>
    <li class="dropdown cart_dropdown"><a class="nav-link cart_trigger" href="#" data-bs-toggle="dropdown"><i class="linearicons-cart"></i><span id="count_cart" class="cart_count">0</span></a>
        {{-- <div class="cart_box dropdown-menu dropdown-menu-right d-none">
            <ul class="cart_list">
                <li>
                    <a href="#" class="item_remove"><i class="ion-close"></i></a>
                    <a href="#"><img src="assets/images/cart_thamb1.jpg" alt="cart_thumb1">Variable product 001</a>
                    <span class="cart_quantity"> 1 x <span class="cart_amount"> <span class="price_symbole">$</span></span>78.00</span>
                </li>
               
            </ul>
            <div class="cart_footer">
                <p class="cart_total"><strong>Subtotal:</strong> <span class="cart_price"> <span class="price_symbole">$</span></span>159.00</p>
                <p class="cart_buttons"><a href="{{url('/cartPage')}}" class="btn btn-fill-line rounded-0 view-cart">View Cart</a><a href="#" class="btn btn-fill-out rounded-0 checkout">Checkout</a></p>
            </div>
        </div> --}}
    </li>
</ul>

 <script>

    updateCartCount();

    async function updateCartCount() {
        try {
            let response = await axios.get('/count-cart-product');
            let cartCount = response.data['count'];
            
            // Update the cart count in elements across the website
            $(".cart_count").text(cartCount);
            //$("#count_cart").text(cartCount);
            // Add more selectors as needed

            

        } catch (error) {
            console.error('Error updating cart count:', error);
        }
    }

    

</script> 
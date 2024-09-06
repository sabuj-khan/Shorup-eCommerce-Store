<div class="section">
	<div class="container">
		<div class="row">
            <div class="col-lg-6 col-md-6 mb-4 mb-md-0">
              <div class="product-image">
                    <div class="product_img_box">
                        <img id="product_img" class="w-100" src='' />
                        
                    </div>

                

                    <div id="pr_item_gallery" class="product_gallery_item slick_slider" data-slides-to-show="4" data-slides-to-scroll="1" data-infinite="false">
                        <div class="item">
                            <img id="img1" src="assets/images/product_small_img1.jpg" alt="product_small_img1" />
                        </div>
                        <div class="item">
                            <img id="img2" src="assets/images/product_small_img2.jpg" alt="product_small_img2" />
                        </div>
                        <div class="item">
                            <img id="img3" src="assets/images/product_small_img3.jpg" alt="product_small_img3" />
                        </div>
                        <div class="item">
                            <img id="img4" src="assets/images/product_small_img4.jpg" alt="product_small_img4" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="pr_detail">
                    <div class="product_description">

                        <h4 id="p_title" class="product_title"></h4>

                        <div class="product_price">
                            <span class="price">BT. </span> <span class="price" id="p_price"></span>
                            
                        </div>
                        
                        <div class="pr_desc">
                            <p id="p_des"></p>
                        </div>
                        
                        <div>
                            <label class="form-label">Size</label>
                            <select id="p_size" class="form-select">
                            </select>
                        </div>
    
                        <div class="mt-4">
                            <label class="form-label">Color</label>
                            <select id="p_color" class="form-select">  
                                
                            </select>
                        </div>
                        <hr />

                    <div class="cart_extra">
                        <div class="cart-product-quantity">
                            <div class="quantity">
                                <input type="button" value="-" class="minus">
                                <input id="p_qty" type="number" name="quantity" value="0" title="Qty" class="qty" size="4">
                                <input type="button" value="+" class="plus">
                            </div>
                        </div>
                        <div class="cart_btn">
                            <button onclick="addToCartList()" class="btn btn-fill-out btn-addtocart" type="button"><i class="icon-basket-loaded"></i> Add to cart</button>
                            
                            <a onclick="addToWishList()" class="add_wishlist" href="#"><i class="icon-heart"></i></a>
                        </div>
                    </div>
                    <hr />
                    <ul class="product-meta" id="detCategory">
                        <li>Category: <a id="categoryD" href="">Clothing</a></li>
                        
                    </ul>
                     {{--
                    <div><span>Category: </span> <a href="#"><span id="categoryD"></span></a> </div> --}}
                    {{-- <span id="categoryD"></span> --}}
                 
                </div>
            </div>
        </div>
       
        <div class="row">
        	<div class="col-12">
            	<div class="small_divider"></div>
            	<div class="divider"></div>
                <div class="medium_divider"></div>
            </div>
        </div>
        
    </div>
</div>

<script>

    getProductDetails();

    async function getProductDetails(){
        let urlParams = new URLSearchParams(window.location.search);
        let id = urlParams.get('id');

        let response = await axios.get('/product-details/'+id);
        $(".preloader").delay(700).fadeOut(700).addClass('loaded');

        document.getElementById('product_img').src = response.data['data']['product']['image']
        document.getElementById('img1').src = response.data['data']['image1']
        document.getElementById('img2').src = response.data['data']['image2']
        document.getElementById('img3').src = response.data['data']['image3']
        document.getElementById('img4').src = response.data['data']['image4']

        document.getElementById('p_title').innerText = response.data['data']['product']['title']
        document.getElementById('p_price').innerText = response.data['data']['product']['price']
        document.getElementById('p_des').innerText = response.data['data']['description']
        document.getElementById('categoryD').innerText = response.data['data']['product']['category']['category_name']

        let size = response.data['data']['size'].split(',');
        let color = response.data['data']['color'].split(',');

        let sizeOption = `<option value=''>Select Size</option>`;
        $("#p_size").append(sizeOption);
        size.forEach(item => {
            let optionSize = `<option value='${item}'>${item}</option>`
            $("#p_size").append(optionSize);
        });

        let colorOption = `<option value=''>Select Color</option>`;
        $("#p_color").append(colorOption);
        color.forEach(item => {
            let optionColor = `<option value='${item}'>${item}</option>`
            $("#p_color").append(optionColor);
        });

        $("#img1").on('click', function(){
            $("#product_img").attr('src', response.data['data']['image1']);
        });
        $("#img2").on('click', function(){
            $("#product_img").attr('src', response.data['data']['image2']);
        });
        $("#img3").on('click', function(){
            $("#product_img").attr('src', response.data['data']['image3']);
        });
        $("#img4").on('click', function(){
            $("#product_img").attr('src', response.data['data']['image4']);
        });

        // Quantity calculation 

        // $('.plus').on('click', function() {
        //     if ($(this).prev().val()) {
        //         $(this).prev().val(+$(this).prev().val() + 1);
        //     }
        // });

        $('.plus').on('click', function() {
            var currentValue = parseInt($(this).prev().val(), 10) || 0;
            $(this).prev().val(currentValue + 1);
        });

        // $('.minus').on('click', function() {
        //     if ($(this).next().val() > 1) {
        //         if ($(this).next().val() > 1) $(this).next().val(+$(this).next().val() - 1);
        //     }
        // });

        $('.minus').on('click', function() {
            if ($(this).next().val() > 1) {
                $(this).next().val(+$(this).next().val() - 1);
            }
        });

    
        // $('.plus').on('click', function() {
        //     if ($(this).prev().val()) {
        //         $(this).prev().val(parseInt($(this).prev().val()) + 1);
        //     }
        // });


    }


    async function addToWishList(){

        let urlParams = new URLSearchParams(window.location.search);
        let id = urlParams.get('id');


        let response = await axios.get("/create-wish-list/"+id);
        $(".preloader").delay(90).fadeOut(100).addClass('loaded');

        if(response.status===201 && response.data['status']==='success'){
            successToast("Request Successful")
        }else{
            sessionStorage.setItem("last_location",window.location.href)
            window.location.href="/userLogin"
        }

    }


    async function addToCartList(){
        let urlParams = new URLSearchParams(window.location.search);
        let id = urlParams.get('id');

        
        let p_size = document.getElementById("p_size").value;
        let p_color = document.getElementById("p_color").value;
        let p_qty = document.getElementById("p_qty").value;

        
        if(p_size.length === 0){
            errorToast("Size is required");
        }else if(p_color.length === 0){
            errorToast("Color is required");
        }else if(p_qty === "0"){
            errorToast("Quantity is required");
        }else{
            let cartData = {
                "product_id":id,
                "color":p_color,
                "size":p_size,
                "qty":p_qty
                }

            $(".preloader").delay(90).fadeOut(100).removeClass('loaded');
            let response = await axios.post('/create-cart-list', cartData);
            $(".preloader").delay(90).fadeOut(100).addClass('loaded');

            if(response.status === 201 && response.data['status'] === 'success'){
                //await updateCartCount();
                
                successToast(response.data['message']);

            }else{
                sessionStorage.setItem("last_location",window.location.href)
                window.location.href = "/userLogin"

                //('Request fail')
            }

        }

    }



</script>

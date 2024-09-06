<!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1>Brand: <span id="BrandName"></span></h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item active">This Page</li>
                </ol>
            </div>
        </div>
    </div><!-- END CONTAINER-->
</div>
<!-- END SECTION BREADCRUMB -->
<!-- START SECTION SHOP -->
<div class="section">
	<div class="container">
    	<div class="row">
			<div class="col-12">
            	<div class="row shop_container" id="brandListById">

                    
                 
        	    </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION SHOP -->


<script>

    getBrandProduct();

    async function getBrandProduct(){
        let urlParams = new URLSearchParams(window.location.search);
        let id = urlParams.get('id');

        let response = await axios.get('/product-by-brand/'+id);
        $(".preloader").delay(700).fadeOut(700).addClass('loaded');

        $("#brandListById").empty();

        response.data['data'].forEach((item, index) => {
            let singleCat = `<div class="col-lg-3 col-md-4 col-6">
                        <div class="product">
                            <div class="product_img">
                                <a href="/detailProduct?id=${item['id']}">
                                    <img src="${item['image']}" alt="product_img1">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        
                                        <li><a href="/detailProduct?id=${item['id']}" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="/detailProduct?id=${item['id']}">${item['title']}</a></h6>
                                <div class="product_price">
                                    <span class="price">BT ${item['price']}</span>
                                    <del>$55.25</del>
                                    <div class="on_sale">
                                        <span>35% Off</span>
                                    </div>
                                </div>
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:${item['star']}%"></div>
                                    </div>
                                    <span class="rating_num">(21)</span>
                                </div>
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                <div class="pr_switch_wrap">
                                    <div class="product_color_switch">
                                        <span class="active" data-color="#87554B"></span>
                                        <span data-color="#333333"></span>
                                        <span data-color="#DA323F"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`

                    $("#brandListById").append(singleCat);
                    $("#BrandName").text(response.data['data'][0]['brand']['brand_name']);
        });

    }


</script>


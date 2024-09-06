<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1>Wish List Products <span id="wishName"></span></h1>
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

<div class="section">
	<div class="container">
    	<div class="row">
			<div class="col-12">
            	<div class="row shop_container" id="wishListProduct">

                    
                 
        	    </div>
            </div>
        </div>
    </div>
</div>


<script>

getWishLishProducts();

async function getWishLishProducts(){
    let response = await axios.get('/product-wish-list');
    $(".preloader").delay(700).fadeOut(700).addClass('loaded');

    $("#wishListProduct").empty();

    response.data['count'].forEach((item, index) => {
        let singleCat = `<div class="col-lg-3 col-md-4 col-6">
                    <div class="product">
                        <div class="product_img">
                            <a href="/detailProduct?id=${item['product_id']}">
                                <img src="${item['product']['image']}" alt="product_img1">
                            </a>
                            <div class="product_action_box">
                                <ul class="list_none pr_action_btn">
                                    
                                    <li><a href="/detailProduct?id=${item['product_id']}" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="product_info">
                            <h6 class="product_title"><a href="/detailProduct?id=${item['product_id']}">${item['product']['title']}</a></h6>
                            <div class="product_price">
                                <span class="price">BT ${item['product']['price']}</span>
                                <del>$55.25</del>
                                <div class="on_sale">
                                    <span>35% Off</span>
                                </div>
                            </div>
                            <div class="rating_wrap">
                                <div class="rating">
                                    <div class="product_rate" style="width:${item['product']['star']}%"></div>
                                </div>
                                <span class="rating_num">(21)</span>
                            </div>
                            <div class="pr_desc">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                            </div>
                           
                            <button class="btn btn-danger btn-sm mt-1 removeWPr" data-id="${item['product']['id']}">Remove</button>
                            
                            
                        </div>
                    </div>
                </div>`

                $("#wishListProduct").append(singleCat);
    });

    $(".removeWPr").on('click', function(){
            let id = $(this).data('id');
            removeProductFromWishlist(id);
        });

}

async function removeProductFromWishlist(id){
        let response = await axios.get("/delete-wish-list/"+id);

        if(response.status === 201 && response.data['status'] === 'success'){
            successToast('Product successfully deleted')
            await getWishLishProducts();
        }else{
            errorToast("Request Fail");
        }
}


</script>
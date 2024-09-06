<div class="section small_pt pb_70">
	<div class="container">

		<div class="row justify-content-center">
			<div class="col-md-6">
            	<div class="heading_s1 text-center">
                	<h2>Exclusive Products</h2>
                </div>
            </div>
		</div>

        <div class="row">
        	<div class="col-12">
            	<div class="tab-style1">
                    <ul class="nav nav-tabs justify-content-center" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="popular-tab" data-bs-toggle="tab" href="#popular" role="tab" aria-controls="popular" aria-selected="true">Popular</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="newArrival-tab" data-bs-toggle="tab" href="#newArrival" role="tab" aria-controls="newArrival" aria-selected="false">New Arrival</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="topItem-tab" data-bs-toggle="tab" href="#topItem" role="tab" aria-controls="topItem" aria-selected="false">Top</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="special-tab" data-bs-toggle="tab" href="#special" role="tab" aria-controls="special" aria-selected="false">Special</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="trending-tab" data-bs-toggle="tab" href="#trending" role="tab" aria-controls="trending" aria-selected="false">Trending
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="tab-content">

                    <div class="tab-pane fade show active" id="popular" role="tabpanel" aria-labelledby="popular-tab">
                        <div class="row shop_container" id="popularProduct">
                            
                           
                        </div>
                    </div>

                	<div class="tab-pane fade show" id="newArrival" role="tabpanel" aria-labelledby="newArrival-tab">
                        <div class="row shop_container" id="newProduct">
                            
                           
                        </div>
                    </div>
                    
                    <div class="tab-pane fade" id="topItem" role="tabpanel" aria-labelledby="topItem-tab">
                        <div class="row shop_container" id="topProduct">
                            
                          
                        </div>
                    </div>
                    <div class="tab-pane fade" id="special" role="tabpanel" aria-labelledby="special-tab">
                        <div class="row shop_container" id="spacialProduct">
                            
                           
                        </div>
                    </div>
                    <div class="tab-pane fade" id="trending" role="tabpanel" aria-labelledby="trending-tab">
                        <div class="row shop_container" id="trendingProduct">
                            
                            
                        </div>
                    </div>

                </div>
            </div>
        </div> 

    </div>
</div>

<script>

    getPopularProducts();
    async function getPopularProducts(){
        let response = await axios.get('/product-by-remark/popular');
        $("#popularProduct").empty();

        response.data['data'].forEach((item, index) => {
            let singleItem = `<div class="col-lg-3 col-md-4 col-6">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="/detailProduct?id=${item['id']}">
                                            <img src="${item['image']}">
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
                                            
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:${item['star']}%"></div>
                                            </div>
                                            <span class="rating_num">(2)</span>
                                        </div>
                                        <div class="pr_desc">
                                            <p>${item['short_des']}</p>
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>`

                            $("#popularProduct").append(singleItem);
        });
    }

    getNewProducts();
    async function getNewProducts(){
        let response = await axios.get('/product-by-remark/new');
        $("#newProduct").empty();

        response.data['data'].forEach((item, index) => {
            let singleItem = `<div class="col-lg-3 col-md-4 col-6">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="/detailProduct?id=${item['id']}">
                                            <img src="${item['image']}">
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
                                            
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:${item['star']}%"></div>
                                            </div>
                                            <span class="rating_num">(21)</span>
                                        </div>
                                        <div class="pr_desc">
                                            <p>${item['short_des']}.</p>
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>`

                            $("#newProduct").append(singleItem);
        });
    }

    getTopProducts();
    async function getTopProducts(){
        let response = await axios.get('/product-by-remark/top');
        $("#topProduct").empty();

        response.data['data'].forEach((item, index) => {
            let singleItem = `<div class="col-lg-3 col-md-4 col-6">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="/detailProduct?id=${item['id']}">
                                            <img src="${item['image']}">
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
                                            
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:${item['star']}%"></div>
                                            </div>
                                            <span class="rating_num">(21)</span>
                                        </div>
                                        <div class="pr_desc">
                                            <p>${item['short_des']}.</p>
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>`

                            $("#topProduct").append(singleItem);
        });
    }

    getSpecialProducts();
    async function getSpecialProducts(){
        let response = await axios.get('/product-by-remark/special');
        $("#spacialProduct").empty();

        response.data['data'].forEach((item, index) => {
            let singleItem = `<div class="col-lg-3 col-md-4 col-6">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="/detailProduct?id=${item['id']}">
                                            <img src="${item['image']}">
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
                                            
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:${item['star']}%"></div>
                                            </div>
                                            <span class="rating_num">(21)</span>
                                        </div>
                                        <div class="pr_desc">
                                            <p>${item['short_des']}.</p>
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>`

                            $("#spacialProduct").append(singleItem);
        });
    }

    getTrendingProducts();
    async function getTrendingProducts(){
        let response = await axios.get('/product-by-remark/trending');
        $("#trendingProduct").empty();

        response.data['data'].forEach((item, index) => {
            let singleItem = `<div class="col-lg-3 col-md-4 col-6">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="/detailProduct?id=${item['id']}">
                                            <img src="${item['image']}">
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
                                            
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:${item['star']}%"></div>
                                            </div>
                                            <span class="rating_num">(21)</span>
                                        </div>
                                        <div class="pr_desc">
                                            <p>${item['short_des']}.</p>
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>`

                            $("#trendingProduct").append(singleItem);
        });
    }

</script>
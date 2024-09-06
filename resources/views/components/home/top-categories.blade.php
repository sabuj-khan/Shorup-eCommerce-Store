<div class="section small_pt pb_70">
	<div class="container">

        <div class="row justify-content-center">
			<div class="col-md-6">
            	<div class="heading_s1 text-center">
                	<h2 class="mb-4">Top Categories</h2>
                        <p class="mb-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                   
                </div>
            </div>
		</div>

        <div class="row">
        	<div class="col-12">
                

                <div class="tab-content">
                    <div class="tab-pane fade show active" id="arrival" role="tabpanel" aria-labelledby="arrival-tab">

                        <div class="row shop_container" id="topCategory">
                            
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


<script>

    topCategories();
    async function topCategories(){
            let response = await axios.get('/category-list');

            $("#topCategory").empty();

            response.data['data'].forEach((item, index) => {
                let eachItem = `<div class="col-2">
                                <div class="product">
                                    <a href="/categoryPage?id=${item['id']}">
                                        <div class="product_img">                                        
                                            <img class="w-100" src="${item['category_img']}" alt="product Image">
                                            <div class="product_info">
                                                <h6 class="product_title">${item['category_name']}</h6>
                                            </div>
                                        
                                        </div>
                                        
                                    </a>
                                </div>
                            </div>`

                $("#topCategory").append(eachItem);

            });
        }



</script>
<div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
    <ul class="navbar-nav">
        <li><a class="nav-link nav_item active" href="{{url('/')}}">Home</a></li> 
        
        <li class="dropdown">
            <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">Categories</a>
            <div class="dropdown-menu">
                <ul id="category"> 
                    
                </ul>
            </div>
        </li>

        <li class="dropdown">
            <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">Brands</a>
            <div class="dropdown-menu">
                <ul id="brand"> 
                    
                </ul>
            </div>
        </li>
                              
        <li><a class="nav-link nav_item" href="{{ url('/productPage') }}">Products</a></li> 
        <li><a class="nav-link nav_item" href="/policyPage?type=about">About Us</a></li> 
        <li><a class="nav-link nav_item" href="/policyPage?type=contact">Contact Us</a></li> 
    </ul>
</div>

<script>

    getCategories();

    async function getCategories(){
        let response = await axios.get('/category-list');

        $("#category").empty();

        response.data['data'].forEach((item, index) => {
            let eachItem = `<li><a class="dropdown-item nav-link nav_item" href="/categoryPage?id=${item['id']}">${item['category_name']}</a></li>`

            $("#category").append(eachItem);

        });
    }

    getBrands();

    async function getBrands(){
        let response = await axios.get('/brand-list');

        $("#brand").empty();

        response.data['data'].forEach((item, index) => {
            let eachItem = `<li><a class="dropdown-item nav-link nav_item" href="/brandPage?id=${item['id']}">${item['brand_name']}</a></li>`

            $("#brand").append(eachItem);

        });
    }


</script>
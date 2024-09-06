<!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="page-title">
                    <h1>Cart List</h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <li class="breadcrumb-item"><a href="{{url('/' )}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">This Page</a></li>
                </ol>
            </div>
        </div>
    </div><!-- END CONTAINER-->
</div>

<div class="mt-5">
    <div class="container my-5">
        <div  class="row">
            <div class="col-12">
                <div class="table-responsive shop_cart_table">
                    <table class="table">
                        <thead>
                        <tr>
                            <th class="product-thumbnail">&nbsp;</th>
                            <th class="product-name">Product</th>
                            <th class="product-quantity">Quantity</th>
                            <th class="product-subtotal">Total</th>
                            <th class="product-remove">Remove</th>
                        </tr>
                        </thead>
                        <tbody id="byCartList">


                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="6" class="px-0">
                                <div class="row g-0 align-items-center">
                                    <div class="col-lg-4 col-md-6 mb-3 mb-md-0">
                                        Total: $ <span id="totalAmount"></span>
                                    </div>
                                    <div class="col-lg-8 col-md-6  text-start  text-md-end">
                                        
                                        <button onclick="CheckOut()" class="btn btn-line-fill btn-sm" type="submit">Check Out</button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div> <img src="" alt="">


<script>


getCartProductList();


async function getCartProductList(){
        let response = await axios.get('/product-cart-list');
        $(".preloader").delay(700).fadeOut(700).addClass('loaded');

        $("#byCartList").empty();

        response.data['data'].forEach((item, index) => {
            let singleCart = `<tr>
                            <td class="product-thumbnail"><img src="${item['product']['image']}" alt=""></td>
                            <th class="product-name">${item['product']['title']}</th>
                            <th class="product-quantity">${item['qty']}</th>
                            <th class="product-subtotal">${item['price']}</th>
                            <td class="product-remove"><a class="remove" data-id="${item['product_id']}" style="cursor:pointer"><i class="ti-close"></i></a></td>
                        </tr>`
                        $("#byCartList").append(singleCart);
                        $("#count_cart").text(response.data['count'])
        });

        $(".remove").on('click',function () {
            let id= $(this).data('id');
            RemoveCartList(id);
        })

    // Update cart count element
         $("#count_cart").text(response.data['data'].length);

        await cartTotalAmount(response.data['data']);

        await updateCartCount();

    }



    async function RemoveCartList(id){
        $(".preloader").delay(90).fadeOut(100).addClass('loaded');
        let response = await axios.get('/delete-cart-product/'+id);

        if(response.status == 200 && response.data['status'] == 'success'){
            alert(response.data['message']);
            await getCartProductList();
            await updateCartCount();

        }else{
            errorToast('Request fail to delete product from cart list');
        }
    }


    async function cartTotalAmount(data){
        let total = 0;
        data.forEach((item,i)=>{
            total=total+parseFloat(item['price']);
        })
        $("#totalAmount").text(total);
    }


    async function CheckOut(){
       // $(".preloader").delay(90).fadeIn(100).removeClass('loaded');
        let response = await axios.post('/invoice-create');
        //$(".preloader").delay(700).fadeOut(700).addClass('loaded');

        $("#paymentList").empty();

        if(response.status == 201 && response.data['status'] == 'success'){
            $("#paymentMethodModal").modal('show');

            response.data['data']['paymentMethod'].forEach((item, i) =>{
                let eachMethod = `<tr>
                                <td><img class="w-50" src=${item['logo']} alt="product"></td>
                                <td><p>${item['name']}</p></td>
                                <td><a class="btn btn-danger btn-sm" href="${item['redirectGatewayURL']}">Pay</a></td>
                            </tr>`

                    $("#paymentList").append(eachMethod);
            })
        }else{
            errorToast("Request fail");
        }

        



    }




</script>







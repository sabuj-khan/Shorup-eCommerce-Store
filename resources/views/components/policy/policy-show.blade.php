<!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1><span id="policy-Name">  </span></h1>
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
            	<div class="row shop_container" id="policyDetails">

                    
                 
        	</div>
        </div>
    </div>
</div>
</div>
<!-- END SECTION SHOP -->


<script>

    getPolicyDetails();

    async function getPolicyDetails(){
        let urlParams = new URLSearchParams(window.location.search);
        let type = urlParams.get('type');

        let response = await axios.get('/policy/'+type);
        $(".preloader").delay(700).fadeOut(700).addClass('loaded');

        if(type == 'about'){
            $("#policy-Name").html("About Us"); 
        }else if(type == 'refund'){
            $("#policy-Name").html("How to refund"); 
        }else if(type == 'terms'){
            $("#policy-Name").html("Terms and Conditions"); 
        }else if(type == 'how to buy'){
            $("#policy-Name").html("How to Purchase"); 
        }else if(type == 'contact'){
            $("#policy-Name").html("Get in Touch"); 
        }else if(type == 'complain'){
            $("#policy-Name").html("Making Complaint"); 
        }else{
            $("#policy-Name").html("Nothing to be showed");
        }

        $("#policyDetails").html(response.data['data']['description']);
    }


</script>
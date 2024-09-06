<div class="top-header">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="d-flex align-items-center justify-content-center justify-content-md-start">
                    <div class="lng_dropdown me-2">
                        <select name="countries" class="custome_select">
                            <option value='en' data-image="assets/images/eng.png" data-title="English">English</option>
                            <option value='fn' data-image="assets/images/fn.png" data-title="France">France</option>
                            <option value='us' data-image="assets/images/us.png" data-title="United States">United States</option>
                        </select>
                    </div>
                    <div class="me-3">
                        <select name="countries" class="custome_select">
                            <option value='USD' data-title="BDTK">BDTK</option>
                            <option value='USD' data-title="USD">USD</option>
                            <option value='EUR' data-title="EUR">EUR</option>
                            <option value='GBR' data-title="GBR">GBR</option>
                        </select>
                    </div>
                    <ul class="contact_detail text-center text-lg-start">
                        <li><i class="ti-mobile"></i><span>01908241281</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6">
                <div class="text-center text-md-end">
                       <ul class="header_list">
                        {{-- <li><a href="compare.html"><i class="ti-control-shuffle"></i><span>Compare</span></a></li> --}}
                        <li><a href="{{url('/wishList')}}"><i class="ti-heart"></i><span>Wishlist</span></a></li>
                        <li><a href="{{url('/cartPage')}}"><i class="ti-shopping-cart"></i><span>Cartlist</span></a>
                            
                        </li>
                        
                        @if (Cookie::get('token') !== null)
                        <li><a href="{{ url('/profile') }}"><i class="ti-user"></i><span>Acount</span></a></li>
                        <li><a href="{{url('/userlogout')}}" class="btn btn-danger btn-sm"><i class="ti-power-off"></i><span>Log Out</span></a></li>
                        @else        
                        <li><a href="{{url('/userLogin')}}" class="btn btn-danger btn-sm"><i class="ti-user"></i><span>Login</span></a></li>                
                        {{-- <li><a href="{{url('/userLogin')}}"><i class="ti-user"></i><span>Login</span></a></li> --}}
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
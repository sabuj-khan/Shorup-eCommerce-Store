@extends('layouts.app')
@section('content')
    

<div class="container mt-5">
    <div class="row">
        <div class="col-12">

            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Profile</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link " id="order-tab" data-bs-toggle="tab" data-bs-target="#order-tab-pane" type="button" role="tab" aria-controls="order-tab-pane" aria-selected="false">Orders</button>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane show active" id="profile-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                   
                  @include('components.auth.profile-form')

                </div>
                <div class="tab-pane" id="order-tab-pane" role="tabpanel" aria-labelledby="order-tab" tabindex="0">
                   
                @include('components.auth.user-orders')

                </div>
            </div>
        </div>
    </div>
</div>







@endsection
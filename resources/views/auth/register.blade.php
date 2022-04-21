@extends('master')

@section('content')


<!--Hero Section-->
<div class="hero-section hero-background">
    <h1 class="page-title">Organic Fruits</h1>
</div>

<!--Navigation section-->
<div class="container">
    <nav class="biolife-nav">
        <ul>
            <li class="nav-item"><a href="index-2.html" class="permal-link">Home</a></li>
            <li class="nav-item"><span class="current-page">Authentication</span></li>
        </ul>
    </nav>
</div>

<div class="page-contain login-page">

    <!-- Main content -->
    <div id="main-content" class="main-content">
        <div class="container">

            <div class="row">

                <!--Form Sign In-->
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="signin-container">
                        <x-auth-validation-errors class="mb-4" :errors="$errors" />

                        <form action="{{ route('register') }}" name="frm-login" method="POST">

                            @csrf
                            <p class="form-row">
                                <label for="fid-name">Full Name<span class="requite">*</span></label>
                                <input type="text" id="name" name="name" :value="old('name')" class="txt-input">
                            </p>
                            <p class="form-row">
                                <label for="fid-name">Email Address:<span class="requite">*</span></label>
                                <input type="email" id="email" name="email" :value="old('email')" class="txt-input">
                            </p>
                            <p class="form-row">
                                <label for="fid-name">Password<span class="requite">*</span></label>
                                <input type="password" id="password" name="password" class="txt-input">
                            </p>
                            <p class="form-row">
                                <label for="fid-pass">Confirm password<span class="requite">*</span></label>
                                <input type="password" id="password_confirmation" name="password_confirmation" class="txt-input">
                            </p>
                            <p class="form-row wrap-btn">
                                <button class="btn btn-submit btn-bold" type="submit">sign up</button>

                            </p>
                            <p><a href="{{ route('login')}}">Login</a></p>
                        </form>
                    </div>
                </div>


            </div>

        </div>

    </div>

</div>


@endsection
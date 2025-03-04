@extends('backend.layouts.login')

@section('title', 'Login')

@section('content')
    <div>
        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">
                <h2><center><a href="<?=url('/');?>"><img src="<?=url(getData('logo'));?>"; class='img-responsive' style="max-width:150px;"></a></center></h2>
                           
                    <form method="post" id="formLogin">
                        <input type="hidden" name="_token" value="{{{ csrf_token() }}}" />
                        <div class="title-box">
                            <p class="title">Login Form</p>
                        </div>
                        <div class="error-alert"></div>
                        <div>
                            <input type="email" class="form-control" placeholder="Email" required="" name="email" />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="Password" required="" name="password" />
                        </div>
                        <div>
                            <button type="submit" class="btn btn-submit btn-primary ladda-button btn-block">Login</button> 
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
                        <div class="clearfix"></div>
                        <div>
                            <p>&copy;2019 <b>Version</b> 1.0.0 <strong>All rights reserved.</strong></p>
                        </div>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </div>
@endsection
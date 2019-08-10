
<?php
	$segment =  Request::segment(2);
	$sub_segment =  Request::segment(3);
?>
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
	<div class="menu_section">
        <h3>General</h3>
		<ul class="nav side-menu">
			<li class="{{ ($segment == 'dashboard' ? 'active' : '') }}">
				<a href="<?=url('backend/dashboard');?>"><i class="fa fa-dashboard"></i> Dashboard</a>
			</li>
		
		</ul>
    </div>

	@if($userinfo['user_level_id']==2)
	<div class="menu_section">
        <h3>Master</h3>
		<ul class="nav side-menu">
			<li class="{{ ($segment == 'supplier' ? 'active' : '') }}">
				<a href="<?=url('backend/supplier');?>"><i class="fa fa-file"></i> Master Supplier</a>
            </li>
			<li class="{{ ($segment == 'barang' ? 'active' : '') }}">
				<a href="<?=url('backend/barang');?>"><i class="fa fa-file"></i> Master Barang</a>
            </li>
			<li class="{{ ($segment == 'users-level' ? 'active' : '') }}">
						<a href="<?=url('backend/users-level');?>"><i class="fa fa-file"></i> Master Jabatan</a>
					</li>
					<li class="{{ ($segment == 'users-user' ? 'active' : '') }}">
						<a href="<?=url('backend/users-user');?>"><i class="fa fa-file"></i> Master User</a>
					</li>
        <ul>
    </div>
	@endif
	@if($userinfo['user_level_id']==3 || $userinfo['user_level_id']==2)
	<div class="menu_section">
        <h3>Transaksi</h3>
		<ul class="nav side-menu">
		
			<li class="{{ ($segment == 'purchase-order' ? 'active' : '') }}">
				<a href="<?=url('backend/purchase-order');?>"><i class="fa fa-shopping-cart"></i> Purchase Order</a>
			</li>
			<li class="{{ ($segment == 'penjualan' ? 'active' : '') }}">
				<a href="<?=url('backend/penjualan');?>"><i class="fa fa-credit-card"></i> Pemakaian Barang</a>
            </li>
			<li class="{{ ($segment == 'koreksi-stok' ? 'active' : '') }}">
                <a href="<?=url('backend/koreksi-stok');?>"><i class="fa fa-cogs"></i> Stock Opname</a>
            </li>
        <ul>
    </div>
	@endif
	@if($userinfo['user_level_id']==1 || $userinfo['user_level_id']==2)
	<div class="menu_section">
        <h3>Laporan</h3>
		<ul class="nav side-menu">
			<li class=" {{ ((($segment == 'report-purchase') || ($segment == 'report-penjualan') || ($segment == 'report-stok')) ? 'active' : '') }}">
				<a><i class="fa fa-bar-chart-o"></i> Laporan <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu" style="{{ ((($segment == 'report-purchase') || ($segment == 'report-penjualan') || ($segment == 'report-stok')) ? 'display : block' : '') }}">
					<li class="{{ ($segment == 'report-purchase' ? 'active' : '') }}">
						<a href="<?=url('backend/report-purchase');?>">Purchase Order</a>
					</li>
					<li class="{{ ($segment == 'report-penjualan' ? 'active' : '') }}">
						<a href="<?=url('backend/report-penjualan');?>">Pemakaian Barang</a>
                    </li>
					<li class="{{ ($segment == 'report-stok' ? 'active' : '') }}">
						<a href="<?=url('backend/report-stok');?>">Stok Opname</a>
					</li>
				</ul>
			</li>
        <ul>
    </div>
	@endif
</div>


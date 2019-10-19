<?php
	$breadcrumb = [];
	$breadcrumb[0]['title'] = 'Dashboard';
	$breadcrumb[0]['url'] = url('backend/dashboard');
	$breadcrumb[1]['title'] = 'Laporan Stock opname';
    $breadcrumb[1]['url'] = url('backend/report-stok');
	$userinfo = Session::get('userinfo');
    
?>

<!-- LAYOUT -->
@extends('backend.layouts.main')

<!-- TITLE -->
@section('title', 'Stok')

<!-- CONTENT -->
@section('content')
    <div class="page-title">
        <div class="title_left">s
            <h3>Laporan Stock Opname</h3>
        </div>
        <div class="title_right">
        <div class="col-md-4 col-sm-4 col-xs-8 form-group pull-right top_search">
                <a href="javascript:printDiv('print-area');" class="btn-index btn btn-success btn-block" title="Back"><i class="fa fa-print"></i> Print</a>
            </div>
        </div>
    </div>
	<div class="clearfix"></div>
    @include('backend.elements.breadcrumb',array('breadcrumb' => $breadcrumb))
	<div class="row" id="print-area">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_content">
                    @include('backend.elements.notification')

					<div class="row border-bottom">
                        <div class="col-xs-12">
                            <h4>PT Excel</h4>
                            <p>Ruko Granada Square blok I 45 Bsd Tangerang Selatan</p>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped table-hover table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Kode</th>
                                    <th>Nama</th>
                                    <th>Stok Awal</th>
                                    <th>Stok Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    foreach ($data as $item):
                                ?>
                                    <tr>
                                        <td><?=$item->id;?></td>
                                        <td><?=$item->kode;?></td>
                                        <td><?=$item->nama;?></td>
                                        <td><?=number_format($item->stok_awal,0,',','.');?></td>
                                        <td><?=number_format($item->stok_total,0,',','.');?></td>
                                    </tr>
                                <?php
                                    endforeach;
                                ?>
                            </tbody>
                        </table>
                        <div class="row">
                        <div class="col-xs-12">
                                    <p>Print By : <?=$userinfo['firstname'];?></p>
                        </div>
                    </div>
                    </div>
				</div>
			</div>
		</div>					
	</div>
@endsection

<!-- CSS -->
@section('css')

@endsection

<!-- JAVASCRIPT -->
@section('script')
    <script>
        $('#myDatepicker').datetimepicker({
            format: 'DD-MM-YYYY'
        });

        $('#myDatepicker2').datetimepicker({
            format: 'DD-MM-YYYY'
        });
	</script>
@endsection
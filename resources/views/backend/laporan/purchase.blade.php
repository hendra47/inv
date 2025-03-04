<?php
	$breadcrumb = [];
	$breadcrumb[0]['title'] = 'Dashboard';
	$breadcrumb[0]['url'] = url('backend/dashboard');
	$breadcrumb[1]['title'] = 'Laporan Purchase Order';
    $breadcrumb[1]['url'] = url('backend/report-purchase');
	$userinfo = Session::get('userinfo');
    
?>

<!-- LAYOUT -->
@extends('backend.layouts.main')

<!-- TITLE -->
@section('title', 'Purchase Order')

<!-- CONTENT -->
@section('content')
    <div class="page-title">
        <div class="title_left">
            <h3>Laporan Purchase Order</h3>
        </div>
        <div class="title_right">
        <div class="col-md-4 col-sm-4 col-xs-8 form-group pull-right top_search">
                <a href="javascript:printDiv('print-area');" class="btn-index btn btn-success btn-block" title="Back"><i class="fa fa-print"></i> Print</a>
            </div>
        </div>
    </div>
	<div class="clearfix"></div>
    @include('backend.elements.breadcrumb',array('breadcrumb' => $breadcrumb))
    <div class="row">
        <div class="col-xs-12">
            <div class="x_panel">
                <div class="x_content">
                    <form id="form-work" class="form-horizontal" role="form" autocomplete="off" method="GET">
                        {!! csrf_field() !!}
                        <div class="row">
                            <div class="col-xs-12 col-sm-1" style="margin-top:7px;">
                                Status 
                            </div>
                            <div class="col-xs-12 col-sm-5">
                                <select name="status" class="form-control">
                                    <?php
                                        $selected = "";
                                        if ($status == "0"){
                                            $selected = "selected";
                                        }
                                    ?>
                                    <option value="0" <?=$selected;?>>All</option>
                                    <?php
                                        $selected = "";
                                        if ($status === "order"){
                                            $selected = "selected";
                                        }
                                    ?>
                                    <option value="order" <?=$selected;?>>Order</option>
                                    <?php
                                        $selected = "";
                                        if ($status === "received"){
                                            $selected = "selected";
                                        }
                                    ?>
                                    <option value="received" <?=$selected;?>>Received</option>
                                </select>
                            </div>
                        </div>
                        <br/>
                        <div class="row">
                            <div class="col-xs-12 col-sm-1" style="margin-top:7px;">
                                Tanggal
                            </div>
                            <div class="col-xs-12 col-sm-3 date">
                                <div class='input-group date' id='myDatepicker'>
                                    <input type='text' class="form-control" name="startDate" value=<?=$startDate;?> />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-3 date">
                                <div class='input-group date' id='myDatepicker2'>
                                    <input type='text' class="form-control" name="endDate" value=<?=$endDate;?> />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-2 text-right">
                                <?php
                                    $checked = "";
                                    if ($mode == "all"){
                                        $checked = "checked";
                                    }
                                ?>
                                <div class="checkbox">
                                    <input type="checkbox" name="mode" value="all" id="show-all" <?=$checked;?>>Tampilkan semua
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-2">
                                <button type="submit" class="btn btn-primary btn-block">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
	<div class="row"  id="print-area">
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
                                    <th>INV</th>
                                    <th>Tanggal</th>
                                    <th>Supplier</th>
                                    <th>Total</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $total = 0;
                                    foreach ($data as $item):
                                ?>
                                    <tr>
                                        <td><?=$item->id;?></td>
                                        <td><b><?=$item->no_inv;?></b></td>
                                        <td><?=date('d M Y', strtotime($item->tanggal));?></td>
                                        <td><?=$item->supplier->nama;?></td>
                                        <td><?=number_format($item->total,0,',','.');?></td>
                                        <td>
                                            <?php
                                                if ($item->status == "order"){
                                                    $text = "Order";
                            						$label = "info";
                                                } else 
                                                if ($item->status == "received"){
                                                    $text = "Received";
                                                    $label = "success";
                                                }
                                            ?>
                                            <span class='badge badge-<?=$label;?>'><?=$text;?></span>
                                        </td>
                                    </tr>
                                <?php
                                        $total += $item->total;
                                    endforeach;
                                ?>
                                    <tr>
                                        <td colspan=6 align=right>
                                            <h4>Total : Rp. <?=number_format($total,0,',','.');?></h4>
                                        </td>
                                    </tr>
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
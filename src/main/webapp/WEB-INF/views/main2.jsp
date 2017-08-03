<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
    var requireJS = [
      "/js/libs/toastr.min.js",
      "/js/libs/gauge.min.js",
      "/js/libs/moment.min.js",
      "/js/libs/daterangepicker.js"
    ];
    loadJS(requireJS, "/js/views/main.js");
</script>

<div class="animated fadeIn">

    <div class="row">
        <div class="col-sm-6 col-lg-3">
            <div class="card">
                <div class="card-block p-1 clearfix">
                    <i class="fa fa-cogs bg-primary p-1 font-2xl mr-1 float-left"></i>
                    <div class="text-uppercase text-muted font-weight-bold font-xs mb-0 mt-h">Clients</div>
                    <div class="h5">4.589</div>
                </div>
            </div>
        </div>
        <!--/.col-->

        <div class="col-sm-6 col-lg-3">
            <div class="card">
                <div class="card-block p-1 clearfix">
                    <i class="fa fa-laptop bg-info p-1 font-2xl mr-1 float-left"></i>
                    <div class="text-uppercase text-muted font-weight-bold font-xs mb-0 mt-h">Deals</div>
                    <div class="h5">789</div>
                </div>
            </div>
        </div>
        <!--/.col-->

        <div class="col-sm-6 col-lg-3">
            <div class="card">
                <div class="card-block p-1 clearfix">
                    <i class="fa fa-moon-o bg-warning p-1 font-2xl mr-1 float-left"></i>
                    <div class="text-uppercase text-muted font-weight-bold font-xs mb-0 mt-h">Income</div>
                    <div class="h5">$1.999</div>
                </div>
            </div>
        </div>
        <!--/.col-->

        <div class="col-sm-6 col-lg-3">
            <div class="card">
                <div class="card-block p-1 clearfix">
                    <i class="fa fa-bell bg-danger p-1 font-2xl mr-1 float-left"></i>
                    <div class="text-uppercase text-muted font-weight-bold font-xs mb-0 mt-h">Account</div>
                    <div class="h5">$100K</div>
                </div>
            </div>
        </div>
        <!--/.col-->
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-md-12">
            <div ng-controller="mainChartCtrl" class="my-2">
                <div class="chart-wrapper" style="height:400px">
                    <canvas id="main-chart" height="400"></canvas>
                </div>
            </div>
        </div>
        <!--/.col-->
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-sm-3">
            <div class="card">
                <div class="card-header card-header-inverse card-header-info">
                    <div class="font-weight-bold">
                        <span>SALE</span>
                        <span class="float-right">$1.890,65</span>
                    </div>
                    <div>
                        <span>
                            <small>Today 6:43 AM</small>
                        </span>
                        <span class="float-right">
                            <small>+432,50 (15,78%)</small>
                        </span>
                    </div>
                    <div class="chart-wrapper" style="height:38px;">
                        <canvas class="chart-7 chart chart-line" height="38"></canvas>
                    </div>
                    <div class="chart-wrapper" style="height:38px;">
                        <canvas class="chart-8 chart chart-bar" height="38"></canvas>
                    </div>
                </div>
                <div class="card-block py-1 px-2">
                    <div class="row">
                        <div class="col-5">
                            <strong>+$780,98</strong>
                            <br>
                            <span class="text-muted">
                                <small>Weekly change</small>
                            </span>
                        </div>
                        <div class="col-7 p-0">
                            <div class="chart-wrapper">
                                <canvas class="chart-9 chart chart-bar float-right" height="44" width="130" style="margin-top:-7px;"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-block py-0 px-2 b-t-1">
                    <div class="row">
                        <div class="col-6 b-r-1 py-1">
                            <div class="font-weight-bold">9.127</div>
                            <div class="text-muted">
                                <small>Deals</small>
                            </div>
                        </div>
                        <div class="col-6 py-1 text-right">
                            <div class="font-weight-bold">$189.783,87</div>
                            <div class="text-muted">
                                <small>Total Income</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/.col-->
        <div class="col-sm-3">
            <div class="card">
                <div class="card-header card-header-inverse card-header-success">
                    <div class="font-weight-bold">
                        <span>SALE</span>
                        <span class="float-right">$1.890,65</span>
                    </div>
                    <div>
                        <span>
                            <small>Today 6:43 AM</small>
                        </span>
                        <span class="float-right">
                            <small>+432,50 (15,78%)</small>
                        </span>
                    </div>
                    <div class="chart-wrapper" style="height:38px;">
                        <canvas class="chart-7-2 chart chart-line" height="38"></canvas>
                    </div>
                    <div class="chart-wrapper" style="height:38px;">
                        <canvas class="chart-8-2 chart chart-bar" height="38"></canvas>
                    </div>
                </div>
                <div class="card-block py-1 px-2">
                    <div class="row">
                        <div class="col-5">
                            <strong>+$780,98</strong>
                            <br>
                            <span class="text-muted">
                                <small>Weekly change</small>
                            </span>
                        </div>
                        <div class="col-7 p-0">
                            <div class="chart-wrapper">
                                <canvas class="chart-9-2 chart chart-bar float-right" height="44" width="130" style="margin-top:-7px;"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-block py-0 px-2 b-t-1">
                    <div class="row">
                        <div class="col-6 b-r-1 py-1">
                            <div class="font-weight-bold">9.127</div>
                            <div class="text-muted">
                                <small>Deals</small>
                            </div>
                        </div>
                        <div class="col-6 py-1 text-right">
                            <div class="font-weight-bold">$189.783,87</div>
                            <div class="text-muted">
                                <small>Total Income</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/.col-->
        <div class="col-sm-3">
            <div class="card">
                <div class="card-header card-header-inverse card-header-warning">
                    <div class="font-weight-bold">
                        <span>SALE</span>
                        <span class="float-right">$1.890,65</span>
                    </div>
                    <div>
                        <span>
                            <small>Today 6:43 AM</small>
                        </span>
                        <span class="float-right">
                            <small>+432,50 (15,78%)</small>
                        </span>
                    </div>
                    <div class="chart-wrapper" style="height:38px;">
                        <canvas class="chart-7-3 chart chart-line" height="38"></canvas>
                    </div>
                    <div class="chart-wrapper" style="height:38px;">
                        <canvas class="chart-8-3 chart chart-bar" height="38"></canvas>
                    </div>
                </div>
                <div class="card-block py-1 px-2">
                    <div class="row">
                        <div class="col-5">
                            <strong>+$780,98</strong>
                            <br>
                            <span class="text-muted">
                                <small>Weekly change</small>
                            </span>
                        </div>
                        <div class="col-7 p-0">
                            <div class="chart-wrapper">
                                <canvas class="chart-9-3 chart chart-bar float-right" height="44" width="130" style="margin-top:-7px;"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-block py-0 px-2 b-t-1">
                    <div class="row">
                        <div class="col-6 b-r-1 py-1">
                            <div class="font-weight-bold">9.127</div>
                            <div class="text-muted">
                                <small>Deals</small>
                            </div>
                        </div>
                        <div class="col-6 py-1 text-right">
                            <div class="font-weight-bold">$189.783,87</div>
                            <div class="text-muted">
                                <small>Total Income</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/.col-->
        <div class="col-sm-3">
            <div class="card">
                <div class="card-header card-header-inverse card-header-danger">
                    <div class="font-weight-bold">
                        <span>SALE</span>
                        <span class="float-right">$1.890,65</span>
                    </div>
                    <div>
                        <span>
                            <small>Today 6:43 AM</small>
                        </span>
                        <span class="float-right">
                            <small>+432,50 (15,78%)</small>
                        </span>
                    </div>
                    <div class="chart-wrapper" style="height:38px;">
                        <canvas class="chart-7-4 chart chart-line" height="38"></canvas>
                    </div>
                    <div class="chart-wrapper" style="height:38px;">
                        <canvas class="chart-8-4 chart chart-bar" height="38"></canvas>
                    </div>
                </div>
                <div class="card-block py-1 px-2">
                    <div class="row">
                        <div class="col-5">
                            <strong>+$780,98</strong>
                            <br>
                            <span class="text-muted">
                                <small>Weekly change</small>
                            </span>
                        </div>
                        <div class="col-7 p-0">
                            <div class="chart-wrapper">
                                <canvas class="chart-9-4 chart chart-bar float-right" height="44" width="130" style="margin-top:-7px;"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-block py-0 px-2 b-t-1">
                    <div class="row">
                        <div class="col-6 b-r-1 py-1">
                            <div class="font-weight-bold">9.127</div>
                            <div class="text-muted">
                                <small>Deals</small>
                            </div>
                        </div>
                        <div class="col-6 py-1 text-right">
                            <div class="font-weight-bold">$189.783,87</div>
                            <div class="text-muted">
                                <small>Total Income</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/.col-->
    </div>
    <!--/.row-->
</div>


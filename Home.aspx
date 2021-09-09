<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication5.StratergyBuilder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stratergy Builder</title>
     <meta charset="utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1" />
     <link href="Content/bootstrap.css" rel="stylesheet" />
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
     <link href="Content/bootstrap-theme.css" rel="stylesheet" />
     <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
     <link href="Content/Site.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" />
     <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.3/jquery.mCustomScrollbar.min.css' />
     <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.stock.min.js"></script>
     <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
     <style>
  .dropdown {
    position: absolute;
    top: 10px;
    left: 10px;
    display: inline-block;
    border: 1px solid #539c53;
    background-color: #5cb85c;
    color: white;
    padding: 8px;
    font-family:  sans-serif;
    user-select: none;
  }
  .dropdown-content {
    display: none;
    position: absolute;
    top: 35px;
    left: 0px;
    background-color: #fff;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  }
  .dropdown-content div {
    padding: 16px;
    color: black;
  }
  .dropdown:hover .dropdown-content {
    display: block;
  }
  .dropdown-content div:hover{
    background-color: #e8e8e8;
  }
</style>
</head>
<body style="background-color:gainsboro">
    <form id="form1" runat="server">
<section class="nav" style="width:100%">
        <div class="w3-container" style="margin-top:-4%;margin-left:-2%;width:500%">
  <div class="w3-bar w3-cyan">
    <a href="Home.aspx" class="w3-bar-item w3-button w3-mobile" style="text-align:center;font-size:x-large;color:white;margin-top:3px;height:50%"><strong>Opestra Option Analysis</strong></a>
    <a href="Home.aspx" class="w3-bar-item w3-button w3-mobile" style="font-size:x-large;color:white;margin-top:3px;margin-left:4px"> <strong><i class="fa fa-home"></i></strong></a>
    <a href="#" class="w3-bar-item w3-button w3-mobile" style="font-size:x-large;color:white"> <strong><i class="fa fa-product-hunt"></i> Portfolio</strong></a>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button" style="font-size:x-large;margin-top:1px;color:white"><strong>Futures</strong> <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-white">
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-cube"></i>Future Dashboard</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-bar-chart"></i>Future Open Intrest</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-line-chart"></i>Future Intera Day</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-product-hunt"></i> Future Build-up</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-table"></i> Heatmap</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-bar-chart"></i>Moving Avareges</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-signal"></i> Mwpl</a>
      </div>
    </div>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button" style="font-size:x-large;margin-top:1px;color:white"><strong>Options</strong> <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-white">
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-dashcube"></i> Option Backtesting</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-dashcube"></i> Option Simulator</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-dashcube"></i>Option Algorithms</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-cube"></i>Option Dashboard</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-line-chart"></i> IV Charts</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-cube"></i> Volatality Surface</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-line-chart"></i> Stratergy Charts</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large">Stratergy Builder</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-line-chart"></i> Volataility Skew</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-calendar"></i> Result Calender</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="glyphicon glyphicon-time"></i> Historical Results</a>
      </div>
    </div>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button" style="font-size:x-large;margin-top:1px;color:white"><strong>OI</strong> <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-white">
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-bar-chart"></i> Open Intrest</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-exchange"></i> Total-Open-Intrest</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-product-hunt"></i> Put Call OI Dynamics</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-line-chart"></i> Open Intrest Charts</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-area-chart"></i> PCR</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-line-chart"></i> Straddles</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-exchange"></i> Option Chain</a>
         <a href="#" class="w3-bar-item w3-button w3-mobile"  style="font-size:x-large"><i class="fa fa-exchange"></i>Option ctivities</a>
      </div>
    </div>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button" style="font-size:x-large;margin-top:1px;color:white"><strong>Fii/Dii</strong> <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-white">
        <a href="#" class="w3-bar-item w3-button w3-mobile" style="font-size:x-large"><i class="fa fa-database" ></i> FII/DII Cash Markets</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile" style="font-size:x-large"><i class="fa fa-database"></i> FII/DII Derivatives</a>
      </div>
    </div>
     <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button" style="font-size:x-large;margin-top:1px;color:white"><strong>Education</strong> <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-white">
        <a href="#" class="w3-bar-item w3-button w3-mobile" style="font-size:x-large"><i class="fa fa-question"></i> How To Use</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile" style="font-size:x-large"><i class="fa fa-youtube"></i>Youtube</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile" style="font-size:x-large"><i class="glyphicon glyphicon-blogg"></i>Blog</a>
      </div>
    </div>
       <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button" style="font-size:x-large;margin-top:1px;color:white"><strong><i class="fa fa-sign-out"></i></strong> <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-white">
        <a href="#" class="w3-bar-item w3-button w3-mobile" style="font-size:x-large"><i class="fa fa-"></i> Account</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile" style="font-size:x-large"><i class="fa fa-dollar"></i> Pricing</a>
      </div>
    </div>
  </div>
</div>
</section>
    <br />
      <br />
        <br />
        <section class="col-lg-12">
            <section class="card-header" style="background-color:aqua">
                <h1 class="text-center w3-animate-input w3-animate-left" style="background-color:royalblue;opacity:8;font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;color:white;border:solid thick"><strong><u style="text-underline-position:below">Opstra Options Strategy Builder</u></strong></h1>
                <p class="text-center" style="opacity:8;font-family:'Times New Roman';font-size:x-large;font-weight:bolder"><strong>Custom build and analyze your options strategies</strong></p>
                <div class="clearfix">
                    <button type="button" class="btn btn-block" style="background-color:white;color:black;width:100%"><a href="UStratergyBuilder.aspx">Get Started</a></button>
                </div>
            </section>
        </section>
        <section class="col-lg-12" style="margin-top:5%">
         <div id="chart" style="height: 300px;width: 100%;"></div>
        <!-- TABLE CONSTRUCTION-->
        <section>
        <center><button type="button" id="togglebutton" class="show btn btn-large btn-navbar" style="background-color:white;font-size:x-large;font-weight:bolder;width:100%">Option chain  <i class="fa fa-caret-down"></i></button></center>
        <table id='table' class="table table-bordered table-condensed table-hover" style="display:none;background-color:darkcyan">
            <!-- HEADING FORMATION -->
            <tr>
            <th style="background-color:royalblue;font-family:'Times New Roman';font-size:x-large;font-weight:bolder"><strong>Date</strong></th>
            <th style="background-color:royalblue;font-family:'Times New Roman';font-size:x-large;font-weight:bolder"><strong>Open</strong></th>
            <th style="background-color:royalblue;font-family:'Times New Roman';font-size:x-large;font-weight:bolder"><strong>High</strong></th>
            <th style="background-color:royalblue;font-family:'Times New Roman';font-size:x-large;font-weight:bolder"><strong>Low</strong></th>
            <th style="background-color:royalblue;font-family:'Times New Roman';font-size:x-large;font-weight:bolder"><strong>Close</strong></th>
            <th style="background-color:royalblue;font-family:'Times New Roman';font-size:x-large;font-weight:bolder"><strong>volume_btc</strong></th>
            <th style="background-color:royalblue;font-family:'Times New Roman';font-size:x-large;font-weight:bolder"><strong>volume_usd</strong></th>
            <th style="background-color:royalblue"><asp:Button ID="Button1" CssClass="btn-danger breadcrumb" runat="server" Text="BUY" BorderStyle="Groove" /></th>
                <th style="background-color:royalblue"><asp:Button ID="Button2" CssClass="btn-success breadcrumb" runat="server" Text="SELL" BorderStyle="Groove" /></th>
            </tr>
            <script>
                $(document).ready(function () {
                    $("table").hide();
                    $(document).on('click', '.show', function () {
                        $("table").show();
                        $("#togglebutton").removeClass('show').addClass('hide');
                    });
                    $(document).on('click', '.hide', function () {
                        $("table").hide();
                        $("#togglebutton").removeClass('hide').addClass('show');
                    });

                });
                // FETCHING DATA FROM JSON FILE
                $.getJSON("https://canvasjs.com/data/docs/btcusd2018.json",
                    function (data) {
                        var item = '';
                        // ITERATING THROUGH OBJECTS
                        $.each(data, function (key, value) {
                            //CONSTRUCTION OF ROWS HAVING
                            // DATA FROM JSON OBJECT
                            item += '<tr>';
                            item += '<td>' +
                                value.date + '</td>';
                            item += '<td>' +
                                value.open + '</td>';
                            item += '<td>' +
                                value.high + '</td>';
                            item += '<td>' +
                                value.low + '</td>';
                            item += '<td>' +
                                value.close + '</td>';
                            item += '<td>' +
                                value.volume_btc + '</td>';
                            item += '<td>' +
                                value.volume_usd + '</td>';
                            item += '</tr>';
                        });
                        //INSERTING ROWS INTO TABLE
                        $('#table').append(item);
                    });
            </script>
        </table>
    </section>
<script type="text/javascript">
    window.onload = function () {
        var dataPoints = [];
        var stockChart = new CanvasJS.StockChart("chart", {
            theme: "dark2",
            title: {
                text: "BIT Coin Open and Close/USD"
            },
            animationEnabled: true,
            animationDuration: 80000,
            exportEnabled: true,
            charts: [{
                axisX: {
                    crosshair: {
                        enabled: true
                    }
                },
                axisY: {
                    title: "BTC/USD",
                    prefix: "$",
                    suffix: "M"
                },
                data: [{
                    type: "line", //Change it to "spline", "area", "column"
                    yValueFormatString: "$#,###.##M",
                    xValueFormatString: "MM YYYY",
                    dataPoints: dataPoints
                }]
            }],
            navigator: {
                slider: {
                    minimum: new Date(2018, 04, 01),
                    maximum: new Date(2018, 06, 01)
                }
            }
        });
        $.getJSON("https://canvasjs.com/data/docs/btcusd2018.json", function (data) {
            for (var i = 0; i < data.length; i++) {
                dataPoints.push({ x: new Date(data[i].date), y: Number(data[i].high) });
            }
            for (var j = 0; j < data.length; j++) {
                dataPoints.push({ x: new Date(data[j].date), y: Number(data[j].low) });
            }
            stockChart.render();
        });
    }
    </script>
</section>
    </form>
</body>
</html>

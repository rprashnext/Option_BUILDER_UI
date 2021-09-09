<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADDPOS.aspx.cs" Inherits="WebApplication5.ADDPOS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADD POS</title>
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
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
     <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
     <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2021.2.616/styles/kendo.default-v2.min.css" />
     <script src="https://kendo.cdn.telerik.com/2021.2.616/js/angular.min.js"></script>
     <script src="https://kendo.cdn.telerik.com/2021.2.616/js/kendo.all.min.js"></script>
     <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="https://code.highcharts.com/stock/highstock.js"></script>
     <script src="https://code.highcharts.com/stock/modules/data.js"></script>
    <style>
       @import url('https://fonts.googleapis.com/css?family=Arimo:400,700&display=swap');
body{
  background-color:gainsboro;
  font-family: 'Arimo', sans-serif;
}
h2{
  color:#000;
  text-align:center;
  font-size:2em;
}
.warpper{
  display:flex;
  flex-direction: column;
  align-items: center;
}
.tab{
  cursor: pointer;
  padding:10px 20px;
  margin:0px 2px;
  background:#000;
  display:inline-block;
  color:#fff;
  border-radius:3px 3px 0px 0px;
  box-shadow: 0 0.5rem 0.8rem #00000080;
}
.panels{
  background:#fffffff6;
  box-shadow: 0 2rem 2rem #00000080;
  min-height:200px;
  width:100%;
  max-width:500px;
  border-radius:3px;
  overflow:hidden;
  padding:20px;  
}
.panel{
  display:none;
  animation: fadein .8s;
}
@keyframes fadein {
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
.panel-title{
  font-size:1.5em;
  font-weight:bold
}
.radio{
  display:none;
}
#one:checked ~ .panels #one-panel,
#two:checked ~ .panels #two-panel,
#three:checked ~ .panels #three-panel,
#four:checked  ~ .panels #four-panel{
  display:block
}
#one:checked ~ .tabs #one-tab,
#two:checked ~ .tabs #two-tab,
#three:checked ~ .tabs #three-tab,
#four:checked  ~ .tabs #four-tab{
  background:#fffffff6;
  color:#000;
  border-top: 3px solid #000;
}
    </style>
    <style>
        $primary: #0099FF;
$secondary: gray;
$roundness: 5px;

$sliderHeight: 4px;
$handleSize: 20px;
$valueWidth: 90px;
$labelMarkerHeight: 12px;

body {
  font-family: Helvetica, sans-serif;
}

.rangeslider-wrap {
  padding-top: 100px;
}

.rangeslider {
  position: relative;
  height: $sliderHeight;
  border-radius: $roundness;
  width: 100%;
  background-color: $secondary;
  
  &__handle {
    transition: background-color .2s;
    box-sizing: border-box;
    width: $handleSize;
    height: $handleSize;
    border-radius: 100%;
    background-color: $primary;
    touch-action: pan-y;
    cursor: pointer;
    display: inline-block;
    position: absolute;
    z-index: 3;
    top: -($handleSize/2) + ($sliderHeight/2);
    box-shadow: 0 1px 3px rgba(black, .5),
                inset 0 0 0 2px white;
    
    &__value {
      transition: background-color .2s, 
                  box-shadow .1s,
                  transform .1s;
      box-sizing: border-box;
      width: $valueWidth;
      text-align: center;
      padding: 10px;
      background-color: $primary;
      border-radius: $roundness;
      color: white;
      left: -($valueWidth/2 - $handleSize/2);
      top: -55px;
      position: absolute;
      white-space: nowrap;
      border-top: 1px solid darken($primary, 10%);
      box-shadow: 0 -4px 1px rgba(black, .07),
                  0 -5px 20px rgba(black, .3);
        
      &:before {
        transition: border-top-color .2s;
        position: absolute;
        bottom: -10px;
        left: calc(50% - 10px);
        content: "";
        width: 0; 
        height: 0; 
        border-left: 10px solid transparent;
        border-right: 10px solid transparent;
        border-top: 10px solid;
        border-top-color: $primary;
      }
        
      &:after {
        content: " cm";
      }
    }
  }
  
  &__fill {
    position: absolute;
    top: 0;
    z-index: 1;
    height: 100%;
    background-color: $primary;
    border-radius: $roundness;
  }
  
  &__labels {
    position: absolute;
    width: 100%;
    z-index: 2;
    display: flex;
    justify-content: space-between;
    
    &__label {
      font-size: 0.75em;
      position: relative;
      padding-top: 15px;
      color: $secondary;
      
      &:before {
        position: absolute;
        top: 0;
        left: 50%;
        transform: translateX(-50%);
        content: "";
        width: 1px;
        height: $labelMarkerHeight - 3px;
        border-radius: 1px;
        background-color: rgba($secondary, .5);
      }
      
      &:first-child:before,
      &:last-child:before{ 
        height: $labelMarkerHeight;
        width: 2px;
      }
      
      &:first-child:before { background-color: $primary }
      &:last-child:before { background-color: $secondary }
      
      &:first-child { transform: translateX(-48%) }
      &:last-child { transform: translateX(48%) }
    }
  }
  
  // active state
  &.rangeslider--active {
    .rangeslider__handle {
      &, *      { background-color: lighten($primary, 10%) }
      *:before  { border-top-color: lighten($primary, 10%) }
    }
    
    .rangeslider__handle__value { 
      transform: translateY(-5px);
      box-shadow: "0 -3px 2px rgba(black,0.04)",
      box-shadow: 0 -3px 2px rgba(black,0.15) 
                  
    }
  }
}
    </style>
    <style>
        
        [18, 52], [19, 54], [20, 42], [21, 55], [22, 56], [23, 57],
        [24, 60], [25, 50], [26, 52], [27, 51], [28, 49], [29, 53],
        [30, 55], [31, 60], [32, 61], [33, 59], [34, 62], [35, 65],
        [36, 62], [37, 58], [38, 55], [39, 61], [40, 64], [41, 65],
        [42, 63], [43, 66], [44, 67], [45, 69], [46, 69], [47, 70],
        [48, 72], [49, 68], [50, 66], [51, 65], [52, 67], [53, 70],
        [54, 71], [55, 72], [56, 73], [57, 75], [58, 70], [59, 68],
        [60, 64], [61, 60], [62, 65], [63, 67], [64, 68], [65, 69],
        [66, 70], [67, 72], [68, 75], [69, 80]
      ]);

      var options = {
        hAxis: {
          title: 'Time'
        },
        vAxis: {
          title: 'Popularity'
        },
        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

      chart.draw(data, options);
    }
    </style>
</head>
<body>
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
               <div class="container-fluid">
                   <div class="row-cols-lg-auto">
                          <div class="col-lg-6" style="font-size:x-large">
             <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">NOTES</button>
                              <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h1 class=" modal-title text-center w3-animate-input w3-animate-left" style="background-color:royalblue;font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;color:white;border:solid thick"><strong><u style="text-underline-position:below">Strategy Notes</u></strong></h1>
      </div>
      <div class="modal-body">
        <div class="container-fluid">
            <div class="row">
               <div class="col-lg-12">
                   <ul class="list-inline list-group-item list-unstyled">
                       <li><strong> <i class="glyphicon glyphicon-list"></i></strong></li>
                       <li><strong> <i class="glyphicon glyphicon-header"></i></strong></li>
                       <li><strong> <i class="glyphicon glyphicon-bold"></i></strong></li>
                       <li><strong> <i class="glyphicon glyphicon-italic"></i></strong></li>
                       <li><strong> <i class="fa fa-paragraph"></i></strong></li>
                       <li><strong> <i class="fa fa-quote-right"></i></strong></li>
                   </ul>
                   <br />
                   <asp:TextBox ID="TextNotes" CssClass="form-control form-container" TextMode="MultiLine" runat="server"></asp:TextBox>
                   </div>
               </div>
            </div>
        </div>
      </div>
      <div class="modal-footer">
        <center>
            <button type="button" class="btn btn-info" data-dismiss="modal">SAVE</button>
                <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                       <button type="button" class="btn btn-info" data-dismiss="modal">Edit</button>
                                                </center>
                                            </div>
                                        </div>
                                    </div>
                               </div>
                          </div>
                   </div>
           </section>
           <section class="col-lg-12">
               <div class="container-fluid">
  <div class="row">
    <div class="col-lg-12">
        <div class="warpper">
            <input class="radio" id="one" name="group" type="radio" checked />
             <input class="radio" id="two" name="group" type="radio" />
              <input class="radio" id="three" name="group" type="radio" />
                <input class="radio" id="four" name="group" type="radio" />
                    <div class="tabs">
                        <label class="tab" id="one-tab" for="one">Pay off Charts</label>
                            <label class="tab" id="two-tab" for="two">Future Charts</label>
                                    <label class="tab" id="three-tab" for="three">GREEKS</label>
                                        <label class="tab" id="four-tab" for="four">Profit & Loss</label>
                        </div>
                        <div class="panels">
                            <div class="panel" id="one-panel" style="width:200%">
                                <div class="panel-title">PAY OFF CHARTS</div>
                                    <div id="container"></div>
                                <button id="large">Large</button>
                                <button id="small">Small</button>
                                <button id="auto">Auto</button>
                                <script type="text/javascript">
                                Highcharts.getJSON('https://demo-live-data.highcharts.com/aapl-c.json', data => {
    const chart = Highcharts.stockChart('container', {
        chart: {
            height: 400
        },

        title: {
            text: 'Highcharts Stock Responsive Chart'
        },

        subtitle: {
            text: 'Click small/large buttons or change window size to test responsiveness'
        },

        rangeSelector: {
            selected: 1
        },

        series: [{
            name: 'AAPL Stock Price',
            data: data,
            type: 'area',
            threshold: null,
            tooltip: {
                valueDecimals: 2
            }
        }],

        responsive: {
            rules: [{
                condition: {
                    maxWidth: 500
                },
                chartOptions: {
                    chart: {
                        height: 300
                    },
                    subtitle: {
                        text: null
                    },
                    navigator: {
                        enabled: false
                    }
                }
            }]
        }
    });

    document.getElementById('small').addEventListener('click', () => {
        chart.setSize(400);
    });

    document.getElementById('large').addEventListener('click', () => {
        chart.setSize(800);
    });

    document.getElementById('auto').addEventListener('click', () => {
        chart.setSize(null);
    });
});
                                </script>
                        </div>
                            <div class="panel" id="two-panel"  style="width:200%">
                                <div class="panel-title">FUTURE CHARTS</div>
                                    
                        </div>
  <div class="panel" id="three-panel">
    <div class="panel-title">Note on Prerequisites</div>
    <p>We recommend that you complete Learn HTML before learning CSS.</p>
  </div>
  <div class="panel" id="four-panel">
      <div class="panel-title">Note on Progress</div>
      <p>We recommend that you complete Learn HTML before learning CSS For Progress.</p>
  </div>
  </div>
</div>

                            </div>
                        </div>
                    </div>
           </section>
    </form>
</body>
</html>

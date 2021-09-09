<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Charts</title>
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
</head>
<body>
    <form id="form1" runat="server">
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
            dataPoints : dataPoints
      }]
    }],
    navigator: {
      slider: {
        minimum: new Date(2018,04, 01),
        maximum: new Date(2018,06, 01)
      }
    }
  }); 
  $.getJSON("https://canvasjs.com/data/docs/btcusd2018.json", function(data) {  
    for(var i = 0; i < data.length; i++){
        dataPoints.push({ x: new Date(data[i].date), y: Number(data[i].high) });
    }
      for (var j = 0; j < data.length; j++) {
          dataPoints.push({ x: new Date(data[j].date), y: Number(data[j].low) });
      }
    stockChart.render();
  });
}
</script>
        <div>
        </div>
    </form>
</body>
</html>

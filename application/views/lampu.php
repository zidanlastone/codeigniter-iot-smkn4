<!DOCTYPE html>
<html lang="en">
<head>
<title>SmartHome:Kendali Lampu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="<?=base_url().'assets/bootstrap4/css/bootstrap.min.css'?>">
    <script src="<?=base_url().'assets/jquery/jquery-3.3.1.min.js'?>"></script>
    <script src="<?=base_url().'assets/popper/popper.min.js'?>"></script>
    <script src="<?=base_url().'assets/bootstrap4/js/bootstrap.min.js'?>"></script>
    <!-- Toogle Slider -->
    <style>
    .switch {
      position: relative;
      display: inline-block;
      width: 60px;
      height: 34px;
    }
    .switch input { 
      opacity: 0;
      width: 0;
      height: 0;
    }
    .slider {
      position: absolute;
      cursor: pointer;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-color: #ccc;
      -webkit-transition: .4s;
      transition: .4s;
    }
    .slider:before {
      position: absolute;
      content: "";
      height: 26px;
      width: 26px;
      left: 4px;
      bottom: 4px;
      background-color: white;
      -webkit-transition: .4s;
      transition: .4s;
    }
    input:checked + .slider {
      background-color: #2196F3;
    }
    input:focus + .slider {
      box-shadow: 0 0 1px #2196F3;
    }
    input:checked + .slider:before {
      -webkit-transform: translateX(26px);
      -ms-transform: translateX(26px);
      transform: translateX(26px);
    }
</style>
</head>
<body>
<div class="container">

  <nav class="navbar navbar-expand-lg navbar-light bg-light rounded">
  <a class="navbar-brand" href="#">
    <img src="<?=base_url().'assets/img/Lampu2.jpg'?>" width="30" height="30" class="d-inline-block align-top" alt="">
    Smart Home: Kendali Lampu
  </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>


  <div class="row mt-4">
    <div class="col-sm"> <!--Col -->
    <div class="card"> <!--Card -->
      <div class="card-header">Lampu1</div>
      <div class="card-body"><div id="Lampu1"></div></div>
      <div class="card-footer">  <!--Card Footer-->
        <label class="switch">
          <input type="checkbox" id="Lampu1Slider" onClick="SentLampuAjax('Lampu1')">
          <span class="slider"></span>
        </label>                              
      </div><!--Card Footer-->
    </div><!--Card -->   
    </div><!--Col -->
    <div class="col-sm">
    <div class="card"> <!--Card -->
      <div class="card-header">Lampu2</div>
      <div class="card-body"><div id="Lampu2"></div></div>
      <div class="card-footer">  <!--Card Footer-->
        <label class="switch">
          <input type="checkbox" id="Lampu2Slider" onClick="SentLampuAjax('Lampu2')">
          <span class="slider"></span>
        </label>                              
      </div><!--Card Footer-->
    </div><!--Card -->
    </div>
    <div class="col-sm">
    <div class="card"> <!--Card -->
      <div class="card-header">Lampu3</div>
      <div class="card-body"><div id="Lampu3"></div></div>
      <div class="card-footer">  <!--Card Footer-->
        <label class="switch">
          <input type="checkbox" id="Lampu3Slider" onClick="SentLampuAjax('Lampu3')">
          <span class="slider"></span>
        </label>                              
      </div><!--Card Footer-->
    </div><!--Card -->
    </div>
    <div class="col-sm">
    <div class="card"> <!--Card -->
      <div class="card-header">Lampu4</div>
      <div class="card-body"><div id="Lampu4"></div></div>
      <div class="card-footer">  <!--Card Footer-->
        <label class="switch">
          <input type="checkbox" id="Lampu4Slider" onClick="SentLampuAjax('Lampu4')">
          <span class="slider"></span>
        </label>                              
      </div><!--Card Footer-->
    </div><!--Card -->
    </div>
  </div>
</div> <!-- Container -->
<script>
  $('document').ready(function () {
      var lampu = "";
      var alat = "";
      var nilai =0;
      var temp = "";
      setInterval(function () {
        getRealData('Lampu1');
        getRealData('Lampu2');
        getRealData('Lampu3');
        getRealData('Lampu4');
      },
        5000);//request every x seconds
    }); 

    function getRealData(lampu) {
          alat = "";
          nilai = "";
          temp = "";
          $.ajax({
            type : 'GET',
            url: '<?php echo base_url();?>api/stb/baca/?alat='+lampu+'&all=1',
            dataType: 'json',
            cache: false,
            success: function(data) {
                alat = data['data'][0]['alat'];
                nilai = data['data'][0]['nilai'];
                temp = data['data'][0]['waktu'];
                if (nilai ==1)
                  {
                    $('#'+lampu).html(alat + ' ON ' + temp);
                    $( '#'+lampu+'Slider').attr('checked',true);
                  }
                else
                  {
                    $('#'+lampu).html(alat + ' OFF ' + temp);
                    $( '#'+lampu+'Slider').attr('checked',false);
                  }
              }
        });
    }
        
    function SentLampuAjax(lampu) {
          var nil = $('#'+lampu+'Slider').is(':checked');
          if(nil) 
            uri="<?php echo base_url();?>api/stb/lampu";
          else
            uri="<?php echo base_url();?>api/stb/lampu";
          $.ajax({
              type : 'POST',
              url: uri,
              dataType: 'json',
              data: {
                'alat': lampu,
                'nilai': nil ? 1 : 0 
              },
              cache: false,
              success: function(data) {
                console.log(data);
                $('#'+lampu).html(data['status']+' '+data['message']);
              },
          });
    }
    </script>  
</body>
</html>

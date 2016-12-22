#= require highcharts

$ ->
  $( "#datepicker-1" ).datepicker({
        changeMonth: true,
        changeYear: true,
        yearRange : '-20:+10'
      })
  $( "#datepicker-1" ).datepicker( $.datepicker.regional[ "zh-TW" ] )
  $( "#datepicker-1" ).datepicker( "option", "dateFormat", "yy-mm-dd" )

  $( "#datepicker-2" ).datepicker({
        changeMonth: true,
        changeYear: true,
        yearRange : '-20:+10'
      })
  $( "#datepicker-2" ).datepicker( $.datepicker.regional[ "zh-TW" ] )
  $( "#datepicker-2" ).datepicker( "option", "dateFormat", "yy-mm-dd" )


  $('#product-statistics').highcharts
      title:
        text: null
      xAxis: 
        tickInterval: 5
        title:
          text: '周数'
          # text: data.stat.borrow_time_unit
      yAxis:
        title: text: '借阅数量(人次)'
      tooltip: valueSuffix: '人次'
      credits:
           enabled: false
      legend:
        enabled: false
      series: [
        {
          color: '#90c5fc'
          # data: data.stat.borrow_num
          pointStart: 1
          data: [
            1.0
            2.3
            2.8
            3.2
            4.5
            6.0
            6.6
            7.5
            8.5
            15.3
            32
            55
          ]
        }
      ]

  $('#device-statistics').highcharts
      title:
        text: null
      xAxis: 
        tickInterval: 5
        title:
          text: '周数'
          # text: data.stat.borrow_time_unit
      yAxis:
        title: text: '借阅数量(人次)'
      tooltip: valueSuffix: '人次'
      credits:
           enabled: false
      legend:
        enabled: false
      series: [
        {
          color: '#90c5fc'
          # data: data.stat.borrow_num
          pointStart: 1
          data: [
            1.0
            2.3
            2.8
            3.2
            4.5
            6.0
            6.6
            7.5
            8.5
            15.3
            32
            55
          ]
        }
      ]

  $('#active-statistics').highcharts
      title:
        text: null
      xAxis: 
        tickInterval: 5
        title:
          text: '周数'
          # text: data.stat.borrow_time_unit
      yAxis:
        title: text: '借阅数量(人次)'
      tooltip: valueSuffix: '人次'
      credits:
           enabled: false
      legend:
        enabled: false
      series: [
        {
          color: '#90c5fc'
          # data: data.stat.borrow_num
          pointStart: 1
          data: [
            1.0
            2.3
            2.8
            3.2
            4.5
            6.0
            6.6
            7.5
            8.5
            15.3
            32
            55
          ]
        }
      ]




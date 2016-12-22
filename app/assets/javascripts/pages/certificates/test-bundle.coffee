$ ->
  console.log "coffee loaded"

  $("#check-btn").click ->
    device_code = $("#device-code").val()
    if device_code == ""
      alert("请输入设备码")
      return
    $.getJSON "/certificates/" + device_code + "/check/", (data) ->
      console.log data
      $(".result-div").text(JSON.stringify(data))

  $("#valid-btn").click ->
    device_code = $("#device-code").val()
    if device_code == ""
      alert("请输入设备码")
      return
    product_code = $("#product-code").val()
    if product_code == ""
      alert("请输入产品码")
      return
    $.getJSON "/certificates/" + device_code + "/valid/?product_code=" + product_code, (data) ->
      console.log data
      $(".result-div").text(JSON.stringify(data))

  $("#reset-btn").click ->
    console.log "butten clicked"
    $.postJSON(
      '/certificates/reset',
      { },
      (data) ->
        console.log data
        if data.success != true
          alert("后台出错，请联系管理员！")
        else
          alert("重置成功")
      )

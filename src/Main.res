@val external document:Dom.document  = "document"
@send external global_query:(Dom.document,string)=>option<Dom.element> = "querySelector"
@send external query:(Dom.element,string)=>option<Dom.element>="querySelector"

// 修改這裏的代碼并不會熱更新，查看Chrome上面devtool的network發現返回的依然的舊代碼
Js.log([11])
switch document->global_query("#app") {
  |Some(app)=>{
    Js.log(app)
  }
  |_=>{
    Js.log("none")
  }
}

import router from '@ohos.router';
let msg: string = 'Index页面传来的数据'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Blank()
        Button('Next')
          .onClick(()=> {
            // 点击事件处理
            router.pushUrl({
              url: 'pages/Second',
              params: {
                src: msg,
              }
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
@Component
export struct CommonButtonWrapper {
  // 是否有动画
  animate: boolean = true
  // 按钮ui
  @BuilderParam contentUI: VoidCallback
  // 是否响应间隔
  useDebounce: boolean = true
  // 点击事件
  onClickEvent: VoidCallback = () => {
  }
  // 内部属性
  @State private isScale: boolean = false
  private lastClickTime: number = 0

  build() {
    Stack({ alignContent: Alignment.Center }) {
      if (this.contentUI) {
        this.contentUI()
      }
    }
    .scale(this.animate && this.isScale ? { x: 0.8, y: 0.9 } : { x: 1, y: 1 })
    .onClick(() => {
      if (this.useDebounce && !this.debounce()) {
        return
      }
      if (this.animate) {
        animateTo({
          duration: 100, curve: Curve.EaseIn, onFinish: () => {
            animateTo({ duration: 50, curve: Curve.EaseIn, }, () => {
              this.isScale = !this.isScale
            })
          }
        }, () => {
          this.isScale = !this.isScale
        })
      }
      this.onClickEvent()
    })
    .backgroundColor('red')
  }

  private debounce(): boolean {
    let now = Date.now()
    console.log(`======> ${now}`)

    if (now - this.lastClickTime > 500) {
      this.lastClickTime = now
      return true
    }
    return false
  }
}
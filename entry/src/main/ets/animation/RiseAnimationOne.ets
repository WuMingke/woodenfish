@Component
export struct RiseAnimationOne {
  @Link showRiseAnimationOne: boolean
  private content: string = '1111'
  private animationTime: number = 500

  aboutToAppear(): void {
    setTimeout(() => {
      this.showRiseAnimationOne = false
    }, this.animationTime)
  }

  build() {
    Text(this.content)
      .fontColor(Color.White)
      .fontSize(25)
      .fontWeight(FontWeight.Bold)
      .transition(
        TransitionEffect.asymmetric(
          TransitionEffect.translate({ x: 0, y: -100 })
            .animation({ playMode: PlayMode.Reverse, duration: this.animationTime })
            .combine(TransitionEffect.OPACITY), null
        )
      )
  }
}
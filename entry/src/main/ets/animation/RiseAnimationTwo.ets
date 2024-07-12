@Component
export struct RiseAnimationTwo {
  @Link showRiseAnimationTwo: boolean
  private content: string = '1111'
  private animationTime: number = 300

  aboutToAppear(): void {
    setTimeout(() => {
      this.showRiseAnimationTwo = false
    }, this.animationTime)
  }

  build() {
    Stack() {
      Text(this.content)
        .fontColor(Color.White)
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
        .opacity(0.6)
        .translate({ x: 0, y: -10 })
        .transition(
          TransitionEffect.asymmetric(
            TransitionEffect.translate({ x: 0, y: -100 })
              .animation({ playMode: PlayMode.Reverse, duration: 250 })
              .combine(TransitionEffect.OPACITY), null
          )
        )
      Text(this.content)
        .fontColor(Color.White)
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
        .transition(
          TransitionEffect.asymmetric(
            TransitionEffect.translate({ x: 0, y: -20 })
              .animation({ playMode: PlayMode.Reverse, duration: this.animationTime })
              .combine(TransitionEffect.OPACITY), null
          )
        )
    }
  }
}
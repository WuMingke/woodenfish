import { CommonButtonWrapper } from '../../widget/CommonButtonWrapper'
import { CommonNavDestination } from '../../widget/CommonNavDestination'

@Component
struct MainPage {
  @Consume('pageStack') pageStack: NavPathStack
  @State showRiseAnimationOne: boolean = false

  build() {
    CommonNavDestination() {
      Stack() {

        CommonButtonWrapper({
          useDebounce: false, onClickEvent: () => {
            if (!this.showRiseAnimationOne) {
              this.showRiseAnimationOne = !this.showRiseAnimationOne
            }
          }
        }) {
          Image($r('app.media.muyu'))
            .width(200)
            .height(200)
        }

      }
      .backgroundColor('red')

      .width('100%')
      .height('100%')
    }
  }
}

@Builder
export function MainPageBuilder() {
  MainPage()
}

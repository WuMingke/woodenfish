import { CommonNavDestination } from '../../widget/CommonNavDestination'

@Component
struct MainPage {
  @Consume('pageStack') pageStack: NavPathStack

  build() {
    CommonNavDestination() {
      Column() {
        Button(`main page`)
      }
      .width('100%')
      .height('100%')
    }
  }
}

@Builder
export function MainPageBuilder() {
  MainPage()
}

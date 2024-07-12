import { AppPageName } from '../constant/AppPageName'
import { CommonNavDestination } from '../widget/CommonNavDestination'

@Component
struct TestPage {
  @Consume('pageStack') pageStack: NavPathStack

  build() {
    CommonNavDestination() {
      Column() {
        Button(`to MainPage`).onClick(() => {
          this.pageStack.pushPathByName(AppPageName.mainPage, null)
        })
        Button(`to SettingsPage`).onClick(() => {
          this.pageStack.pushPathByName(AppPageName.settingsPage, null)
        })
      }
      .width('100%')
      .height('100%')
    }
  }
}

@Builder
export function TestPageBuilder() {
  TestPage()
}
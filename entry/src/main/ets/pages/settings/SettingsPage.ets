import { AppConstant } from '../../constant/AppConstant';
import { CommonNavDestination } from '../../widget/CommonNavDestination'

@Component
struct SettingsPage {
  build() {
    CommonNavDestination({ useSafeArea: true }) {
      Column() {
        Text(`this is SettingsPage`).fontColor('white')
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Center)
      .backgroundColor('black')
    }
  }
}

@Builder
export function SettingsPageBuilder() {
  SettingsPage()
}
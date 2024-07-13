import { RiseAnimationOne } from '../animation/RiseAnimationOne';
import { RiseAnimationTwo } from '../animation/RiseAnimationTwo';
import { AppConstant } from '../constant/AppConstant';
import { AppPageName } from '../constant/AppPageName';
import { CommonButtonWrapper } from '../widget/CommonButtonWrapper';

// todo useSharedStorage ???
// TODO(MingKE): 组件化
@Entry({ routeName: '', storage: LocalStorage.getShared() })
@Component
struct Index {
  // @State showRiseAnimationOne: boolean = false
  @Provide('pageStack') pageStack: NavPathStack = new NavPathStack()

  build() {
    Column() {
      Navigation(this.pageStack)
        .onAppear(() => {
          this.pageStack.pushPathByName(AppPageName.testPage, null)
        })
        .hideNavBar(true)
        .mode(NavigationMode.Stack)
      // .margin({ top: this.topRectHeight })

      // if (this.showRiseAnimationOne) {
      //   RiseAnimationTwo({
      //     showRiseAnimationTwo: this.showRiseAnimationOne,
      //     content: "123123",
      //   })
      // }
      //
      // CommonButtonWrapper({
      //   useDebounce: false, onClickEvent: () => {
      //     if (!this.showRiseAnimationOne) {
      //       this.showRiseAnimationOne = !this.showRiseAnimationOne
      //     }
      //   }
      // }) {
      //   Text('add')
      //     .width(100)
      //     .height(100)
      //     .backgroundColor('green')
      // }

    }
    // .justifyContent(FlexAlign.End)
    .height('100%')
    .width('100%')
    .backgroundColor('red')
  }
}
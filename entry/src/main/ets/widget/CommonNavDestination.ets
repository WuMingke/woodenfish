import { AppConstant } from '../constant/AppConstant';

@Component
export struct CommonNavDestination {
  // 使用安全区
  private useSafeArea: boolean = true
  private topRectHeight: string = `${AppStorage.get<number>(AppConstant.topRectHeight)}px`;
  // 模式
  private uiMode: NavDestinationMode = NavDestinationMode.STANDARD
  // 界面
  @BuilderParam contentUI: VoidCallback

  build() {
    NavDestination() {
      this.contentUI()
    }
    .hideTitleBar(true)
    .mode(this.uiMode)
    .margin({ top: this.useSafeArea ? this.topRectHeight : 0 })
  }
}
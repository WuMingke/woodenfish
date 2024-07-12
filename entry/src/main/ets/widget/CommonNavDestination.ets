import { AppConstant } from '../constant/AppConstant';

@Component
export struct CommonNavDestination {
  private useSafeArea: boolean = true
  private topRectHeight: string = `${AppStorage.get<number>(AppConstant.topRectHeight)}px`;
  @BuilderParam contentUI: VoidCallback

  build() {
    NavDestination() {
      this.contentUI()
    }
    .hideTitleBar(true)
    .margin({ top: this.useSafeArea ? this.topRectHeight : 0 })
  }
}
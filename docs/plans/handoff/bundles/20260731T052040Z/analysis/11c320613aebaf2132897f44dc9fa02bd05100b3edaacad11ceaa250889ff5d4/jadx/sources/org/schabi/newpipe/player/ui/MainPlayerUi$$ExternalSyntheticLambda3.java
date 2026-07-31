package org.schabi.newpipe.player.ui;

import j$.util.Optional;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3;
import org.schabi.newpipe.player.helper.PlayerHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MainPlayerUi$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MainPlayerUi f$0;

    public /* synthetic */ MainPlayerUi$$ExternalSyntheticLambda3(MainPlayerUi mainPlayerUi, int i) {
        this.$r8$classId = i;
        this.f$0 = mainPlayerUi;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        MainPlayerUi mainPlayerUi = this.f$0;
        switch (i) {
            case 0:
                mainPlayerUi.binding.itemsListPanel.setTranslationY((-r2.getHeight()) * 5.0f);
                break;
            default:
                if (mainPlayerUi.isVerticalVideo && (!mainPlayerUi.isLandscape() || !PlayerHelper.globalScreenOrientationLocked(mainPlayerUi.context))) {
                    mainPlayerUi.toggleFullscreen();
                    break;
                } else {
                    Optional.ofNullable(mainPlayerUi.player.fragmentListener).ifPresent(new Player$$ExternalSyntheticLambda3(13));
                    break;
                }
                break;
        }
    }
}

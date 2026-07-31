package org.schabi.newpipe.player;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.player.ui.PlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;

    public /* synthetic */ Player$$ExternalSyntheticLambda2(boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((PlayerUi) obj).onShuffleModeEnabledChanged(this.f$0);
                break;
            default:
                ((PlayerUi) obj).onMuteUnmuteChanged(!this.f$0);
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}

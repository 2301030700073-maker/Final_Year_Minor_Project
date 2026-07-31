package com.google.common.collect;

import java.util.function.IntFunction;
import org.schabi.newpipe.player.mediasession.MediaSessionPlayerUi;
import org.schabi.newpipe.player.notification.NotificationActionData;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ImmutableList$$ExternalSyntheticLambda0 implements IntFunction {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ImmutableList$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.IntFunction
    public final Object apply(int i) {
        int i2 = this.$r8$classId;
        Object obj = this.f$0;
        switch (i2) {
            case 0:
                return ((ImmutableList) obj).get(i);
            case 1:
                return ((IndexedImmutableSet) obj).get(i);
            default:
                return NotificationActionData.fromNotificationActionEnum(((MediaSessionPlayerUi) obj).player, i);
        }
    }
}

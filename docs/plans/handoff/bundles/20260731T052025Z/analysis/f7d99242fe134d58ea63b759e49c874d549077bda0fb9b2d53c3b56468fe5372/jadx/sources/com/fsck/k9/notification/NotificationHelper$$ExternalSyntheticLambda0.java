package com.fsck.k9.notification;

import kotlin.jvm.functions.Function0;
import net.thunderbird.feature.notification.api.NotificationId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NotificationHelper$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;

    public /* synthetic */ NotificationHelper$$ExternalSyntheticLambda0(int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        int i2 = this.f$0;
        switch (i) {
        }
        return "dismiss() called with: id = ".concat(NotificationId.m1040toStringimpl(i2));
    }
}

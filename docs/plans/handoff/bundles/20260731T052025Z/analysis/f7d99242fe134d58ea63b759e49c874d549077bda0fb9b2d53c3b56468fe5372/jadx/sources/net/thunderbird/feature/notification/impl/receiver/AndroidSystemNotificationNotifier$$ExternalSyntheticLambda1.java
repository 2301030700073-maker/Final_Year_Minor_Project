package net.thunderbird.feature.notification.impl.receiver;

import kotlin.jvm.functions.Function0;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidSystemNotificationNotifier$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AuthenticationErrorNotification f$0;

    public /* synthetic */ AndroidSystemNotificationNotifier$$ExternalSyntheticLambda1(AuthenticationErrorNotification authenticationErrorNotification, int i) {
        this.$r8$classId = i;
        this.f$0 = authenticationErrorNotification;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        AuthenticationErrorNotification authenticationErrorNotification = this.f$0;
        switch (i) {
            case 0:
                return "show() called with: notification = " + authenticationErrorNotification;
            default:
                return "toAndroidNotification() called with systemNotification = " + authenticationErrorNotification;
        }
    }
}

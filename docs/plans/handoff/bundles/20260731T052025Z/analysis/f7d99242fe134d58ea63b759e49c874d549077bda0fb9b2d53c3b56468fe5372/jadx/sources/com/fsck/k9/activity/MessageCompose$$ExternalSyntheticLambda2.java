package com.fsck.k9.activity;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.regex.Pattern;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.notification.api.command.outcome.Failure;
import net.thunderbird.feature.notification.api.command.outcome.Success;
import net.thunderbird.feature.notification.api.sender.compat.NotificationSenderCompat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageCompose$$ExternalSyntheticLambda2 implements NotificationSenderCompat.OnResultListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageCompose f$0;

    public /* synthetic */ MessageCompose$$ExternalSyntheticLambda2(MessageCompose messageCompose, int i) {
        this.$r8$classId = i;
        this.f$0 = messageCompose;
    }

    @Override // net.thunderbird.feature.notification.api.sender.compat.NotificationSenderCompat.OnResultListener
    public final void onResult(Outcome outcome) {
        int i = this.$r8$classId;
        MessageCompose messageCompose = this.f$0;
        switch (i) {
            case 0:
                Pattern pattern = MessageCompose.PREFIX;
                outcome.getClass();
                if (!(outcome instanceof Outcome.Success)) {
                    if (!(outcome instanceof Outcome.Failure)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        break;
                    } else {
                        Failure failure = (Failure) ((Outcome.Failure) outcome).error;
                        Pattern pattern2 = MessageCompose.PREFIX;
                        Log.e(null, "Failed to dismiss in-app notification. Failure = " + failure, new Object[0]);
                        break;
                    }
                } else {
                    messageCompose.activeInAppNotifications.remove(Integer.valueOf(((Success) ((Outcome.Success) outcome).data).getRawNotificationId()));
                    break;
                }
            default:
                Pattern pattern3 = MessageCompose.PREFIX;
                outcome.getClass();
                if (!(outcome instanceof Outcome.Success)) {
                    if (!(outcome instanceof Outcome.Failure)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        break;
                    } else {
                        Failure failure2 = (Failure) ((Outcome.Failure) outcome).error;
                        Pattern pattern4 = MessageCompose.PREFIX;
                        Log.e(null, "Failed to send in-app notification. Failure = " + failure2, new Object[0]);
                        break;
                    }
                } else {
                    messageCompose.activeInAppNotifications.add(Integer.valueOf(((Success) ((Outcome.Success) outcome).data).getRawNotificationId()));
                    break;
                }
        }
    }
}

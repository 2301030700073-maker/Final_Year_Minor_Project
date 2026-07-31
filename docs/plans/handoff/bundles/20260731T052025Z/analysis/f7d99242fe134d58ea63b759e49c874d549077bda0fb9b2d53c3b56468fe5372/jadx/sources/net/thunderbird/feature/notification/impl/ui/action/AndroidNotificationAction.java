package net.thunderbird.feature.notification.impl.ui.action;

import android.app.PendingIntent;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidNotificationAction {
    public final Integer icon;
    public final PendingIntent pendingIntent;
    public final String title;

    public AndroidNotificationAction(Integer num, String str, PendingIntent pendingIntent) {
        this.icon = num;
        this.title = str;
        this.pendingIntent = pendingIntent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidNotificationAction)) {
            return false;
        }
        AndroidNotificationAction androidNotificationAction = (AndroidNotificationAction) obj;
        return Intrinsics.areEqual(this.icon, androidNotificationAction.icon) && Intrinsics.areEqual(this.title, androidNotificationAction.title) && Intrinsics.areEqual(this.pendingIntent, androidNotificationAction.pendingIntent);
    }

    public final int hashCode() {
        Integer num = this.icon;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.title;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        PendingIntent pendingIntent = this.pendingIntent;
        return hashCode2 + (pendingIntent != null ? pendingIntent.hashCode() : 0);
    }

    public final String toString() {
        return "AndroidNotificationAction(icon=" + this.icon + ", title=" + this.title + ", pendingIntent=" + this.pendingIntent + ")";
    }
}

package app.k9mail.feature.widget.unread;

import android.content.Intent;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetData {
    public final Intent clickIntent;
    public final UnreadWidgetConfiguration configuration;
    public final String title;
    public final int unreadCount;

    public UnreadWidgetData(UnreadWidgetConfiguration unreadWidgetConfiguration, String str, int i, Intent intent) {
        unreadWidgetConfiguration.getClass();
        str.getClass();
        this.configuration = unreadWidgetConfiguration;
        this.title = str;
        this.unreadCount = i;
        this.clickIntent = intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnreadWidgetData)) {
            return false;
        }
        UnreadWidgetData unreadWidgetData = (UnreadWidgetData) obj;
        return Intrinsics.areEqual(this.configuration, unreadWidgetData.configuration) && Intrinsics.areEqual(this.title, unreadWidgetData.title) && this.unreadCount == unreadWidgetData.unreadCount && this.clickIntent.equals(unreadWidgetData.clickIntent);
    }

    public final int hashCode() {
        return this.clickIntent.hashCode() + ((Modifier.CC.m(this.configuration.hashCode() * 31, this.title, 31) + this.unreadCount) * 31);
    }

    public final String toString() {
        return "UnreadWidgetData(configuration=" + this.configuration + ", title=" + this.title + ", unreadCount=" + this.unreadCount + ", clickIntent=" + this.clickIntent + ")";
    }
}

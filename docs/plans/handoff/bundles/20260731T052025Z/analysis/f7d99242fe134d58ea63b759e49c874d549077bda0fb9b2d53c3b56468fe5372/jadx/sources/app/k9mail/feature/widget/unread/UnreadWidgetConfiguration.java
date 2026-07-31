package app.k9mail.feature.widget.unread;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetConfiguration {
    public final String accountUuid;
    public final int appWidgetId;
    public final Long folderId;

    public UnreadWidgetConfiguration(int i, Long l, String str) {
        this.appWidgetId = i;
        this.accountUuid = str;
        this.folderId = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnreadWidgetConfiguration)) {
            return false;
        }
        UnreadWidgetConfiguration unreadWidgetConfiguration = (UnreadWidgetConfiguration) obj;
        return this.appWidgetId == unreadWidgetConfiguration.appWidgetId && this.accountUuid.equals(unreadWidgetConfiguration.accountUuid) && Intrinsics.areEqual(this.folderId, unreadWidgetConfiguration.folderId);
    }

    public final int hashCode() {
        int m = Modifier.CC.m(this.appWidgetId * 31, this.accountUuid, 31);
        Long l = this.folderId;
        return m + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        return "UnreadWidgetConfiguration(appWidgetId=" + this.appWidgetId + ", accountUuid=" + this.accountUuid + ", folderId=" + this.folderId + ")";
    }
}

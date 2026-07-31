package net.thunderbird.feature.notification.api.content;

import coil3.size.ViewSizeResolver;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.notification.api.NotificationSeverity;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.style.InAppNotificationStyle;
import okio.Okio;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SentFolderNotFoundNotification extends AppNotification implements InAppNotification {
    public final String accountUuid;
    public final Set actions;
    public final String contentText;
    public final NotificationSeverity severity;
    public final String title;

    public SentFolderNotFoundNotification(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.accountUuid = str;
        this.title = str2;
        this.contentText = str2;
        this.severity = NotificationSeverity.Warning;
        this.actions = Validate.setOf(new NotificationAction.AssignSentFolder(str));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SentFolderNotFoundNotification)) {
            return false;
        }
        SentFolderNotFoundNotification sentFolderNotFoundNotification = (SentFolderNotFoundNotification) obj;
        return Intrinsics.areEqual(this.accountUuid, sentFolderNotFoundNotification.accountUuid) && Intrinsics.areEqual(this.title, sentFolderNotFoundNotification.title);
    }

    @Override // net.thunderbird.feature.notification.api.content.Notification
    public final String getAccountUuid() {
        return this.accountUuid;
    }

    @Override // net.thunderbird.feature.notification.api.content.Notification
    public final Set getActions() {
        return this.actions;
    }

    @Override // net.thunderbird.feature.notification.api.content.Notification
    public final String getContentText() {
        return this.contentText;
    }

    @Override // net.thunderbird.feature.notification.api.content.InAppNotification
    public final InAppNotificationStyle getInAppNotificationStyle() {
        return Okio.inAppNotificationStyle(new KoinModuleKt$$ExternalSyntheticLambda0(24));
    }

    @Override // net.thunderbird.feature.notification.api.content.Notification
    public final NotificationSeverity getSeverity() {
        return this.severity;
    }

    @Override // net.thunderbird.feature.notification.api.content.Notification
    public final String getTitle() {
        return this.title;
    }

    public final int hashCode() {
        return this.title.hashCode() + (this.accountUuid.hashCode() * 31);
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("SentFolderNotFoundNotification(accountUuid=", this.accountUuid, ", title=", this.title, ")");
    }
}

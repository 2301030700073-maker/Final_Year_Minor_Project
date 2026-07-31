package net.thunderbird.feature.notification.api.content;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import com.fsck.k9.R;
import java.util.Set;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.notification.api.NotificationChannel$Miscellaneous;
import net.thunderbird.feature.notification.api.NotificationSeverity;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.icon.NotificationIcon;
import net.thunderbird.feature.notification.api.ui.icon.NotificationIcons_androidKt;
import net.thunderbird.feature.notification.api.ui.style.InAppNotificationStyle;
import okio.Okio;
import okio.Path;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthenticationErrorNotification extends AppNotification implements InAppNotification, Notification {
    public static final Path.Companion Companion = new Path.Companion();
    public final int accountNumber;
    public final String accountUuid;
    public final SetBuilder actions;
    public final NotificationChannel$Miscellaneous channel;
    public final String contentText;
    public final NotificationIcon icon;
    public final InAppNotificationStyle inAppNotificationStyle;
    public final boolean isIncomingServerError;
    public final NotificationSeverity severity;
    public final String title;

    public AuthenticationErrorNotification(boolean z, String str, int i, String str2, String str3, NotificationChannel$Miscellaneous notificationChannel$Miscellaneous) {
        this.isIncomingServerError = z;
        this.accountUuid = str;
        this.accountNumber = i;
        this.title = str2;
        this.contentText = str3;
        this.channel = notificationChannel$Miscellaneous;
        ImageVector imageVector = NotificationIcons_androidKt.Warning;
        this.icon = new NotificationIcon(Integer.valueOf(R.drawable.ic_warning), NotificationIcons_androidKt.Warning);
        this.severity = NotificationSeverity.Fatal;
        SetBuilder setBuilder = new SetBuilder();
        NotificationAction updateIncomingServerSettings = z ? new NotificationAction.UpdateIncomingServerSettings(str, i) : new NotificationAction.UpdateOutgoingServerSettings(str, i);
        setBuilder.add(updateIncomingServerSettings);
        setBuilder.add(new NotificationAction.Tap(updateIncomingServerSettings));
        this.actions = Validate.build(setBuilder);
        this.inAppNotificationStyle = Okio.inAppNotificationStyle(new KoinModuleKt$$ExternalSyntheticLambda0(23));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationErrorNotification)) {
            return false;
        }
        AuthenticationErrorNotification authenticationErrorNotification = (AuthenticationErrorNotification) obj;
        return this.isIncomingServerError == authenticationErrorNotification.isIncomingServerError && Intrinsics.areEqual(this.accountUuid, authenticationErrorNotification.accountUuid) && this.accountNumber == authenticationErrorNotification.accountNumber && Intrinsics.areEqual(this.title, authenticationErrorNotification.title) && Intrinsics.areEqual(this.contentText, authenticationErrorNotification.contentText) && Intrinsics.areEqual(this.channel, authenticationErrorNotification.channel);
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
        return this.inAppNotificationStyle;
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
        int m = Modifier.CC.m((Modifier.CC.m((this.isIncomingServerError ? 1231 : 1237) * 31, this.accountUuid, 31) + this.accountNumber) * 31, this.title, 31);
        String str = this.contentText;
        return this.channel.hashCode() + ((m + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return "AuthenticationErrorNotification(isIncomingServerError=" + this.isIncomingServerError + ", accountUuid=" + this.accountUuid + ", accountNumber=" + this.accountNumber + ", title=" + this.title + ", contentText=" + this.contentText + ", channel=" + this.channel + ")";
    }
}

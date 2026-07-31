package net.thunderbird.feature.notification.impl.intent.action;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import androidx.core.app.NavUtils;
import app.k9mail.feature.account.edit.navigation.AccountEditRoute;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import kotlin.Pair;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UpdateServerSettingsNotificationActionIntentCreator implements NotificationActionIntentCreator {
    public final Application context;

    public UpdateServerSettingsNotificationActionIntentCreator(Application application, Logger logger) {
        this.context = application;
    }

    @Override // net.thunderbird.feature.notification.impl.intent.action.NotificationActionIntentCreator
    public final boolean accept(AuthenticationErrorNotification authenticationErrorNotification, NotificationAction notificationAction) {
        authenticationErrorNotification.getClass();
        notificationAction.getClass();
        if (authenticationErrorNotification instanceof AuthenticationErrorNotification) {
            return (notificationAction instanceof NotificationAction.UpdateIncomingServerSettings) || (notificationAction instanceof NotificationAction.UpdateOutgoingServerSettings);
        }
        return false;
    }

    @Override // net.thunderbird.feature.notification.impl.intent.action.NotificationActionIntentCreator
    public final PendingIntent create(AuthenticationErrorNotification authenticationErrorNotification, NotificationAction notificationAction) {
        Pair pair;
        authenticationErrorNotification.getClass();
        notificationAction.getClass();
        boolean z = notificationAction instanceof NotificationAction.UpdateIncomingServerSettings;
        Application application = this.context;
        if (z) {
            NotificationAction.UpdateIncomingServerSettings updateIncomingServerSettings = (NotificationAction.UpdateIncomingServerSettings) notificationAction;
            Integer valueOf = Integer.valueOf(updateIncomingServerSettings.accountNumber);
            int i = FeatureLauncherActivity.$r8$clinit;
            String str = updateIncomingServerSettings.accountUuid;
            str.getClass();
            new AccountEditRoute.IncomingServerSettings(str);
            Uri parse = Uri.parse("app://account/edit/incoming/".concat(str));
            Intent intent = new Intent(application, (Class<?>) FeatureLauncherActivity.class);
            intent.setData(parse);
            pair = new Pair(valueOf, intent);
        } else {
            if (!(notificationAction instanceof NotificationAction.UpdateOutgoingServerSettings)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) notificationAction, "Unsupported action: ");
                return null;
            }
            NotificationAction.UpdateOutgoingServerSettings updateOutgoingServerSettings = (NotificationAction.UpdateOutgoingServerSettings) notificationAction;
            Integer valueOf2 = Integer.valueOf(updateOutgoingServerSettings.accountNumber);
            int i2 = FeatureLauncherActivity.$r8$clinit;
            String str2 = updateOutgoingServerSettings.accountUuid;
            str2.getClass();
            new AccountEditRoute.OutgoingServerSettings(str2);
            Uri parse2 = Uri.parse("app://account/edit/outgoing/".concat(str2));
            Intent intent2 = new Intent(application, (Class<?>) FeatureLauncherActivity.class);
            intent2.setData(parse2);
            pair = new Pair(valueOf2, intent2);
        }
        return NavUtils.getActivity(application, ((Number) pair.first).intValue(), (Intent) pair.second, 134217728, false);
    }
}

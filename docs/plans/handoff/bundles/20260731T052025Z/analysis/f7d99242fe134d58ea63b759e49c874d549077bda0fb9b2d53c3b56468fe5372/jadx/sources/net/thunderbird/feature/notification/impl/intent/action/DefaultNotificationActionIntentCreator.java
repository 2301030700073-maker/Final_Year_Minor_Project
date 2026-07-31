package net.thunderbird.feature.notification.impl.intent.action;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Intent;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.app.NavUtils;
import kotlinx.io.Sink$CC;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultNotificationActionIntentCreator implements NotificationActionIntentCreator {
    public final Application applicationContext;
    public final Logger logger;

    public DefaultNotificationActionIntentCreator(Application application, Logger logger) {
        this.logger = logger;
        this.applicationContext = application;
    }

    @Override // net.thunderbird.feature.notification.impl.intent.action.NotificationActionIntentCreator
    public final boolean accept(AuthenticationErrorNotification authenticationErrorNotification, NotificationAction notificationAction) {
        authenticationErrorNotification.getClass();
        notificationAction.getClass();
        return true;
    }

    @Override // net.thunderbird.feature.notification.impl.intent.action.NotificationActionIntentCreator
    public final PendingIntent create(AuthenticationErrorNotification authenticationErrorNotification, NotificationAction notificationAction) {
        authenticationErrorNotification.getClass();
        notificationAction.getClass();
        Sink$CC.debug$default(this.logger, "DefaultNotificationActionIntentCreator", null, new SealedClassSerializer$$ExternalSyntheticLambda0(12, authenticationErrorNotification, notificationAction), 2);
        Application application = this.applicationContext;
        Intent launchIntentForPackage = application.getPackageManager().getLaunchIntentForPackage(application.getPackageName());
        if (launchIntentForPackage != null) {
            return NavUtils.getActivity(application, 1, launchIntentForPackage, 0, false);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Could not retrieve the launch intent from ", application.getPackageName()));
        return null;
    }
}

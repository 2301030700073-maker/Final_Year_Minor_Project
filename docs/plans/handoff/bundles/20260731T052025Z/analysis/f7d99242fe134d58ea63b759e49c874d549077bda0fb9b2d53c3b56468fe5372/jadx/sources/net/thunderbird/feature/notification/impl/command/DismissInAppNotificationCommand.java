package net.thunderbird.feature.notification.impl.command;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.notification.api.NotificationRegistry;
import net.thunderbird.feature.notification.api.command.NotificationCommand;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.api.receiver.NotificationNotifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DismissInAppNotificationCommand extends NotificationCommand {
    public final /* synthetic */ int $r8$classId;
    public final String featureFlagKey;
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final String logTag;
    public final Logger logger;
    public final NotificationRegistry notificationRegistry;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DismissInAppNotificationCommand(Logger logger, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, NotificationRegistry notificationRegistry, AuthenticationErrorNotification authenticationErrorNotification, NotificationNotifier notificationNotifier) {
        this("DismissSystemNotificationCommand", logger, inMemoryFeatureFlagProvider, notificationRegistry, authenticationErrorNotification, notificationNotifier);
        this.$r8$classId = 1;
        this.featureFlagKey = "use_notification_sender_for_system_notifications";
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object execute$suspendImpl(net.thunderbird.feature.notification.impl.command.DismissInAppNotificationCommand r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.impl.command.DismissInAppNotificationCommand.execute$suspendImpl(net.thunderbird.feature.notification.impl.command.DismissInAppNotificationCommand, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // net.thunderbird.feature.notification.api.command.NotificationCommand
    public final Object execute(Continuation continuation) {
        return execute$suspendImpl(this, (ContinuationImpl) continuation);
    }

    /* renamed from: getFeatureFlagKey-MdUMsqc, reason: not valid java name */
    public final String m1047getFeatureFlagKeyMdUMsqc() {
        switch (this.$r8$classId) {
        }
        return this.featureFlagKey;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DismissInAppNotificationCommand(Logger logger, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, NotificationRegistry notificationRegistry, InAppNotification inAppNotification, NotificationNotifier notificationNotifier) {
        this("DismissInAppNotificationCommand", logger, inMemoryFeatureFlagProvider, notificationRegistry, inAppNotification, notificationNotifier);
        this.$r8$classId = 0;
        this.featureFlagKey = "display_in_app_notifications";
    }

    public DismissInAppNotificationCommand(String str, Logger logger, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, NotificationRegistry notificationRegistry, Notification notification, NotificationNotifier notificationNotifier) {
        super(notification, notificationNotifier);
        this.logTag = str;
        this.logger = logger;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.notificationRegistry = notificationRegistry;
    }
}

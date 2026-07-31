package net.thunderbird.feature.notification.impl.command;

import kotlin.jvm.functions.Function0;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.notification.api.command.NotificationCommand;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;
import net.thunderbird.feature.notification.api.receiver.NotificationNotifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplaySystemNotificationCommand extends NotificationCommand {
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final Function0 isAppInBackground;
    public final Logger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisplaySystemNotificationCommand(Logger logger, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, AuthenticationErrorNotification authenticationErrorNotification, NotificationNotifier notificationNotifier) {
        super(authenticationErrorNotification, notificationNotifier);
        UtcOffsetJvmKt$$ExternalSyntheticLambda0 utcOffsetJvmKt$$ExternalSyntheticLambda0 = new UtcOffsetJvmKt$$ExternalSyntheticLambda0(25);
        authenticationErrorNotification.getClass();
        this.logger = logger;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.isAppInBackground = utcOffsetJvmKt$$ExternalSyntheticLambda0;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // net.thunderbird.feature.notification.api.command.NotificationCommand
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof net.thunderbird.feature.notification.impl.command.DisplaySystemNotificationCommand$execute$1
            if (r0 == 0) goto L13
            r0 = r7
            net.thunderbird.feature.notification.impl.command.DisplaySystemNotificationCommand$execute$1 r0 = (net.thunderbird.feature.notification.impl.command.DisplaySystemNotificationCommand$execute$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            net.thunderbird.feature.notification.impl.command.DisplaySystemNotificationCommand$execute$1 r0 = new net.thunderbird.feature.notification.impl.command.DisplaySystemNotificationCommand$execute$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r7 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r7
            r0.<init>(r6, r7)
        L1a:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            kotlin.ResultKt.throwOnFailure(r7)
            goto L9b
        L28:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0 r7 = new okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0
            r1 = 18
            r7.<init>(r1, r6)
            r1 = 2
            net.thunderbird.core.logging.Logger r4 = r6.logger
            java.lang.String r5 = "DisplaySystemNotificationCommand"
            kotlinx.io.Sink$CC.debug$default(r4, r5, r2, r7, r1)
            net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider r7 = r6.featureFlagProvider
            java.lang.String r1 = "use_notification_sender_for_system_notifications"
            net.thunderbird.core.featureflag.FeatureFlagResult r7 = r7.m1030providedj3aFNw(r1)
            boolean r7 = r7.isDisabledOrUnavailable()
            if (r7 == 0) goto L5f
            net.thunderbird.feature.notification.api.command.outcome.UnsupportedCommand r7 = new net.thunderbird.feature.notification.api.command.outcome.UnsupportedCommand
            net.thunderbird.feature.notification.api.command.outcome.UnsupportedCommand$Reason$FeatureFlagDisabled r0 = new net.thunderbird.feature.notification.api.command.outcome.UnsupportedCommand$Reason$FeatureFlagDisabled
            r0.<init>(r1)
            r7.<init>(r6, r0)
            net.thunderbird.core.outcome.Outcome$Failure r6 = new net.thunderbird.core.outcome.Outcome$Failure
            r6.<init>(r7, r2)
            return r6
        L5f:
            net.thunderbird.feature.notification.api.content.Notification r7 = r6.notification
            r1 = r7
            net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification r1 = (net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification) r1
            net.thunderbird.feature.notification.api.NotificationSeverity r1 = r1.severity
            int r1 = r1.ordinal()
            if (r1 == 0) goto L8e
            if (r1 == r3) goto L8e
            kotlin.jvm.functions.Function0 r1 = r6.isAppInBackground
            java.lang.Object r1 = r1.invoke()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L7d
            goto L8e
        L7d:
            boolean r1 = r7 instanceof net.thunderbird.feature.notification.api.content.InAppNotification
            if (r1 != 0) goto L82
            goto L8e
        L82:
            net.thunderbird.feature.notification.api.command.outcome.CommandExecutionFailed r7 = new net.thunderbird.feature.notification.api.command.outcome.CommandExecutionFailed
            r0 = 6
            r7.<init>(r0, r6)
            net.thunderbird.core.outcome.Outcome$Failure r6 = new net.thunderbird.core.outcome.Outcome$Failure
            r6.<init>(r7, r2)
            return r6
        L8e:
            r0.label = r3
            net.thunderbird.feature.notification.api.receiver.NotificationNotifier r1 = r6.notifier
            java.lang.Comparable r7 = r1.mo1043showMQcfKRA(r7, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r0) goto L9b
            return r0
        L9b:
            net.thunderbird.feature.notification.api.NotificationId r7 = (net.thunderbird.feature.notification.api.NotificationId) r7
            int r7 = r7.value
            net.thunderbird.feature.notification.api.command.outcome.Success$Executed r0 = new net.thunderbird.feature.notification.api.command.outcome.Success$Executed
            r0.<init>(r7, r6)
            net.thunderbird.core.outcome.Outcome$Success r6 = new net.thunderbird.core.outcome.Outcome$Success
            r6.<init>(r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.impl.command.DisplaySystemNotificationCommand.execute(kotlin.coroutines.Continuation):java.lang.Object");
    }
}

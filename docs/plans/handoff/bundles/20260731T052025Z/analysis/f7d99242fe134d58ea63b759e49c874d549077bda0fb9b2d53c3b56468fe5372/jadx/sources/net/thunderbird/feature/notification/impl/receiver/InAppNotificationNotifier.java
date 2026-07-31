package net.thunderbird.feature.notification.impl.receiver;

import com.fsck.k9.notification.NotificationHelper$$ExternalSyntheticLambda0;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.notification.api.NotificationId;
import net.thunderbird.feature.notification.api.NotificationRegistry;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.api.receiver.NotificationNotifier;
import net.thunderbird.feature.notification.impl.DefaultNotificationRegistry;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InAppNotificationNotifier implements NotificationNotifier {
    public final Logger logger;
    public final NotificationRegistry notificationRegistry;

    public InAppNotificationNotifier(Logger logger, NotificationRegistry notificationRegistry) {
        this.logger = logger;
        this.notificationRegistry = notificationRegistry;
    }

    @Override // net.thunderbird.feature.notification.api.receiver.NotificationNotifier
    /* renamed from: dismiss-XSUv0x4 */
    public final void mo1042dismissXSUv0x4(int i) {
        Sink$CC.verbose$default(this.logger, "InAppNotificationNotifier", null, new NotificationHelper$$ExternalSyntheticLambda0(i, 5), 2);
        DefaultNotificationRegistry defaultNotificationRegistry = (DefaultNotificationRegistry) this.notificationRegistry;
        Notification m1044getRiqCqwk = defaultNotificationRegistry.m1044getRiqCqwk(i);
        if (m1044getRiqCqwk == null || !(m1044getRiqCqwk instanceof InAppNotification)) {
            return;
        }
        defaultNotificationRegistry.unregister(m1044getRiqCqwk);
    }

    @Override // net.thunderbird.feature.notification.api.receiver.NotificationNotifier
    /* renamed from: show-MQcfKRA */
    public final Comparable mo1043showMQcfKRA(Notification notification, ContinuationImpl continuationImpl) {
        InAppNotification inAppNotification = (InAppNotification) notification;
        Sink$CC.verbose$default(this.logger, "InAppNotificationNotifier", null, new ResourceFileSystem$$ExternalSyntheticLambda0(20, inAppNotification), 2);
        DefaultNotificationRegistry defaultNotificationRegistry = (DefaultNotificationRegistry) this.notificationRegistry;
        NotificationId m1045get_qXnNqc = defaultNotificationRegistry.m1045get_qXnNqc(inAppNotification);
        return m1045get_qXnNqc != null ? new NotificationId(m1045get_qXnNqc.value) : defaultNotificationRegistry.m1046registerMQcfKRA(inAppNotification, continuationImpl);
    }
}

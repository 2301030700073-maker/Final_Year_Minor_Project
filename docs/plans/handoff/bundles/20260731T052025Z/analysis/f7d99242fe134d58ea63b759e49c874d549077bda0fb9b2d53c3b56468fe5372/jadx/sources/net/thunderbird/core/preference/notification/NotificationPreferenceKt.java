package net.thunderbird.core.preference.notification;

import java.util.List;
import net.thunderbird.core.common.notification.NotificationActionTokens;
import net.thunderbird.core.preference.LockScreenNotificationVisibility;
import net.thunderbird.core.preference.NotificationQuickDelete;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NotificationPreferenceKt {
    public static final LockScreenNotificationVisibility NOTIFICATION_PREFERENCE_DEFAULT_LOCK_SCREEN_NOTIFICATION_VISIBILITY;
    public static final List NOTIFICATION_PREFERENCE_DEFAULT_MESSAGE_ACTIONS_ORDER;
    public static final NotificationQuickDelete NOTIFICATION_PREFERENCE_DEFAULT_QUICK_DELETE_BEHAVIOUR;

    static {
        List list = NotificationActionTokens.DEFAULT_ORDER;
        NOTIFICATION_PREFERENCE_DEFAULT_MESSAGE_ACTIONS_ORDER = NotificationActionTokens.DEFAULT_ORDER;
        NOTIFICATION_PREFERENCE_DEFAULT_QUICK_DELETE_BEHAVIOUR = NotificationQuickDelete.ALWAYS;
        NOTIFICATION_PREFERENCE_DEFAULT_LOCK_SCREEN_NOTIFICATION_VISIBILITY = LockScreenNotificationVisibility.MESSAGE_COUNT;
    }
}

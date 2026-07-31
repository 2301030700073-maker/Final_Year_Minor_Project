package com.fsck.k9.ui.settings.notificationactions;

import androidx.transition.Transition;
import com.fsck.k9.R;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageNotificationAction {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ MessageNotificationAction[] $VALUES;
    public static final Transition.AnonymousClass1 Companion;
    public final int iconRes;
    public final int labelRes;
    public final String token;

    static {
        MessageNotificationAction[] messageNotificationActionArr = {new MessageNotificationAction("Reply", 0, "reply", R.string.notification_action_reply, R.drawable.ic_reply), new MessageNotificationAction("MarkAsRead", 1, "mark_as_read", R.string.notification_action_mark_as_read, R.drawable.ic_mark_email_read), new MessageNotificationAction("Delete", 2, "delete", R.string.notification_action_delete, R.drawable.ic_delete), new MessageNotificationAction("Star", 3, "star", R.string.notification_action_star, R.drawable.ic_star), new MessageNotificationAction("Archive", 4, "archive", R.string.notification_action_archive, R.drawable.ic_archive), new MessageNotificationAction("Spam", 5, "spam", R.string.notification_action_spam, R.drawable.ic_report)};
        $VALUES = messageNotificationActionArr;
        $ENTRIES = new EnumEntriesList(messageNotificationActionArr);
        Companion = new Transition.AnonymousClass1();
    }

    public MessageNotificationAction(String str, int i, String str2, int i2, int i3) {
        this.token = str2;
        this.labelRes = i2;
        this.iconRes = i3;
    }

    public static MessageNotificationAction valueOf(String str) {
        return (MessageNotificationAction) Enum.valueOf(MessageNotificationAction.class, str);
    }

    public static MessageNotificationAction[] values() {
        return (MessageNotificationAction[]) $VALUES.clone();
    }
}

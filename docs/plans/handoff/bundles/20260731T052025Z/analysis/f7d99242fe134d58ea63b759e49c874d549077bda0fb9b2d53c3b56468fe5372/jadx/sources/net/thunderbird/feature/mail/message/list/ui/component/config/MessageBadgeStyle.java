package net.thunderbird.feature.mail.message.list.ui.component.config;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageBadgeStyle {
    public static final /* synthetic */ MessageBadgeStyle[] $VALUES;
    public static final MessageBadgeStyle New;
    public static final MessageBadgeStyle Unread;

    static {
        MessageBadgeStyle messageBadgeStyle = new MessageBadgeStyle("New", 0);
        New = messageBadgeStyle;
        MessageBadgeStyle messageBadgeStyle2 = new MessageBadgeStyle("Unread", 1);
        Unread = messageBadgeStyle2;
        $VALUES = new MessageBadgeStyle[]{messageBadgeStyle, messageBadgeStyle2};
    }

    public static MessageBadgeStyle valueOf(String str) {
        return (MessageBadgeStyle) Enum.valueOf(MessageBadgeStyle.class, str);
    }

    public static MessageBadgeStyle[] values() {
        return (MessageBadgeStyle[]) $VALUES.clone();
    }
}

package net.thunderbird.feature.mail.message.list.internal.ui;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListStateDescription {
    public static final /* synthetic */ MessageListStateDescription[] $VALUES;
    public static final MessageListStateDescription ActiveNewMessage;
    public static final MessageListStateDescription ActiveReadMessage;
    public static final MessageListStateDescription ActiveUnreadMessage;
    public static final MessageListStateDescription NewMessage;
    public static final MessageListStateDescription ReadMessage;
    public static final MessageListStateDescription SelectedNewMessage;
    public static final MessageListStateDescription SelectedReadMessage;
    public static final MessageListStateDescription SelectedUnreadMessage;
    public static final MessageListStateDescription UnreadMessage;

    static {
        MessageListStateDescription messageListStateDescription = new MessageListStateDescription("NewMessage", 0);
        NewMessage = messageListStateDescription;
        MessageListStateDescription messageListStateDescription2 = new MessageListStateDescription("ReadMessage", 1);
        ReadMessage = messageListStateDescription2;
        MessageListStateDescription messageListStateDescription3 = new MessageListStateDescription("UnreadMessage", 2);
        UnreadMessage = messageListStateDescription3;
        MessageListStateDescription messageListStateDescription4 = new MessageListStateDescription("ActiveNewMessage", 3);
        ActiveNewMessage = messageListStateDescription4;
        MessageListStateDescription messageListStateDescription5 = new MessageListStateDescription("ActiveReadMessage", 4);
        ActiveReadMessage = messageListStateDescription5;
        MessageListStateDescription messageListStateDescription6 = new MessageListStateDescription("ActiveUnreadMessage", 5);
        ActiveUnreadMessage = messageListStateDescription6;
        MessageListStateDescription messageListStateDescription7 = new MessageListStateDescription("SelectedNewMessage", 6);
        SelectedNewMessage = messageListStateDescription7;
        MessageListStateDescription messageListStateDescription8 = new MessageListStateDescription("SelectedReadMessage", 7);
        SelectedReadMessage = messageListStateDescription8;
        MessageListStateDescription messageListStateDescription9 = new MessageListStateDescription("SelectedUnreadMessage", 8);
        SelectedUnreadMessage = messageListStateDescription9;
        $VALUES = new MessageListStateDescription[]{messageListStateDescription, messageListStateDescription2, messageListStateDescription3, messageListStateDescription4, messageListStateDescription5, messageListStateDescription6, messageListStateDescription7, messageListStateDescription8, messageListStateDescription9};
    }

    public static MessageListStateDescription valueOf(String str) {
        return (MessageListStateDescription) Enum.valueOf(MessageListStateDescription.class, str);
    }

    public static MessageListStateDescription[] values() {
        return (MessageListStateDescription[]) $VALUES.clone();
    }
}

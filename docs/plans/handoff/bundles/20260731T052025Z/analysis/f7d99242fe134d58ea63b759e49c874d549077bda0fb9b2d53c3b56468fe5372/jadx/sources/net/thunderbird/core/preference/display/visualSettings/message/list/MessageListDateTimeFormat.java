package net.thunderbird.core.preference.display.visualSettings.message.list;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListDateTimeFormat {
    public static final /* synthetic */ MessageListDateTimeFormat[] $VALUES;
    public static final MessageListDateTimeFormat Contextual;

    static {
        MessageListDateTimeFormat messageListDateTimeFormat = new MessageListDateTimeFormat("Contextual", 0);
        Contextual = messageListDateTimeFormat;
        $VALUES = new MessageListDateTimeFormat[]{messageListDateTimeFormat, new MessageListDateTimeFormat("Full", 1), new MessageListDateTimeFormat("ISO", 2)};
    }

    public static MessageListDateTimeFormat valueOf(String str) {
        return (MessageListDateTimeFormat) Enum.valueOf(MessageListDateTimeFormat.class, str);
    }

    public static MessageListDateTimeFormat[] values() {
        return (MessageListDateTimeFormat[]) $VALUES.clone();
    }
}

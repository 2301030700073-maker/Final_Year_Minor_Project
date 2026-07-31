package net.thunderbird.core.android.account;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageFormat {
    public static final /* synthetic */ MessageFormat[] $VALUES;
    public static final MessageFormat AUTO;
    public static final MessageFormat HTML;
    public static final MessageFormat TEXT;

    static {
        MessageFormat messageFormat = new MessageFormat("TEXT", 0);
        TEXT = messageFormat;
        MessageFormat messageFormat2 = new MessageFormat("HTML", 1);
        HTML = messageFormat2;
        MessageFormat messageFormat3 = new MessageFormat("AUTO", 2);
        AUTO = messageFormat3;
        $VALUES = new MessageFormat[]{messageFormat, messageFormat2, messageFormat3};
    }

    public static MessageFormat valueOf(String str) {
        return (MessageFormat) Enum.valueOf(MessageFormat.class, str);
    }

    public static MessageFormat[] values() {
        return (MessageFormat[]) $VALUES.clone();
    }
}

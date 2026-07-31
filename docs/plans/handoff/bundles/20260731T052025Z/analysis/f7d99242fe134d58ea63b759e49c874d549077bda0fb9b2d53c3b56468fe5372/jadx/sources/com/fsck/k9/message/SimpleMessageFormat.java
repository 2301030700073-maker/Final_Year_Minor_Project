package com.fsck.k9.message;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SimpleMessageFormat {
    public static final /* synthetic */ SimpleMessageFormat[] $VALUES;
    public static final SimpleMessageFormat HTML;
    public static final SimpleMessageFormat TEXT;

    static {
        SimpleMessageFormat simpleMessageFormat = new SimpleMessageFormat("TEXT", 0);
        TEXT = simpleMessageFormat;
        SimpleMessageFormat simpleMessageFormat2 = new SimpleMessageFormat("HTML", 1);
        HTML = simpleMessageFormat2;
        $VALUES = new SimpleMessageFormat[]{simpleMessageFormat, simpleMessageFormat2};
    }

    public static SimpleMessageFormat valueOf(String str) {
        return (SimpleMessageFormat) Enum.valueOf(SimpleMessageFormat.class, str);
    }

    public static SimpleMessageFormat[] values() {
        return (SimpleMessageFormat[]) $VALUES.clone();
    }
}

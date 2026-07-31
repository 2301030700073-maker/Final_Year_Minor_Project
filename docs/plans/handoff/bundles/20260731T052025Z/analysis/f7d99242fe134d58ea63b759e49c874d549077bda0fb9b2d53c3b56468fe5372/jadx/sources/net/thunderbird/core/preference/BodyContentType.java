package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BodyContentType {
    public static final /* synthetic */ BodyContentType[] $VALUES;
    public static final BodyContentType TEXT_HTML;
    public static final BodyContentType TEXT_PLAIN;

    static {
        BodyContentType bodyContentType = new BodyContentType("TEXT_HTML", 0);
        TEXT_HTML = bodyContentType;
        BodyContentType bodyContentType2 = new BodyContentType("TEXT_PLAIN", 1);
        TEXT_PLAIN = bodyContentType2;
        $VALUES = new BodyContentType[]{bodyContentType, bodyContentType2};
    }

    public static BodyContentType valueOf(String str) {
        return (BodyContentType) Enum.valueOf(BodyContentType.class, str);
    }

    public static BodyContentType[] values() {
        return (BodyContentType[]) $VALUES.clone();
    }
}

package net.thunderbird.core.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MimeType {
    public static final /* synthetic */ MimeType[] $VALUES;
    public static final MimeType JPEG;
    public static final MimeType PDF;
    public static final MimeType PNG;

    static {
        MimeType mimeType = new MimeType("JPEG", 0);
        JPEG = mimeType;
        MimeType mimeType2 = new MimeType("PNG", 1);
        PNG = mimeType2;
        MimeType mimeType3 = new MimeType("PDF", 2);
        PDF = mimeType3;
        $VALUES = new MimeType[]{mimeType, mimeType2, mimeType3};
    }

    public static MimeType valueOf(String str) {
        return (MimeType) Enum.valueOf(MimeType.class, str);
    }

    public static MimeType[] values() {
        return (MimeType[]) $VALUES.clone();
    }
}

package com.fsck.k9.mail.internet;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecoderUtil$Encoding {
    public static final /* synthetic */ DecoderUtil$Encoding[] $VALUES;
    public static final DecoderUtil$Encoding B;
    public static final DecoderUtil$Encoding Q;

    static {
        DecoderUtil$Encoding decoderUtil$Encoding = new DecoderUtil$Encoding("Q", 0);
        Q = decoderUtil$Encoding;
        DecoderUtil$Encoding decoderUtil$Encoding2 = new DecoderUtil$Encoding("B", 1);
        B = decoderUtil$Encoding2;
        $VALUES = new DecoderUtil$Encoding[]{decoderUtil$Encoding, decoderUtil$Encoding2};
    }

    public static DecoderUtil$Encoding valueOf(String str) {
        return (DecoderUtil$Encoding) Enum.valueOf(DecoderUtil$Encoding.class, str);
    }

    public static DecoderUtil$Encoding[] values() {
        return (DecoderUtil$Encoding[]) $VALUES.clone();
    }
}

package com.google.zxing.qrcode.decoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public enum Mode {
    TERMINATOR(new int[]{0, 0, 0}),
    NUMERIC(new int[]{10, 12, 14}),
    ALPHANUMERIC(new int[]{9, 11, 13}),
    STRUCTURED_APPEND(new int[]{0, 0, 0}),
    BYTE(new int[]{8, 16, 16}),
    ECI(new int[]{0, 0, 0}),
    KANJI(new int[]{8, 10, 12}),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}),
    HANZI(new int[]{8, 10, 12});

    public final int[] characterCountBitsForVersions;

    Mode(int[] iArr) {
        this.characterCountBitsForVersions = iArr;
    }
}

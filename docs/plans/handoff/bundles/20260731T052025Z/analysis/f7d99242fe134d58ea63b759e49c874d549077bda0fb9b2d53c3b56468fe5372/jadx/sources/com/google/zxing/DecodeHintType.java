package com.google.zxing;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecodeHintType {
    public static final /* synthetic */ DecodeHintType[] $VALUES;
    public static final DecodeHintType CHARACTER_SET;
    public static final DecodeHintType NEED_RESULT_POINT_CALLBACK;
    public static final DecodeHintType TRY_HARDER;

    /* JADX INFO: Fake field, exist only in values array */
    DecodeHintType EF0;

    static {
        DecodeHintType decodeHintType = new DecodeHintType("OTHER", 0);
        DecodeHintType decodeHintType2 = new DecodeHintType("PURE_BARCODE", 1);
        DecodeHintType decodeHintType3 = new DecodeHintType("POSSIBLE_FORMATS", 2);
        DecodeHintType decodeHintType4 = new DecodeHintType("TRY_HARDER", 3);
        TRY_HARDER = decodeHintType4;
        DecodeHintType decodeHintType5 = new DecodeHintType("CHARACTER_SET", 4);
        CHARACTER_SET = decodeHintType5;
        DecodeHintType decodeHintType6 = new DecodeHintType("ALLOWED_LENGTHS", 5);
        DecodeHintType decodeHintType7 = new DecodeHintType("ASSUME_CODE_39_CHECK_DIGIT", 6);
        DecodeHintType decodeHintType8 = new DecodeHintType("ASSUME_GS1", 7);
        DecodeHintType decodeHintType9 = new DecodeHintType("RETURN_CODABAR_START_END", 8);
        DecodeHintType decodeHintType10 = new DecodeHintType("NEED_RESULT_POINT_CALLBACK", 9);
        NEED_RESULT_POINT_CALLBACK = decodeHintType10;
        $VALUES = new DecodeHintType[]{decodeHintType, decodeHintType2, decodeHintType3, decodeHintType4, decodeHintType5, decodeHintType6, decodeHintType7, decodeHintType8, decodeHintType9, decodeHintType10, new DecodeHintType("ALLOWED_EAN_EXTENSIONS", 10), new DecodeHintType("ALSO_INVERTED", 11)};
    }

    public static DecodeHintType valueOf(String str) {
        return (DecodeHintType) Enum.valueOf(DecodeHintType.class, str);
    }

    public static DecodeHintType[] values() {
        return (DecodeHintType[]) $VALUES.clone();
    }
}

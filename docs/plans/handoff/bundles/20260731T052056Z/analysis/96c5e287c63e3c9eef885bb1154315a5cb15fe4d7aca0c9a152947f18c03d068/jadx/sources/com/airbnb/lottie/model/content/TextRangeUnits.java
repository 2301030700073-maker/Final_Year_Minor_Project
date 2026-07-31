package com.airbnb.lottie.model.content;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextRangeUnits {
    private static final /* synthetic */ TextRangeUnits[] $VALUES;
    public static final TextRangeUnits INDEX;
    public static final TextRangeUnits PERCENT;

    static {
        TextRangeUnits textRangeUnits = new TextRangeUnits("PERCENT", 0);
        PERCENT = textRangeUnits;
        TextRangeUnits textRangeUnits2 = new TextRangeUnits("INDEX", 1);
        INDEX = textRangeUnits2;
        $VALUES = new TextRangeUnits[]{textRangeUnits, textRangeUnits2};
    }

    public static TextRangeUnits valueOf(String str) {
        return (TextRangeUnits) Enum.valueOf(TextRangeUnits.class, str);
    }

    public static TextRangeUnits[] values() {
        return (TextRangeUnits[]) $VALUES.clone();
    }
}

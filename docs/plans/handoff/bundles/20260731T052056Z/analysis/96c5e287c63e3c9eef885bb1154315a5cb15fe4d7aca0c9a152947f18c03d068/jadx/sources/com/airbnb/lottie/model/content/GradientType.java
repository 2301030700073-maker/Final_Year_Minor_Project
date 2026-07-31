package com.airbnb.lottie.model.content;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GradientType {
    private static final /* synthetic */ GradientType[] $VALUES;
    public static final GradientType LINEAR;
    public static final GradientType RADIAL;

    static {
        GradientType gradientType = new GradientType("LINEAR", 0);
        LINEAR = gradientType;
        GradientType gradientType2 = new GradientType("RADIAL", 1);
        RADIAL = gradientType2;
        $VALUES = new GradientType[]{gradientType, gradientType2};
    }

    public static GradientType valueOf(String str) {
        return (GradientType) Enum.valueOf(GradientType.class, str);
    }

    public static GradientType[] values() {
        return (GradientType[]) $VALUES.clone();
    }
}

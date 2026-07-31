package com.fasterxml.jackson.annotation;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OptBoolean {
    private static final /* synthetic */ OptBoolean[] $VALUES;
    public static final OptBoolean DEFAULT;
    public static final OptBoolean FALSE;
    public static final OptBoolean TRUE;

    static {
        OptBoolean optBoolean = new OptBoolean("TRUE", 0);
        TRUE = optBoolean;
        OptBoolean optBoolean2 = new OptBoolean("FALSE", 1);
        FALSE = optBoolean2;
        OptBoolean optBoolean3 = new OptBoolean("DEFAULT", 2);
        DEFAULT = optBoolean3;
        $VALUES = new OptBoolean[]{optBoolean, optBoolean2, optBoolean3};
    }

    public static OptBoolean valueOf(String str) {
        return (OptBoolean) Enum.valueOf(OptBoolean.class, str);
    }

    public static OptBoolean[] values() {
        return (OptBoolean[]) $VALUES.clone();
    }
}

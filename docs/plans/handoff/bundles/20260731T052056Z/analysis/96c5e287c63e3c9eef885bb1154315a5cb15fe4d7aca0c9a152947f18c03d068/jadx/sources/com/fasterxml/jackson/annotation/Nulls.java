package com.fasterxml.jackson.annotation;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Nulls {
    private static final /* synthetic */ Nulls[] $VALUES;
    public static final Nulls AS_EMPTY;
    public static final Nulls DEFAULT;
    public static final Nulls FAIL;
    public static final Nulls SET;
    public static final Nulls SKIP;

    static {
        Nulls nulls = new Nulls("SET", 0);
        SET = nulls;
        Nulls nulls2 = new Nulls("SKIP", 1);
        SKIP = nulls2;
        Nulls nulls3 = new Nulls("FAIL", 2);
        FAIL = nulls3;
        Nulls nulls4 = new Nulls("AS_EMPTY", 3);
        AS_EMPTY = nulls4;
        Nulls nulls5 = new Nulls("DEFAULT", 4);
        DEFAULT = nulls5;
        $VALUES = new Nulls[]{nulls, nulls2, nulls3, nulls4, nulls5};
    }

    public static Nulls valueOf(String str) {
        return (Nulls) Enum.valueOf(Nulls.class, str);
    }

    public static Nulls[] values() {
        return (Nulls[]) $VALUES.clone();
    }
}

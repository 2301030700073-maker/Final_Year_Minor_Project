package com.fasterxml.jackson.databind.cfg;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CoercionAction {
    private static final /* synthetic */ CoercionAction[] $VALUES;
    public static final CoercionAction AsEmpty;
    public static final CoercionAction AsNull;
    public static final CoercionAction Fail;
    public static final CoercionAction TryConvert;

    static {
        CoercionAction coercionAction = new CoercionAction("Fail", 0);
        Fail = coercionAction;
        CoercionAction coercionAction2 = new CoercionAction("TryConvert", 1);
        TryConvert = coercionAction2;
        CoercionAction coercionAction3 = new CoercionAction("AsNull", 2);
        AsNull = coercionAction3;
        CoercionAction coercionAction4 = new CoercionAction("AsEmpty", 3);
        AsEmpty = coercionAction4;
        $VALUES = new CoercionAction[]{coercionAction, coercionAction2, coercionAction3, coercionAction4};
    }

    public static CoercionAction valueOf(String str) {
        return (CoercionAction) Enum.valueOf(CoercionAction.class, str);
    }

    public static CoercionAction[] values() {
        return (CoercionAction[]) $VALUES.clone();
    }
}

package kotlin.reflect.jvm.internal.impl.resolve.constants;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntegerLiteralTypeConstructor$Companion$Mode {
    private static final /* synthetic */ IntegerLiteralTypeConstructor$Companion$Mode[] $VALUES;
    public static final IntegerLiteralTypeConstructor$Companion$Mode COMMON_SUPER_TYPE;
    public static final IntegerLiteralTypeConstructor$Companion$Mode INTERSECTION_TYPE;

    static {
        IntegerLiteralTypeConstructor$Companion$Mode integerLiteralTypeConstructor$Companion$Mode = new IntegerLiteralTypeConstructor$Companion$Mode("COMMON_SUPER_TYPE", 0);
        COMMON_SUPER_TYPE = integerLiteralTypeConstructor$Companion$Mode;
        IntegerLiteralTypeConstructor$Companion$Mode integerLiteralTypeConstructor$Companion$Mode2 = new IntegerLiteralTypeConstructor$Companion$Mode("INTERSECTION_TYPE", 1);
        INTERSECTION_TYPE = integerLiteralTypeConstructor$Companion$Mode2;
        $VALUES = new IntegerLiteralTypeConstructor$Companion$Mode[]{integerLiteralTypeConstructor$Companion$Mode, integerLiteralTypeConstructor$Companion$Mode2};
    }

    public static IntegerLiteralTypeConstructor$Companion$Mode valueOf(String str) {
        return (IntegerLiteralTypeConstructor$Companion$Mode) Enum.valueOf(IntegerLiteralTypeConstructor$Companion$Mode.class, str);
    }

    public static IntegerLiteralTypeConstructor$Companion$Mode[] values() {
        return (IntegerLiteralTypeConstructor$Companion$Mode[]) $VALUES.clone();
    }
}

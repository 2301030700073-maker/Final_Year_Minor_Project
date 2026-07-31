package kotlin.reflect.jvm.internal.impl.resolve.deprecation;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeprecationLevelValue {
    private static final /* synthetic */ DeprecationLevelValue[] $VALUES;
    public static final DeprecationLevelValue ERROR;
    public static final DeprecationLevelValue HIDDEN;
    public static final DeprecationLevelValue WARNING;

    static {
        DeprecationLevelValue deprecationLevelValue = new DeprecationLevelValue("WARNING", 0);
        WARNING = deprecationLevelValue;
        DeprecationLevelValue deprecationLevelValue2 = new DeprecationLevelValue("ERROR", 1);
        ERROR = deprecationLevelValue2;
        DeprecationLevelValue deprecationLevelValue3 = new DeprecationLevelValue("HIDDEN", 2);
        HIDDEN = deprecationLevelValue3;
        $VALUES = new DeprecationLevelValue[]{deprecationLevelValue, deprecationLevelValue2, deprecationLevelValue3};
    }

    public static DeprecationLevelValue valueOf(String str) {
        return (DeprecationLevelValue) Enum.valueOf(DeprecationLevelValue.class, str);
    }

    public static DeprecationLevelValue[] values() {
        return (DeprecationLevelValue[]) $VALUES.clone();
    }
}

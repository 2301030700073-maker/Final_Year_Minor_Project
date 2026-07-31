package kotlin.reflect.jvm.internal.impl.types;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeUsage {
    private static final /* synthetic */ TypeUsage[] $VALUES;
    public static final TypeUsage COMMON;
    public static final TypeUsage SUPERTYPE;

    static {
        TypeUsage typeUsage = new TypeUsage("SUPERTYPE", 0);
        SUPERTYPE = typeUsage;
        TypeUsage typeUsage2 = new TypeUsage("COMMON", 1);
        COMMON = typeUsage2;
        $VALUES = new TypeUsage[]{typeUsage, typeUsage2};
    }

    public static TypeUsage valueOf(String str) {
        return (TypeUsage) Enum.valueOf(TypeUsage.class, str);
    }

    public static TypeUsage[] values() {
        return (TypeUsage[]) $VALUES.clone();
    }
}

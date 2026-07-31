package kotlin.reflect.jvm.internal.impl.load.java.structure;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LightClassOriginKind {
    private static final /* synthetic */ LightClassOriginKind[] $VALUES;
    public static final LightClassOriginKind BINARY;
    public static final LightClassOriginKind SOURCE;

    static {
        LightClassOriginKind lightClassOriginKind = new LightClassOriginKind("SOURCE", 0);
        SOURCE = lightClassOriginKind;
        LightClassOriginKind lightClassOriginKind2 = new LightClassOriginKind("BINARY", 1);
        BINARY = lightClassOriginKind2;
        $VALUES = new LightClassOriginKind[]{lightClassOriginKind, lightClassOriginKind2};
    }

    public static LightClassOriginKind valueOf(String str) {
        return (LightClassOriginKind) Enum.valueOf(LightClassOriginKind.class, str);
    }

    public static LightClassOriginKind[] values() {
        return (LightClassOriginKind[]) $VALUES.clone();
    }
}

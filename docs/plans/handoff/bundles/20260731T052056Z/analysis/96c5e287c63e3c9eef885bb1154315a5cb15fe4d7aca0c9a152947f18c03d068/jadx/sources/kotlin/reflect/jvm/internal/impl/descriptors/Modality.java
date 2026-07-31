package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Modality {
    private static final /* synthetic */ Modality[] $VALUES;
    public static final Modality ABSTRACT;
    public static final Companion Companion;
    public static final Modality FINAL;
    public static final Modality OPEN;
    public static final Modality SEALED;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
    }

    static {
        Modality modality = new Modality("FINAL", 0);
        FINAL = modality;
        Modality modality2 = new Modality("SEALED", 1);
        SEALED = modality2;
        Modality modality3 = new Modality("OPEN", 2);
        OPEN = modality3;
        Modality modality4 = new Modality("ABSTRACT", 3);
        ABSTRACT = modality4;
        $VALUES = new Modality[]{modality, modality2, modality3, modality4};
        Companion = new Companion();
    }

    public static Modality valueOf(String str) {
        return (Modality) Enum.valueOf(Modality.class, str);
    }

    public static Modality[] values() {
        return (Modality[]) $VALUES.clone();
    }
}

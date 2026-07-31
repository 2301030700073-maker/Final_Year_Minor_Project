package kotlin.coroutines.jvm.internal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Boxing {
    public static ModuleNameRetriever$Cache cache;
    public static final ModuleNameRetriever$Cache notOnJava9 = new ModuleNameRetriever$Cache(null, null, null);

    public static final Double boxDouble(double d) {
        return new Double(d);
    }
}

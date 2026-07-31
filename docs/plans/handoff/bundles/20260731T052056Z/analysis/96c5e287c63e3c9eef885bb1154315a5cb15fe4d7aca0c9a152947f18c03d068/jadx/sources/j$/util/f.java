package j$.util;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class f extends RuntimeException {
    public static void a(Object obj, String str) {
        throw new f("Unsupported " + str + " :" + obj);
    }
}

package j$.util;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class g extends RuntimeException {
    public static void a(Object obj, String str) {
        throw new g("Unsupported " + str + " :" + obj);
    }
}

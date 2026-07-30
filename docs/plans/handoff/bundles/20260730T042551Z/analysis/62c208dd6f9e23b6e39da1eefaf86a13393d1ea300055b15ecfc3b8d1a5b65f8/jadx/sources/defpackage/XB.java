package defpackage;

/* loaded from: classes3.dex */
public final class XB {

    /* renamed from: do, reason: not valid java name */
    public static long f4470do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static VB f4471do;

    /* renamed from: do, reason: not valid java name */
    public static void m2797do(VB vb) {
        if (vb.f4050do != null || vb.f4054if != null) {
            throw new IllegalArgumentException();
        }
        if (vb.f4051do) {
            return;
        }
        synchronized (XB.class) {
            long j = f4470do + 8192;
            if (j > 65536) {
                return;
            }
            f4470do = j;
            vb.f4050do = f4471do;
            vb.f4053if = 0;
            vb.f4049do = 0;
            f4471do = vb;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static VB m2798if() {
        synchronized (XB.class) {
            VB vb = f4471do;
            if (vb == null) {
                return new VB();
            }
            f4471do = vb.f4050do;
            vb.f4050do = null;
            f4470do -= 8192;
            return vb;
        }
    }
}

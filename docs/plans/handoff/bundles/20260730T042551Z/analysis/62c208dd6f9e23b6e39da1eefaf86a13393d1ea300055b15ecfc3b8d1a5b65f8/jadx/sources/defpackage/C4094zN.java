package defpackage;

/* renamed from: zN, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4094zN {
    /* renamed from: do, reason: not valid java name */
    public static void m8792do(int i, int i2) {
        String m72do;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                m72do = AN.m72do("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    throw new IllegalArgumentException(V1.m2494case("negative size: ", i2));
                }
                m72do = AN.m72do("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(m72do);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8793for(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m8795new(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m8795new(i2, i3, "end index") : AN.m72do("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8794if(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m8795new(i, i2, "index"));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m8795new(int i, int i2, String str) {
        if (i < 0) {
            return AN.m72do("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return AN.m72do("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(V1.m2494case("negative size: ", i2));
    }
}

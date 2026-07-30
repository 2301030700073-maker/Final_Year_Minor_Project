package c.b.b.a1;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f3170a = new byte[0];

    public static final int a(a aVar, int i) {
        int i2 = aVar.e - aVar.f3164b;
        aVar.m(i);
        int i3 = 1;
        while (aVar.k() == i) {
            aVar.m(i);
            i3++;
        }
        int i4 = aVar.e;
        int i5 = aVar.f3164b;
        if (i2 <= i4 - i5) {
            if (i2 < 0) {
                throw new IllegalArgumentException(c.a.c.a.a.c("Bad position ", i2));
            }
            aVar.e = i5 + i2;
            return i3;
        }
        throw new IllegalArgumentException("Position " + i2 + " is beyond current " + (aVar.e - aVar.f3164b));
    }
}

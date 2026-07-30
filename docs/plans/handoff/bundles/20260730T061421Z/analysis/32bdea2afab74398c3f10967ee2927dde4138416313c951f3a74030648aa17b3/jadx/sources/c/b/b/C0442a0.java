package c.b.b;

/* renamed from: c.b.b.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0442a0 extends AbstractC0444b0 {
    public C0442a0(Y y) {
        super(null);
    }

    public static O c(Object obj, long j) {
        return (O) U0.k(obj, j);
    }

    @Override // c.b.b.AbstractC0444b0
    public void a(Object obj, long j) {
        c(obj, j).b();
    }

    @Override // c.b.b.AbstractC0444b0
    public void b(Object obj, Object obj2, long j) {
        O c2 = c(obj, j);
        O c3 = c(obj2, j);
        int size = c2.size();
        int size2 = c3.size();
        if (size > 0 && size2 > 0) {
            if (!c2.f()) {
                c2 = c2.d(size2 + size);
            }
            c2.addAll(c3);
        }
        if (size > 0) {
            c3 = c2;
        }
        U0.r(obj, j, c3);
    }
}

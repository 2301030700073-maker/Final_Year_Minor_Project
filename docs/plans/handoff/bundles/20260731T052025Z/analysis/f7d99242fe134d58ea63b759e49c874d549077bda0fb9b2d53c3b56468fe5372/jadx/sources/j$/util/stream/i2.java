package j$.util.stream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class i2 implements g2 {
    public final g2 a;
    public final g2 b;
    public final long c;

    public i2(g2 g2Var, g2 g2Var2) {
        this.a = g2Var;
        this.b = g2Var2;
        this.c = g2Var2.count() + g2Var.count();
    }

    @Override // j$.util.stream.g2
    public final g2 a(int i) {
        if (i == 0) {
            return this.a;
        }
        if (i == 1) {
            return this.b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.g2
    public final long count() {
        return this.c;
    }

    @Override // j$.util.stream.g2
    public final int s() {
        return 2;
    }

    @Override // j$.util.stream.g2
    public /* bridge */ /* synthetic */ f2 a(int i) {
        return (f2) a(i);
    }
}

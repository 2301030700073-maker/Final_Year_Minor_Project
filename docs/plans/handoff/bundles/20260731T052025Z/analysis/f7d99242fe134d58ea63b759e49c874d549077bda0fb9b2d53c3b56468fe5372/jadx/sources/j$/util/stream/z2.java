package j$.util.stream;

import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class z2 implements g2 {
    @Override // j$.util.stream.g2
    public g2 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.g2
    public final long count() {
        return 0L;
    }

    @Override // j$.util.stream.g2
    public /* synthetic */ g2 k(long j, long j2, IntFunction intFunction) {
        return v3.w(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.g2
    public final Object[] p(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    @Override // j$.util.stream.g2
    public final /* synthetic */ int s() {
        return 0;
    }

    public final void g(Object obj) {
    }

    public final void f(int i, Object obj) {
    }
}

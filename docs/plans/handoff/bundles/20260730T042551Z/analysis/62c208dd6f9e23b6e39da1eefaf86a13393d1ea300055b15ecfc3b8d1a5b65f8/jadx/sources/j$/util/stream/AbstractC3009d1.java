package j$.util.stream;

import java.util.function.IntFunction;

/* renamed from: j$.util.stream.d1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3009d1 implements I0 {
    AbstractC3009d1() {
    }

    @Override // j$.util.stream.I0
    public I0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return 0L;
    }

    public final void f(int i, Object obj) {
    }

    public final void g(Object obj) {
    }

    @Override // j$.util.stream.I0
    public /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.S(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    public final Object[] k(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int n() {
        return 0;
    }
}

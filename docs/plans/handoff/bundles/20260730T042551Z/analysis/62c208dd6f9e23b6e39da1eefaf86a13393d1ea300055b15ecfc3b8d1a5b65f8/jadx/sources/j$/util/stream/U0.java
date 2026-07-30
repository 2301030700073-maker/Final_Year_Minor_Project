package j$.util.stream;

import java.util.function.IntFunction;

/* loaded from: classes2.dex */
abstract class U0 extends K0 implements H0 {
    U0(H0 h0, H0 h02) {
        super(h0, h02);
    }

    @Override // j$.util.stream.H0
    public final Object b() {
        long count = count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object newArray = newArray((int) count);
        f(0, newArray);
        return newArray;
    }

    @Override // j$.util.stream.H0
    public final void f(int i, Object obj) {
        I0 i0 = this.a;
        ((H0) i0).f(i, obj);
        ((H0) this.b).f(i + ((int) ((H0) i0).count()), obj);
    }

    @Override // j$.util.stream.H0
    public final void g(Object obj) {
        ((H0) this.a).g(obj);
        ((H0) this.b).g(obj);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ Object[] k(IntFunction intFunction) {
        return AbstractC3117z0.I(this, intFunction);
    }

    public final String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.a, this.b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}

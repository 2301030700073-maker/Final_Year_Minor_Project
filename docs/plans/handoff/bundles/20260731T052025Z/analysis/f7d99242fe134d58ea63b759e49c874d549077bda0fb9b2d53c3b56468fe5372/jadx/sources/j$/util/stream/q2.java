package j$.util.stream;

import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class q2 extends i2 implements f2 {
    @Override // j$.util.stream.f2
    public final Object b() {
        long j = this.c;
        if (j >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        Object newArray = newArray((int) j);
        f(0, newArray);
        return newArray;
    }

    @Override // j$.util.stream.f2
    public final void f(int i, Object obj) {
        g2 g2Var = this.a;
        ((f2) g2Var).f(i, obj);
        ((f2) this.b).f(i + ((int) ((f2) g2Var).count()), obj);
    }

    @Override // j$.util.stream.f2
    public final void g(Object obj) {
        ((f2) this.a).g(obj);
        ((f2) this.b).g(obj);
    }

    @Override // j$.util.stream.g2
    public final /* synthetic */ Object[] p(IntFunction intFunction) {
        return v3.m(this, intFunction);
    }

    public final String toString() {
        long j = this.c;
        return j < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.a, this.b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(j));
    }
}

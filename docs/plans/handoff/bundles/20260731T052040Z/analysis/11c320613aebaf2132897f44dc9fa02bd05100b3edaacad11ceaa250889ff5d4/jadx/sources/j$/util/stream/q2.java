package j$.util.stream;

import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class q2 extends i2 implements f2 {
    @Override // j$.util.stream.f2
    public final Object b() {
        long j = this.c;
        if (j >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
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
    public final /* synthetic */ Object[] q(IntFunction intFunction) {
        return w3.m(this, intFunction);
    }

    public final String toString() {
        long j = this.c;
        return j < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.a, this.b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(j));
    }
}

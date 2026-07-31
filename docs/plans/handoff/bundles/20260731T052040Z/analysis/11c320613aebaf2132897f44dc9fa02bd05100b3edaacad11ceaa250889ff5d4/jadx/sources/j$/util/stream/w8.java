package j$.util.stream;

import java.util.function.DoublePredicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class w8 extends h5 {
    public final boolean b;

    public w8(h6 h6Var, o5 o5Var) {
        super(o5Var);
        this.b = true;
    }

    @Override // j$.util.stream.l5, j$.util.stream.o5
    public final void accept(double d) {
        if (this.b) {
            DoublePredicate doublePredicate = null;
            doublePredicate.test(d);
            throw null;
        }
    }

    @Override // j$.util.stream.h5, j$.util.stream.o5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.h5, j$.util.stream.o5
    public final boolean e() {
        return !this.b || this.a.e();
    }
}

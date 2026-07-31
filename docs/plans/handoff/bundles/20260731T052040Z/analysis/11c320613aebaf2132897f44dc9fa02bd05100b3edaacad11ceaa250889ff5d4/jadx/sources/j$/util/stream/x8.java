package j$.util.stream;

import java.util.function.DoublePredicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class x8 extends h5 implements z8 {
    public x8(h6 h6Var, o5 o5Var, boolean z) {
        super(o5Var);
    }

    @Override // j$.util.stream.l5, j$.util.stream.o5
    public final void accept(double d) {
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d);
        throw null;
    }

    @Override // j$.util.stream.z8
    public final long h() {
        return 0L;
    }
}

package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class i6 extends z0 {
    @Override // j$.util.stream.a
    public final g2 G(a aVar, Spliterator spliterator, IntFunction intFunction) {
        if (d7.SORTED.u(aVar.f)) {
            return aVar.m(spliterator, false, intFunction);
        }
        int[] iArr = (int[]) ((c2) aVar.m(spliterator, true, intFunction)).b();
        Arrays.sort(iArr);
        return new b3(iArr);
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        Objects.requireNonNull(o5Var);
        return d7.SORTED.u(i) ? o5Var : d7.SIZED.u(i) ? new n6(o5Var) : new f6(o5Var);
    }
}

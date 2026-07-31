package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class q5 extends e5 {
    public final /* synthetic */ long l;
    public final /* synthetic */ long m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q5(g5 g5Var, int i, long j, long j2) {
        super(g5Var, i);
        this.l = j;
        this.m = j2;
    }

    @Override // j$.util.stream.a
    public final g2 G(a aVar, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long v = aVar.v(spliterator);
        if (v > 0 && spliterator.hasCharacteristics(16384)) {
            a aVar2 = aVar;
            while (aVar2.e > 0) {
                aVar2 = aVar2.b;
            }
            return w3.y(aVar, z5.b(aVar2.E(), spliterator, this.l, this.m), true, intFunction);
        }
        if (d7.ORDERED.u(aVar.f)) {
            return (g2) new y5(this, aVar, spliterator, intFunction, this.l, this.m).invoke();
        }
        Spliterator P = aVar.P(spliterator);
        long j3 = this.l;
        long j4 = this.m;
        if (j3 <= v) {
            long j5 = v - j3;
            j = j4 >= 0 ? Math.min(j4, j5) : j5;
            j2 = 0;
        } else {
            j = j4;
            j2 = j3;
        }
        return w3.y(this, new d8(P, j2, j), true, intFunction);
    }

    @Override // j$.util.stream.a
    public final Spliterator H(a aVar, Spliterator spliterator) {
        long v = aVar.v(spliterator);
        if (v > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator P = aVar.P(spliterator);
            long j = this.l;
            return new x7(P, j, z5.c(j, this.m));
        }
        if (d7.ORDERED.u(aVar.f)) {
            return ((g2) new y5(this, aVar, spliterator, new d1(4), this.l, this.m).invoke()).spliterator();
        }
        Spliterator P2 = aVar.P(spliterator);
        long j2 = this.l;
        long j3 = this.m;
        if (j2 <= v) {
            long j4 = v - j2;
            j3 = j3 >= 0 ? Math.min(j3, j4) : j4;
            j2 = 0;
        }
        return new d8(P2, j2, j3);
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        return new p5(this, o5Var);
    }
}

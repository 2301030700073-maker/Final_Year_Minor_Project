package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class p5 extends z0 {
    public final /* synthetic */ long l;
    public final /* synthetic */ long m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p5(b1 b1Var, int i, long j, long j2) {
        super(b1Var, i);
        this.l = j;
        this.m = j2;
    }

    @Override // j$.util.stream.a
    public final g2 J(a aVar, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long F = aVar.F(spliterator);
        if (F > 0 && spliterator.hasCharacteristics(16384)) {
            a aVar2 = aVar;
            while (aVar2.e > 0) {
                aVar2 = aVar2.b;
            }
            return v3.C(aVar, v3.Y(aVar2.H(), spliterator, this.l, this.m), true);
        }
        if (z6.ORDERED.i(aVar.f)) {
            return (g2) new v5(this, aVar, spliterator, intFunction, this.l, this.m).invoke();
        }
        j$.util.u0 u0Var = (j$.util.u0) aVar.S(spliterator);
        long j3 = this.l;
        long j4 = this.m;
        if (j3 <= F) {
            long j5 = F - j3;
            j = j4 >= 0 ? Math.min(j4, j5) : j5;
            j2 = 0;
        } else {
            j = j4;
            j2 = j3;
        }
        return v3.C(this, new w7(u0Var, j2, j), true);
    }

    @Override // j$.util.stream.a
    public final Spliterator K(a aVar, Spliterator spliterator) {
        long F = aVar.F(spliterator);
        if (F > 0 && spliterator.hasCharacteristics(16384)) {
            j$.util.u0 u0Var = (j$.util.u0) aVar.S(spliterator);
            long j = this.l;
            return new q7(u0Var, j, v3.z(j, this.m));
        }
        if (z6.ORDERED.i(aVar.f)) {
            return ((g2) new v5(this, aVar, spliterator, new w0(22), this.l, this.m).invoke()).spliterator();
        }
        j$.util.u0 u0Var2 = (j$.util.u0) aVar.S(spliterator);
        long j2 = this.l;
        long j3 = this.m;
        if (j2 <= F) {
            long j4 = F - j2;
            j3 = j3 >= 0 ? Math.min(j3, j4) : j4;
            j2 = 0;
        }
        return new w7(u0Var2, j2, j3);
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        return new o5(this, l5Var);
    }
}

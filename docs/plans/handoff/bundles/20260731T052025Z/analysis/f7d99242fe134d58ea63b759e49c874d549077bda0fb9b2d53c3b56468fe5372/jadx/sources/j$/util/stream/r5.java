package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class r5 extends h1 {
    public final /* synthetic */ long l;
    public final /* synthetic */ long m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r5(j1 j1Var, int i, long j, long j2) {
        super(j1Var, i);
        this.l = j;
        this.m = j2;
    }

    @Override // j$.util.stream.a
    public final g2 J(a aVar, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long B = aVar.B(spliterator);
        if (B > 0 && spliterator.hasCharacteristics(16384)) {
            a aVar2 = aVar;
            while (aVar2.e > 0) {
                aVar2 = aVar2.b;
            }
            return v3.E(aVar, v3.y(aVar2.H(), spliterator, this.l, this.m), true);
        }
        if (z6.ORDERED.u(aVar.f)) {
            return (g2) new v5(this, aVar, spliterator, intFunction, this.l, this.m).invoke();
        }
        j$.util.y0 y0Var = (j$.util.y0) aVar.S(spliterator);
        long j3 = this.l;
        long j4 = this.m;
        if (j3 <= B) {
            long j5 = B - j3;
            j = j4 >= 0 ? Math.min(j4, j5) : j5;
            j2 = 0;
        } else {
            j = j4;
            j2 = j3;
        }
        return v3.E(this, new x7(y0Var, j2, j), true);
    }

    @Override // j$.util.stream.a
    public final Spliterator K(a aVar, Spliterator spliterator) {
        long B = aVar.B(spliterator);
        if (B > 0 && spliterator.hasCharacteristics(16384)) {
            j$.util.y0 y0Var = (j$.util.y0) aVar.S(spliterator);
            long j = this.l;
            return new r7(y0Var, j, v3.A(j, this.m));
        }
        if (z6.ORDERED.u(aVar.f)) {
            return ((g2) new v5(this, aVar, spliterator, new w0(24), this.l, this.m).invoke()).spliterator();
        }
        j$.util.y0 y0Var2 = (j$.util.y0) aVar.S(spliterator);
        long j2 = this.l;
        long j3 = this.m;
        if (j2 <= B) {
            long j4 = B - j2;
            j3 = j3 >= 0 ? Math.min(j3, j4) : j4;
            j2 = 0;
        }
        return new x7(y0Var2, j2, j3);
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        return new q5(this, l5Var);
    }
}

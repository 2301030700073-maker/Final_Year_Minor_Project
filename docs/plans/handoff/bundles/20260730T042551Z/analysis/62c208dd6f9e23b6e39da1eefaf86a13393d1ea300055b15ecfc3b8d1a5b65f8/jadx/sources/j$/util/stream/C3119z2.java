package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.z2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3119z2 extends C {
    final /* synthetic */ long s;
    final /* synthetic */ long t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C3119z2(AbstractC3002c abstractC3002c, int i, long j, long j2) {
        super(abstractC3002c, i);
        this.s = j;
        this.t = j2;
    }

    static j$.util.V d1(j$.util.V v, long j, long j2, long j3) {
        long j4;
        long j5;
        if (j <= j3) {
            long j6 = j3 - j;
            j5 = j2 >= 0 ? Math.min(j2, j6) : j6;
            j4 = 0;
        } else {
            j4 = j;
            j5 = j2;
        }
        return new F3(v, j4, j5);
    }

    @Override // j$.util.stream.AbstractC3002c
    final I0 S0(Spliterator spliterator, AbstractC3002c abstractC3002c, IntFunction intFunction) {
        long k0 = abstractC3002c.k0(spliterator);
        return (k0 <= 0 || !spliterator.hasCharacteristics(16384)) ? !EnumC3026g3.ORDERED.n(abstractC3002c.r0()) ? AbstractC3117z0.b0(this, d1((j$.util.V) abstractC3002c.Z0(spliterator), this.s, this.t, k0), true) : (I0) new B2(this, abstractC3002c, spliterator, intFunction, this.s, this.t).invoke() : AbstractC3117z0.b0(abstractC3002c, AbstractC3117z0.Y(abstractC3002c.P0(), spliterator, this.s, this.t), true);
    }

    @Override // j$.util.stream.AbstractC3002c
    final Spliterator T0(AbstractC3002c abstractC3002c, Spliterator spliterator) {
        long k0 = abstractC3002c.k0(spliterator);
        if (k0 <= 0 || !spliterator.hasCharacteristics(16384)) {
            return !EnumC3026g3.ORDERED.n(abstractC3002c.r0()) ? d1((j$.util.V) abstractC3002c.Z0(spliterator), this.s, this.t, k0) : ((I0) new B2(this, abstractC3002c, spliterator, new O0(5), this.s, this.t).invoke()).spliterator();
        }
        j$.util.V v = (j$.util.V) abstractC3002c.Z0(spliterator);
        long j = this.s;
        return new C3110x3(v, j, AbstractC3117z0.X(j, this.t));
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        return new C3114y2(this, interfaceC3079r2);
    }
}

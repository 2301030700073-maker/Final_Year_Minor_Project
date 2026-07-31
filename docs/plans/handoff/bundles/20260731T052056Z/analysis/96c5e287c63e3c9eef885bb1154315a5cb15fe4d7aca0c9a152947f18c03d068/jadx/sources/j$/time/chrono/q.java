package j$.time.chrono;

import j$.time.temporal.Temporal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class q implements j {
    public static final q BCE;
    public static final q CE;
    public static final /* synthetic */ q[] a;

    static {
        q qVar = new q("BCE", 0);
        BCE = qVar;
        q qVar2 = new q("CE", 1);
        CE = qVar2;
        a = new q[]{qVar, qVar2};
    }

    public static q valueOf(String str) {
        return (q) Enum.valueOf(q.class, str);
    }

    public static q[] values() {
        return (q[]) a.clone();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ boolean c(j$.time.temporal.n nVar) {
        return j$.time.a.r(this, nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int f(j$.time.temporal.n nVar) {
        return j$.time.a.m(this, nVar);
    }

    @Override // j$.time.chrono.j
    public final int getValue() {
        return ordinal();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.d(this, nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object i(j$.time.f fVar) {
        return j$.time.a.v(this, fVar);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return temporal.a(getValue(), j$.time.temporal.a.ERA);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ long q(j$.time.temporal.n nVar) {
        return j$.time.a.o(this, nVar);
    }
}

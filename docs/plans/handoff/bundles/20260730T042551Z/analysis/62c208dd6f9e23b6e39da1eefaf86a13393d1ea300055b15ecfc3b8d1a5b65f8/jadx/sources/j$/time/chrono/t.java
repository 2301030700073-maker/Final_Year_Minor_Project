package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class t implements o {
    public static final t AH;
    private static final /* synthetic */ t[] a;

    static {
        t tVar = new t();
        AH = tVar;
        a = new t[]{tVar};
    }

    private t() {
    }

    public static t valueOf(String str) {
        return (t) Enum.valueOf(t.class, str);
    }

    public static t[] values() {
        return (t[]) a.clone();
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ boolean e(j$.time.temporal.r rVar) {
        return AbstractC2962b.k(this, rVar);
    }

    @Override // j$.time.chrono.o
    public final int getValue() {
        return 1;
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int i(j$.time.temporal.r rVar) {
        return AbstractC2962b.h(this, (j$.time.temporal.a) rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return rVar == j$.time.temporal.a.ERA ? j$.time.temporal.w.j(1L, 1L) : j$.time.temporal.q.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return AbstractC2962b.c(this, mVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ long v(j$.time.temporal.r rVar) {
        return AbstractC2962b.i(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object y(j$.time.temporal.t tVar) {
        return AbstractC2962b.o(this, tVar);
    }
}

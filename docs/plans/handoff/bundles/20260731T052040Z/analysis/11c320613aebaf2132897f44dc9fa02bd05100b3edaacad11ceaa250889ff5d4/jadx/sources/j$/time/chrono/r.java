package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class r implements m {
    public static final r AH;
    public static final /* synthetic */ r[] a;

    static {
        r rVar = new r("AH", 0);
        AH = rVar;
        a = new r[]{rVar};
    }

    public static r valueOf(String str) {
        return (r) Enum.valueOf(r.class, str);
    }

    public static r[] values() {
        return (r[]) a.clone();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object F(j$.desugar.sun.nio.fs.m mVar) {
        return j$.com.android.tools.r8.a.m(this, mVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ long M(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.g(this, pVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ boolean e(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.i(this, pVar);
    }

    @Override // j$.time.chrono.m
    public final int getValue() {
        return 1;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.f(this, pVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        return pVar == j$.time.temporal.a.ERA ? j$.time.temporal.s.f(1L, 1L) : j$.time.temporal.q.d(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(1L, j$.time.temporal.a.ERA);
    }
}

package j$.time.temporal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final /* synthetic */ class l implements TemporalAdjuster {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;

    public /* synthetic */ l(int i, int i2) {
        this.a = i2;
        this.b = i;
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        int i = this.a;
        int i2 = this.b;
        switch (i) {
            case 0:
                return temporal.b(temporal.f(a.DAY_OF_WEEK) - i2 >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
            case 1:
                int f = temporal.f(a.DAY_OF_WEEK);
                if (f == i2) {
                    return temporal;
                }
                return temporal.b(f - i2 >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
            default:
                int f2 = temporal.f(a.DAY_OF_WEEK);
                if (f2 == i2) {
                    return temporal;
                }
                return temporal.o(i2 - f2 >= 0 ? 7 - r2 : -r2, ChronoUnit.DAYS);
        }
    }
}

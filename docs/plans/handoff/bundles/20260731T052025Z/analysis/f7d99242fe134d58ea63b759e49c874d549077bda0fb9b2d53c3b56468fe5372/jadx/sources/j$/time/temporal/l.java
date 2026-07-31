package j$.time.temporal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class l implements k {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;

    public /* synthetic */ l(int i, int i2) {
        this.a = i2;
        this.b = i;
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        int i = this.a;
        int i2 = this.b;
        switch (i) {
            case 0:
                int k = temporal.k(ChronoField.DAY_OF_WEEK);
                if (k == i2) {
                    return temporal;
                }
                return temporal.c(k - i2 >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
            default:
                int k2 = temporal.k(ChronoField.DAY_OF_WEEK);
                if (k2 == i2) {
                    return temporal;
                }
                return temporal.F(i2 - k2 >= 0 ? 7 - r2 : -r2, ChronoUnit.DAYS);
        }
    }
}

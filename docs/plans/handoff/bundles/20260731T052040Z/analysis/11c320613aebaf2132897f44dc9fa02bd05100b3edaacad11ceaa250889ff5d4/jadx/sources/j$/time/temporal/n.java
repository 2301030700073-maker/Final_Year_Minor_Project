package j$.time.temporal;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class n implements m {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;

    public /* synthetic */ n(int i, int i2) {
        this.a = i2;
        this.b = i;
    }

    @Override // j$.time.temporal.m
    public final l u(l lVar) {
        int i = this.a;
        int i2 = this.b;
        switch (i) {
            case 0:
                int k = lVar.k(a.DAY_OF_WEEK);
                if (k == i2) {
                    return lVar;
                }
                return lVar.d(k - i2 >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
            default:
                int k2 = lVar.k(a.DAY_OF_WEEK);
                if (k2 == i2) {
                    return lVar;
                }
                return lVar.z(i2 - k2 >= 0 ? 7 - r2 : -r2, ChronoUnit.DAYS);
        }
    }
}

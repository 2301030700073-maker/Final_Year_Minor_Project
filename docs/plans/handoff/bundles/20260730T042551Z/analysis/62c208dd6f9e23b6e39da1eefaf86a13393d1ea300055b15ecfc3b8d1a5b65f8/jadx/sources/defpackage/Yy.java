package defpackage;

/* loaded from: classes3.dex */
public final class Yy extends Vz {

    /* renamed from: break, reason: not valid java name */
    public final String f4771break;

    /* renamed from: do, reason: not valid java name */
    public final long f4772do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0671a6 f4773do;

    public Yy(String str, long j, Uy uy) {
        this.f4771break = str;
        this.f4772do = j;
        this.f4773do = uy;
    }

    @Override // defpackage.Vz
    /* renamed from: do */
    public final long mo2489do() {
        return this.f4772do;
    }

    @Override // defpackage.Vz
    /* renamed from: for */
    public final InterfaceC0671a6 mo2490for() {
        return this.f4773do;
    }

    @Override // defpackage.Vz
    /* renamed from: if */
    public final C0155Cs mo2491if() {
        String str = this.f4771break;
        if (str == null) {
            return null;
        }
        try {
            return C0155Cs.m307do(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}

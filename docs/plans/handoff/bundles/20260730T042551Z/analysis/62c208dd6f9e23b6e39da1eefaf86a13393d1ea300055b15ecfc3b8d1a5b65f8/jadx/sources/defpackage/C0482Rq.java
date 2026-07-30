package defpackage;

/* renamed from: Rq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0482Rq {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f3238do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC0451Qh f3239do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0495Sh f3240do;

    /* renamed from: Rq$do, reason: invalid class name */
    public static final class Cdo implements InterfaceC0451Qh {
        @Override // defpackage.InterfaceC0451Qh
        /* renamed from: do */
        public final String mo658do() {
            return null;
        }

        @Override // defpackage.InterfaceC0451Qh
        /* renamed from: for */
        public final void mo659for() {
        }

        @Override // defpackage.InterfaceC0451Qh
        /* renamed from: if */
        public final void mo660if(long j, String str) {
        }
    }

    public C0482Rq(C0495Sh c0495Sh) {
        this.f3240do = c0495Sh;
        this.f3239do = f3238do;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2073do(String str) {
        this.f3239do.mo659for();
        this.f3239do = f3238do;
        if (str == null) {
            return;
        }
        this.f3239do = new Fy(this.f3240do.m2184if(str, "userlog"));
    }

    public C0482Rq(C0495Sh c0495Sh, String str) {
        this(c0495Sh);
        m2073do(str);
    }
}

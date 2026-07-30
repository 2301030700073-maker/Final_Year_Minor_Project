package defpackage;

import com.google.android.gms.internal.measurement.zznm;

/* loaded from: classes3.dex */
public final class ST implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f3517do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3628rT f3518do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4041yT f3519do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f3520do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ long f3521if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3628rT f3522if;

    public ST(C4041yT c4041yT, C3628rT c3628rT, long j, long j2, boolean z, C3628rT c3628rT2) {
        this.f3518do = c3628rT;
        this.f3517do = j;
        this.f3521if = j2;
        this.f3520do = z;
        this.f3522if = c3628rT2;
        this.f3519do = c4041yT;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4041yT c4041yT = this.f3519do;
        C3628rT c3628rT = this.f3518do;
        c4041yT.m8743strictfp(c3628rT);
        if (!zznm.zza() || !c4041yT.m7572else().m3012throws(null, C3684sQ.j0)) {
            c4041yT.m8741return(this.f3517do, false);
        }
        C4041yT.m8730interface(this.f3519do, this.f3518do, this.f3521if, true, this.f3520do);
        C4041yT.m8731protected(c4041yT, c3628rT, this.f3522if);
    }
}

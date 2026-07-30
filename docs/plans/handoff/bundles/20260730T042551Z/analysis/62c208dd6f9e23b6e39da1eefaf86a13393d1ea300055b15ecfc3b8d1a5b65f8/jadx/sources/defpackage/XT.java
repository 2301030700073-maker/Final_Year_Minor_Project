package defpackage;

/* loaded from: classes3.dex */
public final class XT implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f4514do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3628rT f4515do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4041yT f4516do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f4517do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ C3628rT f4518if;

    public XT(C4041yT c4041yT, C3628rT c3628rT, long j, boolean z, C3628rT c3628rT2) {
        this.f4515do = c3628rT;
        this.f4514do = j;
        this.f4517do = z;
        this.f4518if = c3628rT2;
        this.f4516do = c4041yT;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4041yT c4041yT = this.f4516do;
        C3628rT c3628rT = this.f4515do;
        c4041yT.m8743strictfp(c3628rT);
        C4041yT.m8730interface(this.f4516do, this.f4515do, this.f4514do, false, this.f4517do);
        C4041yT.m8731protected(c4041yT, c3628rT, this.f4518if);
    }
}

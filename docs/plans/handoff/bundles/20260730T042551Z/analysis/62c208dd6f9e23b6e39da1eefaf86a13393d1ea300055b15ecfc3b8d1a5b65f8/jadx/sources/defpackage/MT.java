package defpackage;

/* loaded from: classes3.dex */
public final class MT implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f2188break;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f2189catch;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f2190do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f2191do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4041yT f2192do;

    public MT(C4041yT c4041yT, String str, String str2, Object obj, long j) {
        this.f2188break = str;
        this.f2189catch = str2;
        this.f2191do = obj;
        this.f2190do = j;
        this.f2192do = c4041yT;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2192do.m8739package(this.f2188break, this.f2189catch, this.f2191do, this.f2190do);
    }
}

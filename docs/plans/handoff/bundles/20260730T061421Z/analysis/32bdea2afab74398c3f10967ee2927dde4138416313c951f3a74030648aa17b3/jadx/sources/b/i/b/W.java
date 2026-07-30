package b.i.b;

/* loaded from: classes.dex */
public class W implements InterfaceC0121p {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f876a;

    /* renamed from: b, reason: collision with root package name */
    public final C0096a f877b;

    /* renamed from: c, reason: collision with root package name */
    public int f878c;

    public W(C0096a c0096a, boolean z) {
        this.f876a = z;
        this.f877b = c0096a;
    }

    public void a() {
        boolean z = this.f878c > 0;
        for (r rVar : this.f877b.r.f881c.i()) {
            rVar.setOnStartEnterTransitionListener(null);
            if (z && rVar.isPostponed()) {
                rVar.startPostponedEnterTransition();
            }
        }
        C0096a c0096a = this.f877b;
        c0096a.r.g(c0096a, this.f876a, !z, true);
    }
}

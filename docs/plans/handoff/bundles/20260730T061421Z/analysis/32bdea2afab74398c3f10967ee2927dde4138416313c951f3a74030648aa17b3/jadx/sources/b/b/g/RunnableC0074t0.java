package b.b.g;

/* renamed from: b.b.g.t0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0074t0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0084y0 f582a;

    public RunnableC0074t0(C0084y0 c0084y0) {
        this.f582a = c0084y0;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0061m0 c0061m0 = this.f582a.f601c;
        if (c0061m0 != null) {
            c0061m0.i = true;
            c0061m0.requestLayout();
        }
    }
}

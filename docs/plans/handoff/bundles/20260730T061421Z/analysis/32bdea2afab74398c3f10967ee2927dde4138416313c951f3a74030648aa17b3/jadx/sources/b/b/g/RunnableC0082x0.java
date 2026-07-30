package b.b.g;

/* renamed from: b.b.g.x0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0082x0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0084y0 f596a;

    public RunnableC0082x0(C0084y0 c0084y0) {
        this.f596a = c0084y0;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0061m0 c0061m0 = this.f596a.f601c;
        if (c0061m0 == null || !b.e.i.q.s(c0061m0) || this.f596a.f601c.getCount() <= this.f596a.f601c.getChildCount()) {
            return;
        }
        int childCount = this.f596a.f601c.getChildCount();
        C0084y0 c0084y0 = this.f596a;
        if (childCount <= c0084y0.o) {
            c0084y0.B.setInputMethodMode(2);
            this.f596a.f();
        }
    }
}

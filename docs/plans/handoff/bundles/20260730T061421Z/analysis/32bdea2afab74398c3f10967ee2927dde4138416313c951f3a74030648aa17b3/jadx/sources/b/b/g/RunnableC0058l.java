package b.b.g;

import android.view.View;

/* renamed from: b.b.g.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0058l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public C0064o f555a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f556b;

    public RunnableC0058l(r rVar, C0064o c0064o) {
        this.f556b = rVar;
        this.f555a = c0064o;
    }

    @Override // java.lang.Runnable
    public void run() {
        b.b.f.m.m mVar;
        b.b.f.m.o oVar = this.f556b.f575c;
        if (oVar != null && (mVar = oVar.e) != null) {
            mVar.b(oVar);
        }
        View view = (View) this.f556b.h;
        if (view != null && view.getWindowToken() != null && this.f555a.f()) {
            this.f556b.t = this.f555a;
        }
        this.f556b.v = null;
    }
}

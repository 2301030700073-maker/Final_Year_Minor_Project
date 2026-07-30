package b.b.c;

import android.view.View;
import com.android.quickstep.fallback.RecentsState;

/* renamed from: b.b.c.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0023w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ J f322a;

    public RunnableC0023w(J j) {
        this.f322a = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        J j = this.f322a;
        j.p.showAtLocation(j.o, 55, 0, 0);
        this.f322a.z();
        if (!this.f322a.N()) {
            this.f322a.o.setAlpha(1.0f);
            this.f322a.o.setVisibility(0);
            return;
        }
        this.f322a.o.setAlpha(RecentsState.NO_OFFSET);
        J j2 = this.f322a;
        b.e.i.t a2 = b.e.i.q.a(j2.o);
        a2.a(1.0f);
        j2.r = a2;
        b.e.i.t tVar = this.f322a.r;
        C0022v c0022v = new C0022v(this);
        View view = (View) tVar.f781a.get();
        if (view != null) {
            tVar.e(view, c0022v);
        }
    }
}

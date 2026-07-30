package b.b.c;

import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class A implements b.b.f.a {

    /* renamed from: a, reason: collision with root package name */
    public b.b.f.a f244a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ J f245b;

    public A(J j, b.b.f.a aVar) {
        this.f245b = j;
        this.f244a = aVar;
    }

    @Override // b.b.f.a
    public boolean a(b.b.f.b bVar, Menu menu) {
        b.e.i.q.B(this.f245b.u);
        return this.f244a.a(bVar, menu);
    }

    @Override // b.b.f.a
    public boolean b(b.b.f.b bVar, MenuItem menuItem) {
        return this.f244a.b(bVar, menuItem);
    }

    @Override // b.b.f.a
    public boolean c(b.b.f.b bVar, Menu menu) {
        return this.f244a.c(bVar, menu);
    }

    @Override // b.b.f.a
    public void d(b.b.f.b bVar) {
        this.f244a.d(bVar);
        J j = this.f245b;
        if (j.p != null) {
            j.e.getDecorView().removeCallbacks(this.f245b.q);
        }
        J j2 = this.f245b;
        if (j2.o != null) {
            j2.z();
            J j3 = this.f245b;
            b.e.i.t a2 = b.e.i.q.a(j3.o);
            a2.a(RecentsState.NO_OFFSET);
            j3.r = a2;
            b.e.i.t tVar = this.f245b.r;
            z zVar = new z(this);
            View view = (View) tVar.f781a.get();
            if (view != null) {
                tVar.e(view, zVar);
            }
        }
        J j4 = this.f245b;
        InterfaceC0017p interfaceC0017p = j4.g;
        if (interfaceC0017p != null) {
            interfaceC0017p.b(j4.n);
        }
        J j5 = this.f245b;
        j5.n = null;
        b.e.i.q.B(j5.u);
    }
}

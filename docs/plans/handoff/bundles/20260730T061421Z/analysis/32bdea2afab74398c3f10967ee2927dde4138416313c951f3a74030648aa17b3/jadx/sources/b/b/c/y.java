package b.b.c;

import android.view.Window;

/* loaded from: classes.dex */
public final class y implements b.b.f.m.B {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ J f324a;

    public y(J j) {
        this.f324a = j;
    }

    @Override // b.b.f.m.B
    public void a(b.b.f.m.o oVar, boolean z) {
        this.f324a.u(oVar);
    }

    @Override // b.b.f.m.B
    public boolean b(b.b.f.m.o oVar) {
        Window.Callback F = this.f324a.F();
        if (F == null) {
            return true;
        }
        F.onMenuOpened(108, oVar);
        return true;
    }
}

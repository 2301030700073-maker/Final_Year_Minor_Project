package b.b.c;

import android.view.Window;

/* loaded from: classes.dex */
public final class I implements b.b.f.m.B {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ J f257a;

    public I(J j) {
        this.f257a = j;
    }

    @Override // b.b.f.m.B
    public void a(b.b.f.m.o oVar, boolean z) {
        b.b.f.m.o k = oVar.k();
        boolean z2 = k != oVar;
        J j = this.f257a;
        if (z2) {
            oVar = k;
        }
        H C = j.C(oVar);
        if (C != null) {
            if (!z2) {
                this.f257a.v(C, z);
            } else {
                this.f257a.t(C.f253a, C, k);
                this.f257a.v(C, true);
            }
        }
    }

    @Override // b.b.f.m.B
    public boolean b(b.b.f.m.o oVar) {
        Window.Callback F;
        if (oVar != oVar.k()) {
            return true;
        }
        J j = this.f257a;
        if (!j.z || (F = j.F()) == null || this.f257a.L) {
            return true;
        }
        F.onMenuOpened(108, oVar);
        return true;
    }
}

package b.b.g;

import android.view.View;

/* renamed from: b.b.g.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0060m extends AbstractViewOnTouchListenerC0067p0 {
    public final /* synthetic */ C0062n j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0060m(C0062n c0062n, View view, r rVar) {
        super(view);
        this.j = c0062n;
    }

    @Override // b.b.g.AbstractViewOnTouchListenerC0067p0
    public b.b.f.m.G b() {
        C0064o c0064o = this.j.f563c.t;
        if (c0064o == null) {
            return null;
        }
        return c0064o.a();
    }

    @Override // b.b.g.AbstractViewOnTouchListenerC0067p0
    public boolean c() {
        this.j.f563c.n();
        return true;
    }

    @Override // b.b.g.AbstractViewOnTouchListenerC0067p0
    public boolean d() {
        r rVar = this.j.f563c;
        if (rVar.v != null) {
            return false;
        }
        rVar.k();
        return true;
    }
}

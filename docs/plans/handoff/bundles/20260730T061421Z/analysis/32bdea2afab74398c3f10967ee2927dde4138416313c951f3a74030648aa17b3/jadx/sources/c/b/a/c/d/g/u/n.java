package c.b.a.c.d.g.u;

import c.b.a.c.d.j.InterfaceC0420a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Set;

/* loaded from: classes.dex */
public final class n implements z, InterfaceC0420a {

    /* renamed from: a, reason: collision with root package name */
    public final c.b.a.c.d.g.d f2916a;

    /* renamed from: b, reason: collision with root package name */
    public final F f2917b;

    /* renamed from: c, reason: collision with root package name */
    public IAccountAccessor f2918c = null;

    /* renamed from: d, reason: collision with root package name */
    public Set f2919d = null;
    public boolean e = false;
    public final /* synthetic */ C0416g f;

    public n(C0416g c0416g, c.b.a.c.d.g.d dVar, F f) {
        this.f = c0416g;
        this.f2916a = dVar;
        this.f2917b = f;
    }

    @Override // c.b.a.c.d.j.InterfaceC0420a
    public final void a(ConnectionResult connectionResult) {
        this.f.m.post(new o(this, connectionResult));
    }

    public final void b(ConnectionResult connectionResult) {
        C0418i c0418i = (C0418i) this.f.i.get(this.f2917b);
        c.b.a.c.b.a.W(c0418i.l.m);
        c0418i.f2909b.i();
        c0418i.onConnectionFailed(connectionResult);
    }
}

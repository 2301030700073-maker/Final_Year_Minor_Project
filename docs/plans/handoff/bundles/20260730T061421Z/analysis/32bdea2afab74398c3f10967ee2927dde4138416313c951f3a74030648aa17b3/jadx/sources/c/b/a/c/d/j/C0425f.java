package c.b.a.c.d.j;

import com.google.android.gms.common.ConnectionResult;

/* renamed from: c.b.a.c.d.j.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0425f implements InterfaceC0420a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f2959a;

    public C0425f(z zVar) {
        this.f2959a = zVar;
    }

    @Override // c.b.a.c.d.j.InterfaceC0420a
    public final void a(ConnectionResult connectionResult) {
        if (connectionResult.h()) {
            z zVar = this.f2959a;
            zVar.e(null, zVar.t);
        } else {
            B b2 = this.f2959a.n;
            if (b2 != null) {
                b2.f2938a.onConnectionFailed(connectionResult);
            }
        }
    }
}

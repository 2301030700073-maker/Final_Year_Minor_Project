package c.b.a.c.d.g.u;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Collections;

/* loaded from: classes.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ConnectionResult f2920a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f2921b;

    public o(n nVar, ConnectionResult connectionResult) {
        this.f2921b = nVar;
        this.f2920a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IAccountAccessor iAccountAccessor;
        if (!this.f2920a.h()) {
            n nVar = this.f2921b;
            ((C0418i) nVar.f.i.get(nVar.f2917b)).onConnectionFailed(this.f2920a);
            return;
        }
        n nVar2 = this.f2921b;
        nVar2.e = true;
        if (!nVar2.f2916a.j()) {
            this.f2921b.f2916a.e(null, Collections.emptySet());
            return;
        }
        n nVar3 = this.f2921b;
        if (!nVar3.e || (iAccountAccessor = nVar3.f2918c) == null) {
            return;
        }
        nVar3.f2916a.e(iAccountAccessor, nVar3.f2919d);
    }
}

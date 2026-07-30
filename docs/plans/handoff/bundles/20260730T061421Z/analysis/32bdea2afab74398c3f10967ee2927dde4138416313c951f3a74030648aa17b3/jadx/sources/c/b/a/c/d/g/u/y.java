package c.b.a.c.d.g.u;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zzdb;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.zzax;
import com.google.android.gms.internal.zzelx;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzelx f2933a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzdb f2934b;

    public y(zzdb zzdbVar, zzelx zzelxVar) {
        this.f2934b = zzdbVar;
        this.f2933a = zzelxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdb zzdbVar = this.f2934b;
        zzelx zzelxVar = this.f2933a;
        Objects.requireNonNull(zzdbVar);
        ConnectionResult connectionResult = zzelxVar.f3460b;
        if (connectionResult.h()) {
            zzax zzaxVar = zzelxVar.f3461c;
            ConnectionResult connectionResult2 = zzaxVar.f3413c;
            if (!connectionResult2.h()) {
                String valueOf = String.valueOf(connectionResult2);
                StringBuilder sb = new StringBuilder(valueOf.length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(valueOf);
                Log.wtf("SignInCoordinator", sb.toString(), new Exception());
                ((n) zzdbVar.zzh).b(connectionResult2);
                zzdbVar.zzg.i();
                return;
            }
            z zVar = zzdbVar.zzh;
            IAccountAccessor h = zzaxVar.h();
            Set set = zzdbVar.zze;
            n nVar = (n) zVar;
            Objects.requireNonNull(nVar);
            if (h == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                nVar.b(new ConnectionResult(4));
            } else {
                nVar.f2918c = h;
                nVar.f2919d = set;
                if (nVar.e) {
                    nVar.f2916a.e(h, set);
                }
            }
        } else {
            ((n) zzdbVar.zzh).b(connectionResult);
        }
        zzdbVar.zzg.i();
    }
}

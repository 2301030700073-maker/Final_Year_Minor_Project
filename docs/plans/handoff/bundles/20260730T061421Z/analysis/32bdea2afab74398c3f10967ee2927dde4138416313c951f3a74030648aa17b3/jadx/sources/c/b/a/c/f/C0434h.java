package c.b.a.c.f;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import c.b.a.c.d.j.C0425f;
import com.google.android.gms.common.api.internal.zzdb;
import com.google.android.gms.common.internal.zzav;
import com.google.android.gms.internal.zzelq;
import com.google.android.gms.internal.zzels;
import com.google.android.gms.internal.zzelt;
import com.google.android.gms.internal.zzelv;
import com.google.android.gms.internal.zzelx;

/* renamed from: c.b.a.c.f.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0434h extends c.b.a.c.d.j.z implements c.b.a.c.i.e {
    public final boolean v;
    public final c.b.a.c.d.j.k w;
    public final Bundle x;
    public Integer y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0434h(Context context, Looper looper, c.b.a.c.d.j.k kVar, c.b.a.c.d.g.m mVar, c.b.a.c.d.g.n nVar) {
        super(context, looper, 44, kVar, mVar, nVar);
        c.b.a.c.i.a aVar = kVar.g;
        Integer num = kVar.h;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", kVar.f2965a);
        if (num != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
        }
        if (aVar != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        }
        this.v = true;
        this.w = kVar;
        this.x = bundle;
        this.y = kVar.h;
    }

    @Override // c.b.a.c.d.g.d
    public final int a() {
        return c.b.a.c.d.e.f2874a;
    }

    @Override // c.b.a.c.i.e
    public final void d(zzelq zzelqVar) {
        c.b.a.c.b.a.S(zzelqVar, "Expecting a valid ISignInCallbacks");
        try {
            Account account = this.w.f2965a;
            if (account == null) {
                account = new Account("<<default account>>", "com.google");
            }
            ((zzels) q()).zza(new zzelv(new zzav(account, this.y.intValue(), "<<default account>>".equals(account.name) ? c.b.a.c.a.a.a.a.a.b(this.f2986b).a() : null)), zzelqVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zzdb zzdbVar = (zzdb) zzelqVar;
                zzdbVar.zzc.post(new c.b.a.c.d.g.u.y(zzdbVar, new zzelx()));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // c.b.a.c.i.e
    public final void g() {
        C0425f c0425f = new C0425f(this);
        c.b.a.c.b.a.S(c0425f, "Connection progress callbacks cannot be null.");
        this.h = c0425f;
        t(2, null);
    }

    @Override // c.b.a.c.d.j.z, c.b.a.c.d.g.d
    public final boolean j() {
        return this.v;
    }

    @Override // c.b.a.c.d.j.z
    public final String m() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // c.b.a.c.d.j.z
    public final String n() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // c.b.a.c.d.j.z
    public final /* synthetic */ IInterface o(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof zzels ? (zzels) queryLocalInterface : new zzelt(iBinder);
    }

    @Override // c.b.a.c.d.j.z
    public final Bundle r() {
        if (!this.f2986b.getPackageName().equals(this.w.e)) {
            this.x.putString("com.google.android.gms.signin.internal.realClientPackageName", this.w.e);
        }
        return this.x;
    }
}

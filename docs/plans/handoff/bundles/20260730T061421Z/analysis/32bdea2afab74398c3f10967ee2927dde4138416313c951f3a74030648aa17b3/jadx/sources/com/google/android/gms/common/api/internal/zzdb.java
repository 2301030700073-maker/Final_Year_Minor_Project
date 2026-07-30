package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import c.b.a.c.b.a;
import c.b.a.c.d.g.f;
import c.b.a.c.d.g.m;
import c.b.a.c.d.g.n;
import c.b.a.c.d.g.u.z;
import c.b.a.c.d.j.k;
import c.b.a.c.i.b;
import c.b.a.c.i.e;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzelp;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdb extends zzelp implements m, n {
    public static f zza = b.f3072c;
    public final Context zzb;
    public final Handler zzc;
    public final f zzd;
    public Set zze;
    public k zzf;
    public e zzg;
    public z zzh;

    public zzdb(Context context, Handler handler, k kVar) {
        f fVar = zza;
        this.zzb = context;
        this.zzc = handler;
        a.S(kVar, "ClientSettings must not be null");
        this.zzf = kVar;
        this.zze = kVar.f2966b;
        this.zzd = fVar;
    }

    @Override // c.b.a.c.d.g.m
    public final void onConnected(Bundle bundle) {
        this.zzg.d(this);
    }

    @Override // c.b.a.c.d.g.n
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        ((c.b.a.c.d.g.u.n) this.zzh).b(connectionResult);
    }

    @Override // c.b.a.c.d.g.m
    public final void onConnectionSuspended(int i) {
        this.zzg.i();
    }
}

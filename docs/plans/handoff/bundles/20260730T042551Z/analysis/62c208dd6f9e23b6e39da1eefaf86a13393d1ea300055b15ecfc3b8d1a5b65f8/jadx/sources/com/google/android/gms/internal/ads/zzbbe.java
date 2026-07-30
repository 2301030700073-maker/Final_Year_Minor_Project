package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes.dex */
final class zzbbe implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzcab zza;
    final /* synthetic */ zzbbf zzb;

    public zzbbe(zzbbf zzbbfVar, zzcab zzcabVar) {
        this.zza = zzcabVar;
        this.zzb = zzbbfVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        obj = this.zzb.zzd;
        synchronized (obj) {
            this.zza.zzd(new RuntimeException("Connection failed."));
        }
    }
}

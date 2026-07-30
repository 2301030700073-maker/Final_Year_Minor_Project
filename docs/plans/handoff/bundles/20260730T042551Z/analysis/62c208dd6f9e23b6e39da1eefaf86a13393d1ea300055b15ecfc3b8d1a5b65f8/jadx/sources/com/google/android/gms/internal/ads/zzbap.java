package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes.dex */
final class zzbap implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzbar zza;

    public zzbap(zzbar zzbarVar) {
        this.zza = zzbarVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        Object obj2;
        zzbau zzbauVar;
        zzbau zzbauVar2;
        obj = this.zza.zzc;
        synchronized (obj) {
            try {
                zzbar zzbarVar = this.zza;
                zzbauVar = zzbarVar.zzd;
                if (zzbauVar != null) {
                    zzbauVar2 = zzbarVar.zzd;
                    zzbarVar.zzf = zzbauVar2.zzq();
                }
            } catch (DeadObjectException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to obtain a cache service instance.", e);
                zzbar.zzh(this.zza);
            }
            obj2 = this.zza.zzc;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Object obj;
        Object obj2;
        obj = this.zza.zzc;
        synchronized (obj) {
            this.zza.zzf = null;
            obj2 = this.zza.zzc;
            obj2.notifyAll();
        }
    }
}

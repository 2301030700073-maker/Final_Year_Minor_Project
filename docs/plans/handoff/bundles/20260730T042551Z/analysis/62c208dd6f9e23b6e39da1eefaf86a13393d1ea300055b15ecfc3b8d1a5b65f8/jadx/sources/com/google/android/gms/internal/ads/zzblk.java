package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
import defpackage.V1;

/* loaded from: classes.dex */
final class zzblk implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzcab zza;
    final /* synthetic */ zzblm zzb;

    public zzblk(zzblm zzblmVar, zzcab zzcabVar) {
        this.zza = zzcabVar;
        this.zzb = zzblmVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbkz zzbkzVar;
        try {
            zzcab zzcabVar = this.zza;
            zzbkzVar = this.zzb.zza;
            zzcabVar.zzc(zzbkzVar.zzp());
        } catch (DeadObjectException e) {
            this.zza.zzd(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.zza.zzd(new RuntimeException(V1.m2494case("onConnectionSuspended: ", i)));
    }
}

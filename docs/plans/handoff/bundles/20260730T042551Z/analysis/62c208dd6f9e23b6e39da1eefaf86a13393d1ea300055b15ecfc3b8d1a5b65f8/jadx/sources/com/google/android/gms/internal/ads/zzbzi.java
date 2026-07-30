package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
final class zzbzi extends com.google.android.gms.ads.internal.util.zzb {
    final /* synthetic */ zzbzm zza;

    public zzbzi(zzbzm zzbzmVar) {
        this.zza = zzbzmVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        Context context;
        VersionInfoParcel versionInfoParcel;
        Object obj;
        zzbcq zzbcqVar;
        zzbzm zzbzmVar = this.zza;
        context = zzbzmVar.zze;
        versionInfoParcel = zzbzmVar.zzf;
        zzbco zzbcoVar = new zzbco(context, versionInfoParcel.afmaVersion);
        obj = this.zza.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.zzv.zze();
                zzbcqVar = this.zza.zzh;
                zzbcr.zza(zzbcqVar, zzbcoVar);
            } catch (IllegalArgumentException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot config CSI reporter.", e);
            }
        }
    }
}

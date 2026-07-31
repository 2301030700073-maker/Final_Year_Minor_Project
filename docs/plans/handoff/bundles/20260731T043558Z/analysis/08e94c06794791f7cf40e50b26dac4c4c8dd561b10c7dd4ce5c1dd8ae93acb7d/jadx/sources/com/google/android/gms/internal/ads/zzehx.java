package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzehx implements zzdjl {
    private final VersionInfoParcel zza;
    private final ListenableFuture zzb;
    private final zzffu zzc;
    private final zzcgy zzd;
    private final zzfgn zze;
    private final zzbma zzf;
    private final boolean zzg;
    private final zzegj zzh;
    private final zzdvi zzi;

    zzehx(VersionInfoParcel versionInfoParcel, ListenableFuture listenableFuture, zzffu zzffuVar, zzcgy zzcgyVar, zzfgn zzfgnVar, boolean z, zzbma zzbmaVar, zzegj zzegjVar, zzdvi zzdviVar) {
        this.zza = versionInfoParcel;
        this.zzb = listenableFuture;
        this.zzc = zzffuVar;
        this.zzd = zzcgyVar;
        this.zze = zzfgnVar;
        this.zzg = z;
        this.zzf = zzbmaVar;
        this.zzh = zzegjVar;
        this.zzi = zzdviVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdjl
    public final void zza(boolean z, Context context, zzczb zzczbVar) {
        zzcqr zzcqrVar = (zzcqr) zzgui.zzt(this.zzb);
        zzcgy zzcgyVar = this.zzd;
        zzcgyVar.zzag(true);
        boolean z2 = this.zzg;
        boolean zzc = z2 ? this.zzf.zzc(true) : true;
        boolean z3 = z2 && this.zzf.zzd();
        float zze = z2 ? this.zzf.zze() : 0.0f;
        zzffu zzffuVar = this.zzc;
        com.google.android.gms.ads.internal.zzl zzlVar = new com.google.android.gms.ads.internal.zzl(zzc, true, z3, zze, -1, z, zzffuVar.zzO, false);
        if (zzczbVar != null) {
            zzczbVar.zzb();
        }
        com.google.android.gms.ads.internal.zzt.zzb();
        zzdja zzj = zzcqrVar.zzj();
        int i = zzffuVar.zzQ;
        if (i == -1) {
            com.google.android.gms.ads.internal.client.zzx zzxVar = this.zze.zzk;
            if (zzxVar != null) {
                int i2 = zzxVar.zza;
                if (i2 == 1) {
                    i = 7;
                } else if (i2 == 2) {
                    i = 6;
                }
            }
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Error setting app open orientation; no targeting orientation available.");
        }
        int i4 = i;
        VersionInfoParcel versionInfoParcel = this.zza;
        String str = zzffuVar.zzB;
        zzffz zzffzVar = zzffuVar.zzs;
        String str2 = zzffzVar.zzb;
        String str3 = zzffzVar.zza;
        zzfgn zzfgnVar = this.zze;
        com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(null, zzj, null, zzcgyVar, i4, versionInfoParcel, str, zzlVar, str2, str3, zzfgnVar.zzg, zzczbVar, zzffuVar.zzb() ? this.zzh : null, zzcgyVar.zzn()), true, this.zzi);
    }

    @Override // com.google.android.gms.internal.ads.zzdjl
    public final zzffu zzb() {
        return this.zzc;
    }
}

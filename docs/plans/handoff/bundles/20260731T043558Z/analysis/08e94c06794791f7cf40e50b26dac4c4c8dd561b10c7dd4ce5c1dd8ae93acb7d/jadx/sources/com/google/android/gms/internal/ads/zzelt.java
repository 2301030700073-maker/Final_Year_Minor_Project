package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzelt implements zzdjl {
    private final Context zza;
    private final zzdse zzb;
    private final zzfgn zzc;
    private final VersionInfoParcel zzd;
    private final zzffu zze;
    private final ListenableFuture zzf;
    private final zzcgy zzg;
    private final zzbma zzh;
    private final boolean zzi;
    private final zzegj zzj;
    private final zzdvc zzk;
    private final zzdvi zzl;

    zzelt(Context context, zzdse zzdseVar, zzfgn zzfgnVar, VersionInfoParcel versionInfoParcel, zzffu zzffuVar, ListenableFuture listenableFuture, zzcgy zzcgyVar, zzbma zzbmaVar, boolean z, zzegj zzegjVar, zzdvc zzdvcVar, zzdvi zzdviVar) {
        this.zza = context;
        this.zzb = zzdseVar;
        this.zzc = zzfgnVar;
        this.zzd = versionInfoParcel;
        this.zze = zzffuVar;
        this.zzf = listenableFuture;
        this.zzg = zzcgyVar;
        this.zzh = zzbmaVar;
        this.zzi = z;
        this.zzj = zzegjVar;
        this.zzk = zzdvcVar;
        this.zzl = zzdviVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdjl
    public final void zza(boolean z, Context context, zzczb zzczbVar) {
        zzdrj zzdrjVar = (zzdrj) zzgui.zzt(this.zzf);
        try {
            zzffu zzffuVar = this.zze;
            final zzcgy zzcgyVar = this.zzg;
            if (zzcgyVar.zzaB()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzbe)).booleanValue()) {
                    zzcgyVar = this.zzb.zza(this.zzc.zzf, null, null);
                    zzbmq.zzb(zzcgyVar, zzdrjVar.zzk());
                    final zzdsi zzdsiVar = new zzdsi();
                    zzdrjVar.zzl().zzi(zzcgyVar, true, this.zzi ? this.zzh : null, this.zzk.zze());
                    zzcgyVar.zzP().zzG(new zzciu(zzdsiVar, zzcgyVar) { // from class: com.google.android.gms.internal.ads.zzels
                        private final /* synthetic */ zzcgy zza;

                        {
                            this.zza = zzcgyVar;
                        }

                        @Override // com.google.android.gms.internal.ads.zzciu
                        public final /* synthetic */ void zza(boolean z2, int i, String str, String str2) {
                            zzcgy zzcgyVar2 = this.zza;
                            zzcgyVar2.zzJ();
                            zzcgyVar2.zzP().zzq();
                        }
                    });
                    zzciw zzP = zzcgyVar.zzP();
                    Objects.requireNonNull(zzcgyVar);
                    zzP.zzH(new zzciv() { // from class: com.google.android.gms.internal.ads.zzelr
                        @Override // com.google.android.gms.internal.ads.zzciv
                        public final /* synthetic */ void zza() {
                            zzcgy.this.zzI();
                        }
                    });
                    zzffz zzffzVar = zzffuVar.zzs;
                    zzcgyVar.zzau(zzffzVar.zzb, zzffzVar.zza, null);
                }
            }
            zzcgy zzcgyVar2 = zzcgyVar;
            zzcgyVar2.zzag(true);
            boolean z2 = this.zzi;
            boolean zzc = z2 ? this.zzh.zzc(false) : false;
            com.google.android.gms.ads.internal.zzt.zzc();
            boolean zzM = com.google.android.gms.ads.internal.util.zzs.zzM(this.zza);
            boolean z3 = z2 && this.zzh.zzd();
            float zze = z2 ? this.zzh.zze() : 0.0f;
            zzffu zzffuVar2 = this.zze;
            com.google.android.gms.ads.internal.zzl zzlVar = new com.google.android.gms.ads.internal.zzl(zzc, zzM, z3, zze, -1, z, zzffuVar2.zzO, zzffuVar2.zzP);
            if (zzczbVar != null) {
                zzczbVar.zzb();
            }
            com.google.android.gms.ads.internal.zzt.zzb();
            zzdja zzj = zzdrjVar.zzj();
            int i = zzffuVar2.zzQ;
            VersionInfoParcel versionInfoParcel = this.zzd;
            String str = zzffuVar2.zzB;
            zzffz zzffzVar2 = zzffuVar2.zzs;
            String str2 = zzffzVar2.zzb;
            String str3 = zzffzVar2.zza;
            zzfgn zzfgnVar = this.zzc;
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(null, zzj, null, zzcgyVar2, i, versionInfoParcel, str, zzlVar, str2, str3, zzfgnVar.zzg, zzczbVar, zzffuVar2.zzb() ? this.zzj : null, zzcgyVar2.zzn()), true, this.zzl);
        } catch (zzchn e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjl
    public final zzffu zzb() {
        return this.zze;
    }
}

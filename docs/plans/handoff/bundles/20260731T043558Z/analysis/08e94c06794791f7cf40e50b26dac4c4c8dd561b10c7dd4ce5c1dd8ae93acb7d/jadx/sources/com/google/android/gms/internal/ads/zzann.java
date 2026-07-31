package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzann {
    private final zzamq zza;
    private final zzem zzb;
    private final zzef zzc = new zzef(new byte[64], 64);
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    public zzann(zzamq zzamqVar, zzem zzemVar) {
        this.zza = zzamqVar;
        this.zzb = zzemVar;
    }

    public final void zza() {
        this.zzf = false;
        this.zza.zza();
    }

    public final void zzb(zzeg zzegVar) throws zzat {
        long j;
        long j2;
        zzef zzefVar = this.zzc;
        zzegVar.zzm(zzefVar.zza, 0, 3);
        zzefVar.zzf(0);
        zzefVar.zzh(8);
        this.zzd = zzefVar.zzi();
        this.zze = zzefVar.zzi();
        zzefVar.zzh(6);
        zzegVar.zzm(zzefVar.zza, 0, zzefVar.zzj(8));
        zzefVar.zzf(0);
        if (this.zzd) {
            zzefVar.zzh(4);
            long zzj = zzefVar.zzj(3);
            zzefVar.zzh(1);
            int zzj2 = zzefVar.zzj(15) << 15;
            zzefVar.zzh(1);
            long zzj3 = zzefVar.zzj(15);
            zzefVar.zzh(1);
            if (this.zzf || !this.zze) {
                j2 = zzj;
            } else {
                zzefVar.zzh(4);
                zzefVar.zzh(1);
                int zzj4 = zzefVar.zzj(15) << 15;
                zzefVar.zzh(1);
                j2 = zzj;
                long zzj5 = zzefVar.zzj(15);
                zzefVar.zzh(1);
                this.zzb.zze((zzefVar.zzj(3) << 30) | zzj4 | zzj5);
                this.zzf = true;
            }
            j = this.zzb.zze((j2 << 30) | zzj2 | zzj3);
        } else {
            j = 0;
        }
        zzamq zzamqVar = this.zza;
        zzamqVar.zzc(j, 4);
        zzamqVar.zzd(zzegVar);
        zzamqVar.zze(false);
    }
}

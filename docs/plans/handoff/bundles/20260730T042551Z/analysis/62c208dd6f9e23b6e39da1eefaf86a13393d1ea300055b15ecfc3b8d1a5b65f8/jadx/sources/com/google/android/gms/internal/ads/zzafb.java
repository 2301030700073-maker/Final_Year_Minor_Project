package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
final class zzafb implements zzacn {
    private zzacq zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private zzagv zzg;
    private zzaco zzh;
    private zzafe zzi;
    private zzaiv zzj;
    private final zzdy zza = new zzdy(6);
    private long zzf = -1;

    private final int zza(zzaco zzacoVar) {
        this.zza.zzI(2);
        ((zzacc) zzacoVar).zzm(this.zza.zzN(), 0, 2, false);
        return this.zza.zzq();
    }

    private final void zzg() {
        zzacq zzacqVar = this.zzb;
        zzacqVar.getClass();
        zzacqVar.zzD();
        this.zzb.zzO(new zzadl(-9223372036854775807L, 0L));
        this.zzc = 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0185  */
    @Override // com.google.android.gms.internal.ads.zzacn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzaco r24, com.google.android.gms.internal.ads.zzadj r25) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafb.zzb(com.google.android.gms.internal.ads.zzaco, com.google.android.gms.internal.ads.zzadj):int");
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ zzacn zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ List zzd() {
        return zzfxn.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zze(zzacq zzacqVar) {
        this.zzb = zzacqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        if (j == 0) {
            this.zzc = 0;
            this.zzj = null;
        } else if (this.zzc == 5) {
            zzaiv zzaivVar = this.zzj;
            zzaivVar.getClass();
            zzaivVar.zzf(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        if (zza(zzacoVar) != 65496) {
            return false;
        }
        int zza = zza(zzacoVar);
        this.zzd = zza;
        if (zza == 65504) {
            this.zza.zzI(2);
            zzacc zzaccVar = (zzacc) zzacoVar;
            zzaccVar.zzm(this.zza.zzN(), 0, 2, false);
            zzaccVar.zzl(this.zza.zzq() - 2, false);
            zza = zza(zzacoVar);
            this.zzd = zza;
        }
        if (zza == 65505) {
            zzacc zzaccVar2 = (zzacc) zzacoVar;
            zzaccVar2.zzl(2, false);
            this.zza.zzI(6);
            zzaccVar2.zzm(this.zza.zzN(), 0, 6, false);
            if (this.zza.zzu() == 1165519206 && this.zza.zzq() == 0) {
                return true;
            }
        }
        return false;
    }
}

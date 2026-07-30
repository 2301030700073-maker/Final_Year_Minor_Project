package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzaeu implements zzacn {
    private zzacq zzf;
    private boolean zzh;
    private long zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private boolean zzn;
    private zzaet zzo;
    private zzaey zzp;
    private final zzdy zza = new zzdy(4);
    private final zzdy zzb = new zzdy(9);
    private final zzdy zzc = new zzdy(11);
    private final zzdy zzd = new zzdy();
    private final zzaev zze = new zzaev();
    private int zzg = 1;

    private final zzdy zza(zzaco zzacoVar) {
        if (this.zzl > this.zzd.zzc()) {
            zzdy zzdyVar = this.zzd;
            int zzc = zzdyVar.zzc();
            zzdyVar.zzJ(new byte[Math.max(zzc + zzc, this.zzl)], 0);
        } else {
            this.zzd.zzL(0);
        }
        this.zzd.zzK(this.zzl);
        zzacoVar.zzi(this.zzd.zzN(), 0, this.zzl);
        return this.zzd;
    }

    private final void zzg() {
        if (this.zzn) {
            return;
        }
        this.zzf.zzO(new zzadl(-9223372036854775807L, 0L));
        this.zzn = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0009 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzacn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzaco r17, com.google.android.gms.internal.ads.zzadj r18) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaeu.zzb(com.google.android.gms.internal.ads.zzaco, com.google.android.gms.internal.ads.zzadj):int");
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
        this.zzf = zzacqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        if (j == 0) {
            this.zzg = 1;
            this.zzh = false;
        } else {
            this.zzg = 3;
        }
        this.zzj = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        zzacc zzaccVar = (zzacc) zzacoVar;
        zzaccVar.zzm(this.zza.zzN(), 0, 3, false);
        this.zza.zzL(0);
        if (this.zza.zzo() != 4607062) {
            return false;
        }
        zzaccVar.zzm(this.zza.zzN(), 0, 2, false);
        this.zza.zzL(0);
        if ((this.zza.zzq() & 250) != 0) {
            return false;
        }
        zzaccVar.zzm(this.zza.zzN(), 0, 4, false);
        this.zza.zzL(0);
        int zzg = this.zza.zzg();
        zzacoVar.zzj();
        zzacc zzaccVar2 = (zzacc) zzacoVar;
        zzaccVar2.zzl(zzg, false);
        zzaccVar2.zzm(this.zza.zzN(), 0, 4, false);
        this.zza.zzL(0);
        return this.zza.zzg() == 0;
    }
}

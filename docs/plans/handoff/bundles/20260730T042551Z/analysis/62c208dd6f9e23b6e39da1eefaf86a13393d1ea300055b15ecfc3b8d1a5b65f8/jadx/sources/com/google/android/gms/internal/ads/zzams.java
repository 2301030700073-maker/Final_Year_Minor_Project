package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzams implements zzamj {
    private final zzann zza;
    private String zzb;
    private zzadt zzc;
    private zzamr zzd;
    private boolean zze;
    private long zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzanb zzg = new zzanb(32, 128);
    private final zzanb zzh = new zzanb(33, 128);
    private final zzanb zzi = new zzanb(34, 128);
    private final zzanb zzj = new zzanb(39, 128);
    private final zzanb zzk = new zzanb(40, 128);
    private long zzm = -9223372036854775807L;
    private final zzdy zzn = new zzdy();

    public zzams(zzann zzannVar) {
        this.zza = zzannVar;
    }

    private final void zzf(byte[] bArr, int i, int i2) {
        this.zzd.zzc(bArr, i, i2);
        if (!this.zze) {
            this.zzg.zza(bArr, i, i2);
            this.zzh.zza(bArr, i, i2);
            this.zzi.zza(bArr, i, i2);
        }
        this.zzj.zza(bArr, i, i2);
        this.zzk.zza(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01c1  */
    @Override // com.google.android.gms.internal.ads.zzamj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzdy r29) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzams.zza(com.google.android.gms.internal.ads.zzdy):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        this.zzb = zzanxVar.zzb();
        zzadt zzw = zzacqVar.zzw(zzanxVar.zza(), 2);
        this.zzc = zzw;
        this.zzd = new zzamr(zzw);
        this.zza.zzb(zzacqVar, zzanxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzc(boolean z) {
        zzcw.zzb(this.zzc);
        int i = zzei.zza;
        if (z) {
            this.zza.zzc();
            this.zzd.zza(this.zzl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        this.zzl = 0L;
        this.zzm = -9223372036854775807L;
        zzfk.zzh(this.zzf);
        this.zzg.zzb();
        this.zzh.zzb();
        this.zzi.zzb();
        this.zzj.zzb();
        this.zzk.zzb();
        this.zza.zzc();
        zzamr zzamrVar = this.zzd;
        if (zzamrVar != null) {
            zzamrVar.zzd();
        }
    }
}

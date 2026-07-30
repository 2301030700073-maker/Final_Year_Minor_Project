package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzamq implements zzamj {
    private final zzann zza;
    private long zze;
    private String zzg;
    private zzadt zzh;
    private zzamp zzi;
    private boolean zzj;
    private boolean zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzanb zzb = new zzanb(7, 128);
    private final zzanb zzc = new zzanb(8, 128);
    private final zzanb zzd = new zzanb(6, 128);
    private long zzk = -9223372036854775807L;
    private final zzdy zzm = new zzdy();

    public zzamq(zzann zzannVar, boolean z, boolean z2) {
        this.zza = zzannVar;
    }

    private final void zzf(byte[] bArr, int i, int i2) {
        if (!this.zzj) {
            this.zzb.zza(bArr, i, i2);
            this.zzc.zza(bArr, i, i2);
        }
        this.zzd.zza(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01b1 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzamj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzdy r19) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamq.zza(com.google.android.gms.internal.ads.zzdy):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        this.zzg = zzanxVar.zzb();
        zzadt zzw = zzacqVar.zzw(zzanxVar.zza(), 2);
        this.zzh = zzw;
        this.zzi = new zzamp(zzw, false, false);
        this.zza.zzb(zzacqVar, zzanxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzc(boolean z) {
        zzcw.zzb(this.zzh);
        int i = zzei.zza;
        if (z) {
            this.zza.zzc();
            this.zzi.zza(this.zze);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzd(long j, int i) {
        this.zzk = j;
        int i2 = i & 2;
        this.zzl = (i2 != 0) | this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        this.zze = 0L;
        this.zzl = false;
        this.zzk = -9223372036854775807L;
        zzfk.zzh(this.zzf);
        this.zzb.zzb();
        this.zzc.zzb();
        this.zzd.zzb();
        this.zza.zzc();
        zzamp zzampVar = this.zzi;
        if (zzampVar != null) {
            zzampVar.zzd();
        }
    }
}

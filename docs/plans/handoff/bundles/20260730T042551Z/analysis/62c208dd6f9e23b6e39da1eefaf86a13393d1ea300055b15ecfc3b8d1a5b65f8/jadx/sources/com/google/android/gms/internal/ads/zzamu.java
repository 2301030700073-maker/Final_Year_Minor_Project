package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzamu implements zzamj {
    private final String zza;
    private final int zzb;
    private final zzdy zzc;
    private final zzdx zzd;
    private zzadt zze;
    private String zzf;
    private zzab zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private long zzl;
    private boolean zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private boolean zzq;
    private long zzr;
    private int zzs;
    private long zzt;
    private int zzu;
    private String zzv;

    public zzamu(String str, int i) {
        this.zza = str;
        this.zzb = i;
        zzdy zzdyVar = new zzdy(1024);
        this.zzc = zzdyVar;
        byte[] zzN = zzdyVar.zzN();
        this.zzd = new zzdx(zzN, zzN.length);
        this.zzl = -9223372036854775807L;
    }

    private final int zzf(zzdx zzdxVar) {
        int zza = zzdxVar.zza();
        zzabi zzb = zzabk.zzb(zzdxVar, true);
        this.zzv = zzb.zzc;
        this.zzs = zzb.zza;
        this.zzu = zzb.zzb;
        return zza - zzdxVar.zza();
    }

    private static long zzg(zzdx zzdxVar) {
        return zzdxVar.zzd((zzdxVar.zzd(2) + 1) * 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x0159, code lost:
    
        if (r14.zzm == false) goto L89;
     */
    @Override // com.google.android.gms.internal.ads.zzamj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzdy r15) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamu.zza(com.google.android.gms.internal.ads.zzdy):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        this.zze = zzacqVar.zzw(zzanxVar.zza(), 1);
        this.zzf = zzanxVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzd(long j, int i) {
        this.zzl = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        this.zzh = 0;
        this.zzl = -9223372036854775807L;
        this.zzm = false;
    }
}

package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzaef implements zzacn {
    private final zzdy zza;
    private final zzaed zzb;
    private final boolean zzc;
    private final zzakd zzd;
    private int zze;
    private zzacq zzf;
    private zzaeg zzg;
    private long zzh;
    private zzaei[] zzi;
    private long zzj;
    private zzaei zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private int zzo;
    private boolean zzp;

    @Deprecated
    public zzaef() {
        this(1, zzakd.zza);
    }

    private final zzaei zzg(int i) {
        for (zzaei zzaeiVar : this.zzi) {
            if (zzaeiVar.zzf(i)) {
                return zzaeiVar;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    @Override // com.google.android.gms.internal.ads.zzacn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzaco r28, com.google.android.gms.internal.ads.zzadj r29) {
        /*
            Method dump skipped, instructions count: 943
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaef.zzb(com.google.android.gms.internal.ads.zzaco, com.google.android.gms.internal.ads.zzadj):int");
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
        this.zze = 0;
        if (this.zzc) {
            zzacqVar = new zzakg(zzacqVar, this.zzd);
        }
        this.zzf = zzacqVar;
        this.zzj = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        this.zzj = -1L;
        this.zzk = null;
        for (zzaei zzaeiVar : this.zzi) {
            zzaeiVar.zze(j);
        }
        if (j == 0) {
            this.zze = this.zzi.length != 0 ? 3 : 0;
        } else {
            this.zze = 6;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        zzacoVar.zzh(this.zza.zzN(), 0, 12);
        this.zza.zzL(0);
        if (this.zza.zzi() != 1179011410) {
            return false;
        }
        this.zza.zzM(4);
        return this.zza.zzi() == 541677121;
    }

    public zzaef(int i, zzakd zzakdVar) {
        this.zzd = zzakdVar;
        this.zzc = 1 == (i ^ 1);
        this.zza = new zzdy(12);
        this.zzb = new zzaed(null);
        this.zzf = new zzadh();
        this.zzi = new zzaei[0];
        this.zzm = -1L;
        this.zzn = -1L;
        this.zzl = -1;
        this.zzh = -9223372036854775807L;
    }
}

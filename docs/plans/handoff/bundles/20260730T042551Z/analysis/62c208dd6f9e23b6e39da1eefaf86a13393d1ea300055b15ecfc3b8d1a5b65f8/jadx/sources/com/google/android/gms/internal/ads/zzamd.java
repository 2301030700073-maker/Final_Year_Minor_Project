package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzamd implements zzamj {
    private final zzdx zza;
    private final zzdy zzb;
    private final String zzc;
    private final int zzd;
    private String zze;
    private zzadt zzf;
    private int zzg;
    private int zzh;
    private boolean zzi;
    private long zzj;
    private zzab zzk;
    private int zzl;
    private long zzm;

    public zzamd() {
        throw null;
    }

    public zzamd(String str, int i) {
        zzdx zzdxVar = new zzdx(new byte[16], 16);
        this.zza = zzdxVar;
        this.zzb = new zzdy(zzdxVar.zza);
        this.zzg = 0;
        this.zzh = 0;
        this.zzi = false;
        this.zzm = -9223372036854775807L;
        this.zzc = str;
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zza(zzdy zzdyVar) {
        zzcw.zzb(this.zzf);
        while (zzdyVar.zzb() > 0) {
            int i = this.zzg;
            if (i == 0) {
                while (zzdyVar.zzb() > 0) {
                    if (this.zzi) {
                        int zzm = zzdyVar.zzm();
                        this.zzi = zzm == 172;
                        if (zzm != 64) {
                            if (zzm == 65) {
                                zzm = 65;
                            }
                        }
                        this.zzg = 1;
                        zzdy zzdyVar2 = this.zzb;
                        zzdyVar2.zzN()[0] = -84;
                        zzdyVar2.zzN()[1] = zzm == 65 ? (byte) 65 : (byte) 64;
                        this.zzh = 2;
                    } else {
                        this.zzi = zzdyVar.zzm() == 172;
                    }
                }
            } else if (i != 1) {
                int min = Math.min(zzdyVar.zzb(), this.zzl - this.zzh);
                this.zzf.zzr(zzdyVar, min);
                int i2 = this.zzh + min;
                this.zzh = i2;
                if (i2 == this.zzl) {
                    zzcw.zzf(this.zzm != -9223372036854775807L);
                    this.zzf.zzt(this.zzm, 1, this.zzl, 0, null);
                    this.zzm += this.zzj;
                    this.zzg = 0;
                }
            } else {
                byte[] zzN = this.zzb.zzN();
                int min2 = Math.min(zzdyVar.zzb(), 16 - this.zzh);
                zzdyVar.zzH(zzN, this.zzh, min2);
                int i3 = this.zzh + min2;
                this.zzh = i3;
                if (i3 == 16) {
                    this.zza.zzl(0);
                    zzabo zza = zzabq.zza(this.zza);
                    zzab zzabVar = this.zzk;
                    if (zzabVar == null || zzabVar.zzD != 2 || zza.zza != zzabVar.zzE || !"audio/ac4".equals(zzabVar.zzo)) {
                        zzz zzzVar = new zzz();
                        zzzVar.zzM(this.zze);
                        zzzVar.zzaa("audio/ac4");
                        zzzVar.zzz(2);
                        zzzVar.zzab(zza.zza);
                        zzzVar.zzQ(this.zzc);
                        zzzVar.zzY(this.zzd);
                        zzab zzag = zzzVar.zzag();
                        this.zzk = zzag;
                        this.zzf.zzm(zzag);
                    }
                    this.zzl = zza.zzb;
                    this.zzj = (zza.zzc * 1000000) / this.zzk.zzE;
                    this.zzb.zzL(0);
                    this.zzf.zzr(this.zzb, 16);
                    this.zzg = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        this.zze = zzanxVar.zzb();
        this.zzf = zzacqVar.zzw(zzanxVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        this.zzg = 0;
        this.zzh = 0;
        this.zzi = false;
        this.zzm = -9223372036854775807L;
    }
}

package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzamv implements zzamj {
    private final zzdy zza;
    private final zzadf zzb;
    private final String zzc;
    private final int zzd;
    private zzadt zze;
    private String zzf;
    private int zzg;
    private int zzh;
    private boolean zzi;
    private boolean zzj;
    private long zzk;
    private int zzl;
    private long zzm;

    public zzamv() {
        throw null;
    }

    public zzamv(String str, int i) {
        this.zzg = 0;
        zzdy zzdyVar = new zzdy(4);
        this.zza = zzdyVar;
        zzdyVar.zzN()[0] = -1;
        this.zzb = new zzadf();
        this.zzm = -9223372036854775807L;
        this.zzc = str;
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zza(zzdy zzdyVar) {
        zzcw.zzb(this.zze);
        while (zzdyVar.zzb() > 0) {
            int i = this.zzg;
            if (i == 0) {
                byte[] zzN = zzdyVar.zzN();
                int zzd = zzdyVar.zzd();
                int zze = zzdyVar.zze();
                while (true) {
                    if (zzd >= zze) {
                        zzdyVar.zzL(zze);
                        break;
                    }
                    int i2 = zzd + 1;
                    byte b = zzN[zzd];
                    boolean z = (b & 255) == 255;
                    boolean z2 = this.zzj && (b & 224) == 224;
                    this.zzj = z;
                    if (z2) {
                        zzdyVar.zzL(i2);
                        this.zzj = false;
                        this.zza.zzN()[1] = zzN[zzd];
                        this.zzh = 2;
                        this.zzg = 1;
                        break;
                    }
                    zzd = i2;
                }
            } else if (i != 1) {
                int min = Math.min(zzdyVar.zzb(), this.zzl - this.zzh);
                this.zze.zzr(zzdyVar, min);
                int i3 = this.zzh + min;
                this.zzh = i3;
                if (i3 >= this.zzl) {
                    zzcw.zzf(this.zzm != -9223372036854775807L);
                    this.zze.zzt(this.zzm, 1, this.zzl, 0, null);
                    this.zzm += this.zzk;
                    this.zzh = 0;
                    this.zzg = 0;
                }
            } else {
                int min2 = Math.min(zzdyVar.zzb(), 4 - this.zzh);
                zzdyVar.zzH(this.zza.zzN(), this.zzh, min2);
                int i4 = this.zzh + min2;
                this.zzh = i4;
                if (i4 >= 4) {
                    this.zza.zzL(0);
                    if (this.zzb.zza(this.zza.zzg())) {
                        this.zzl = this.zzb.zzc;
                        if (!this.zzi) {
                            this.zzk = (r0.zzg * 1000000) / r0.zzd;
                            zzz zzzVar = new zzz();
                            zzzVar.zzM(this.zzf);
                            zzzVar.zzaa(this.zzb.zzb);
                            zzzVar.zzR(4096);
                            zzzVar.zzz(this.zzb.zze);
                            zzzVar.zzab(this.zzb.zzd);
                            zzzVar.zzQ(this.zzc);
                            zzzVar.zzY(this.zzd);
                            this.zze.zzm(zzzVar.zzag());
                            this.zzi = true;
                        }
                        this.zza.zzL(0);
                        this.zze.zzr(this.zza, 4);
                        this.zzg = 2;
                    } else {
                        this.zzh = 0;
                        this.zzg = 1;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        this.zzf = zzanxVar.zzb();
        this.zze = zzacqVar.zzw(zzanxVar.zza(), 1);
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
        this.zzj = false;
        this.zzm = -9223372036854775807L;
    }
}

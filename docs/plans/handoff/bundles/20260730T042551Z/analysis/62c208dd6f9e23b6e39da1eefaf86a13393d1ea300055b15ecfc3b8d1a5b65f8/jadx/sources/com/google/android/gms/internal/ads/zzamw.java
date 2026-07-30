package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzamw implements zzamj {
    private String zze;
    private zzadt zzf;
    private boolean zzi;
    private int zzk;
    private int zzl;
    private int zzn;
    private int zzo;
    private int zzs;
    private boolean zzu;
    private int zzd = 0;
    private final zzdy zza = new zzdy(new byte[15], 2);
    private final zzdx zzb = new zzdx();
    private final zzdy zzc = new zzdy();
    private final zzamx zzp = new zzamx();
    private int zzq = -2147483647;
    private int zzr = -1;
    private long zzt = -1;
    private boolean zzj = true;
    private boolean zzm = true;
    private double zzg = -9.223372036854776E18d;
    private double zzh = -9.223372036854776E18d;

    private static final void zzf(zzdy zzdyVar, zzdy zzdyVar2, boolean z) {
        int zzd = zzdyVar.zzd();
        int min = Math.min(zzdyVar.zzb(), zzdyVar2.zzb());
        zzdyVar.zzH(zzdyVar2.zzN(), zzdyVar2.zzd(), min);
        zzdyVar2.zzM(min);
        if (z) {
            zzdyVar.zzL(zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zza(zzdy zzdyVar) {
        int i;
        zzcw.zzb(this.zzf);
        while (zzdyVar.zzb() > 0) {
            int i2 = this.zzd;
            int i3 = 0;
            if (i2 == 0) {
                int i4 = this.zzk;
                if ((i4 & 2) != 0) {
                    if ((i4 & 4) == 0) {
                        while (zzdyVar.zzb() > 0) {
                            int i5 = this.zzl << 8;
                            this.zzl = i5;
                            int zzm = i5 | zzdyVar.zzm();
                            this.zzl = zzm;
                            if ((zzm & 16777215) == 12583333) {
                                zzdyVar.zzL(zzdyVar.zzd() - 3);
                                this.zzl = 0;
                            }
                        }
                    }
                    this.zzd = 1;
                    break;
                }
                zzdyVar.zzL(zzdyVar.zze());
            } else if (i2 != 1) {
                int i6 = this.zzp.zza;
                if (i6 == 1 || i6 == 17) {
                    zzf(zzdyVar, this.zzc, true);
                }
                int min = Math.min(zzdyVar.zzb(), this.zzp.zzc - this.zzn);
                this.zzf.zzr(zzdyVar, min);
                int i7 = this.zzn + min;
                this.zzn = i7;
                zzamx zzamxVar = this.zzp;
                if (i7 == zzamxVar.zzc) {
                    int i8 = zzamxVar.zza;
                    if (i8 == 1) {
                        byte[] zzN = this.zzc.zzN();
                        zzamy zza = zzana.zza(new zzdx(zzN, zzN.length));
                        this.zzq = zza.zzb;
                        this.zzr = zza.zzc;
                        long j = this.zzt;
                        long j2 = this.zzp.zzb;
                        if (j != j2) {
                            this.zzt = j2;
                            int i9 = zza.zza;
                            String concat = i9 != -1 ? "mhm1".concat(String.valueOf(String.format(".%02X", Integer.valueOf(i9)))) : "mhm1";
                            byte[] bArr = zza.zzd;
                            zzfxn zzfxnVar = null;
                            if (bArr != null && bArr.length > 0) {
                                zzfxnVar = zzfxn.zzp(zzei.zzf, bArr);
                            }
                            zzz zzzVar = new zzz();
                            zzzVar.zzM(this.zze);
                            zzzVar.zzaa("audio/mhm1");
                            zzzVar.zzab(this.zzq);
                            zzzVar.zzA(concat);
                            zzzVar.zzN(zzfxnVar);
                            this.zzf.zzm(zzzVar.zzag());
                        }
                        this.zzu = true;
                    } else if (i8 == 17) {
                        byte[] zzN2 = this.zzc.zzN();
                        zzdx zzdxVar = new zzdx(zzN2, zzN2.length);
                        if (zzdxVar.zzp()) {
                            zzdxVar.zzn(2);
                            i3 = zzdxVar.zzd(13);
                        }
                        this.zzs = i3;
                    } else if (i8 == 2) {
                        if (this.zzu) {
                            this.zzj = false;
                            i = 1;
                        } else {
                            i = 0;
                        }
                        int i10 = this.zzr - this.zzs;
                        double d = this.zzq;
                        long round = Math.round(this.zzg);
                        if (this.zzi) {
                            this.zzi = false;
                            this.zzg = this.zzh;
                        } else {
                            this.zzg += (i10 * 1000000.0d) / d;
                        }
                        this.zzf.zzt(round, i, this.zzo, 0, null);
                        this.zzu = false;
                        this.zzs = 0;
                        this.zzo = 0;
                    }
                    this.zzd = 1;
                }
            } else {
                zzf(zzdyVar, this.zza, false);
                zzdy zzdyVar2 = this.zza;
                if (zzdyVar2.zzb() == 0) {
                    zzdx zzdxVar2 = this.zzb;
                    int zze = zzdyVar2.zze();
                    zzdxVar2.zzk(zzdyVar2.zzN(), zze);
                    if (zzana.zzb(this.zzb, this.zzp)) {
                        this.zzn = 0;
                        this.zzo = this.zzp.zzc + zze + this.zzo;
                        this.zza.zzL(0);
                        zzadt zzadtVar = this.zzf;
                        zzdy zzdyVar3 = this.zza;
                        zzadtVar.zzr(zzdyVar3, zzdyVar3.zze());
                        this.zza.zzI(2);
                        this.zzc.zzI(this.zzp.zzc);
                        this.zzm = true;
                        this.zzd = 2;
                    } else {
                        zzdy zzdyVar4 = this.zza;
                        if (zzdyVar4.zze() < 15) {
                            zzdyVar4.zzK(zzdyVar4.zze() + 1);
                        }
                    }
                }
                this.zzm = false;
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
        this.zzk = i;
        if (!this.zzj && (this.zzo != 0 || !this.zzm)) {
            this.zzi = true;
        }
        if (j != -9223372036854775807L) {
            double d = j;
            if (this.zzi) {
                this.zzh = d;
            } else {
                this.zzg = d;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        this.zzd = 0;
        this.zzl = 0;
        this.zza.zzI(2);
        this.zzn = 0;
        this.zzo = 0;
        this.zzq = -2147483647;
        this.zzr = -1;
        this.zzs = 0;
        this.zzt = -1L;
        this.zzu = false;
        this.zzi = false;
        this.zzm = true;
        this.zzj = true;
        this.zzg = -9.223372036854776E18d;
        this.zzh = -9.223372036854776E18d;
    }
}

package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaes implements zzacn {
    private final byte[] zza;
    private final zzdy zzb;
    private final zzact zzc;
    private zzacq zzd;
    private zzadt zze;
    private int zzf;
    private zzay zzg;
    private zzacy zzh;
    private int zzi;
    private int zzj;
    private zzaer zzk;
    private int zzl;
    private long zzm;

    public zzaes() {
        throw null;
    }

    public zzaes(int i) {
        this.zza = new byte[42];
        this.zzb = new zzdy(new byte[32768], 0);
        this.zzc = new zzact();
        this.zzf = 0;
    }

    private final long zza(zzdy zzdyVar, boolean z) {
        boolean z2;
        this.zzh.getClass();
        int zzd = zzdyVar.zzd();
        while (zzd <= zzdyVar.zze() - 16) {
            zzdyVar.zzL(zzd);
            if (zzacu.zzc(zzdyVar, this.zzh, this.zzj, this.zzc)) {
                zzdyVar.zzL(zzd);
                return this.zzc.zza;
            }
            zzd++;
        }
        if (!z) {
            zzdyVar.zzL(zzd);
            return -1L;
        }
        while (zzd <= zzdyVar.zze() - this.zzi) {
            zzdyVar.zzL(zzd);
            try {
                z2 = zzacu.zzc(zzdyVar, this.zzh, this.zzj, this.zzc);
            } catch (IndexOutOfBoundsException unused) {
                z2 = false;
            }
            if (zzdyVar.zzd() <= zzdyVar.zze() && z2) {
                zzdyVar.zzL(zzd);
                return this.zzc.zza;
            }
            zzd++;
        }
        zzdyVar.zzL(zzdyVar.zze());
        return -1L;
    }

    private final void zzg() {
        long j = this.zzm * 1000000;
        zzacy zzacyVar = this.zzh;
        int i = zzei.zza;
        this.zze.zzt(j / zzacyVar.zze, 1, this.zzl, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final int zzb(zzaco zzacoVar, zzadj zzadjVar) {
        boolean zzp;
        zzadm zzadlVar;
        boolean z;
        int i = this.zzf;
        if (i == 0) {
            zzacoVar.zzj();
            long zze = zzacoVar.zze();
            zzay zza = zzacv.zza(zzacoVar, true);
            zzacoVar.zzk((int) (zzacoVar.zze() - zze));
            this.zzg = zza;
            this.zzf = 1;
            return 0;
        }
        if (i == 1) {
            zzacoVar.zzh(this.zza, 0, 42);
            zzacoVar.zzj();
            this.zzf = 2;
            return 0;
        }
        if (i == 2) {
            zzdy zzdyVar = new zzdy(4);
            zzacoVar.zzi(zzdyVar.zzN(), 0, 4);
            if (zzdyVar.zzu() != 1716281667) {
                throw zzbc.zza("Failed to read FLAC stream marker.", null);
            }
            this.zzf = 3;
            return 0;
        }
        if (i == 3) {
            zzacy zzacyVar = this.zzh;
            do {
                zzacoVar.zzj();
                zzdx zzdxVar = new zzdx(new byte[4], 4);
                zzacoVar.zzh(zzdxVar.zza, 0, 4);
                zzp = zzdxVar.zzp();
                int zzd = zzdxVar.zzd(7);
                int zzd2 = zzdxVar.zzd(24) + 4;
                if (zzd == 0) {
                    byte[] bArr = new byte[38];
                    zzacoVar.zzi(bArr, 0, 38);
                    zzacyVar = new zzacy(bArr, 4);
                } else {
                    if (zzacyVar == null) {
                        throw new IllegalArgumentException();
                    }
                    if (zzd == 3) {
                        zzdy zzdyVar2 = new zzdy(zzd2);
                        zzacoVar.zzi(zzdyVar2.zzN(), 0, zzd2);
                        zzacyVar = zzacyVar.zzf(zzacv.zzb(zzdyVar2));
                    } else if (zzd == 4) {
                        zzdy zzdyVar3 = new zzdy(zzd2);
                        zzacoVar.zzi(zzdyVar3.zzN(), 0, zzd2);
                        zzdyVar3.zzM(4);
                        zzacyVar = zzacyVar.zzg(Arrays.asList(zzadz.zzc(zzdyVar3, false, false).zza));
                    } else if (zzd == 6) {
                        zzdy zzdyVar4 = new zzdy(zzd2);
                        zzacoVar.zzi(zzdyVar4.zzN(), 0, zzd2);
                        zzdyVar4.zzM(4);
                        zzacyVar = zzacyVar.zze(zzfxn.zzo(zzafn.zzb(zzdyVar4)));
                    } else {
                        zzacoVar.zzk(zzd2);
                    }
                }
                int i2 = zzei.zza;
                this.zzh = zzacyVar;
            } while (!zzp);
            zzacyVar.getClass();
            this.zzi = Math.max(zzacyVar.zzc, 6);
            this.zze.zzm(this.zzh.zzc(this.zza, this.zzg));
            this.zzf = 4;
            return 0;
        }
        if (i == 4) {
            zzacoVar.zzj();
            zzdy zzdyVar5 = new zzdy(2);
            zzacoVar.zzh(zzdyVar5.zzN(), 0, 2);
            int zzq = zzdyVar5.zzq();
            if ((zzq >> 2) != 16382) {
                zzacoVar.zzj();
                throw zzbc.zza("First frame does not start with sync code.", null);
            }
            zzacoVar.zzj();
            this.zzj = zzq;
            zzacq zzacqVar = this.zzd;
            int i3 = zzei.zza;
            long zzf = zzacoVar.zzf();
            long zzd3 = zzacoVar.zzd();
            zzacy zzacyVar2 = this.zzh;
            zzacyVar2.getClass();
            if (zzacyVar2.zzk != null) {
                zzadlVar = new zzacw(zzacyVar2, zzf);
            } else if (zzd3 == -1 || zzacyVar2.zzj <= 0) {
                zzadlVar = new zzadl(zzacyVar2.zza(), 0L);
            } else {
                zzaer zzaerVar = new zzaer(zzacyVar2, this.zzj, zzf, zzd3);
                this.zzk = zzaerVar;
                zzadlVar = zzaerVar.zzb();
            }
            zzacqVar.zzO(zzadlVar);
            this.zzf = 5;
            return 0;
        }
        this.zze.getClass();
        zzacy zzacyVar3 = this.zzh;
        zzacyVar3.getClass();
        zzaer zzaerVar2 = this.zzk;
        if (zzaerVar2 != null && zzaerVar2.zze()) {
            return zzaerVar2.zza(zzacoVar, zzadjVar);
        }
        if (this.zzm == -1) {
            this.zzm = zzacu.zzb(zzacoVar, zzacyVar3);
            return 0;
        }
        zzdy zzdyVar6 = this.zzb;
        int zze2 = zzdyVar6.zze();
        if (zze2 < 32768) {
            int zza2 = zzacoVar.zza(zzdyVar6.zzN(), zze2, 32768 - zze2);
            z = zza2 == -1;
            if (!z) {
                this.zzb.zzK(zze2 + zza2);
            } else if (this.zzb.zzb() == 0) {
                zzg();
                return -1;
            }
        } else {
            z = false;
        }
        zzdy zzdyVar7 = this.zzb;
        int zzd4 = zzdyVar7.zzd();
        int i4 = this.zzl;
        int i5 = this.zzi;
        if (i4 < i5) {
            zzdyVar7.zzM(Math.min(i5 - i4, zzdyVar7.zzb()));
        }
        long zza3 = zza(this.zzb, z);
        zzdy zzdyVar8 = this.zzb;
        int zzd5 = zzdyVar8.zzd() - zzd4;
        zzdyVar8.zzL(zzd4);
        this.zze.zzr(this.zzb, zzd5);
        this.zzl += zzd5;
        if (zza3 != -1) {
            zzg();
            this.zzl = 0;
            this.zzm = zza3;
        }
        zzdy zzdyVar9 = this.zzb;
        if (zzdyVar9.zzb() >= 16) {
            return 0;
        }
        int zzb = zzdyVar9.zzb();
        System.arraycopy(zzdyVar9.zzN(), zzdyVar9.zzd(), zzdyVar9.zzN(), 0, zzb);
        this.zzb.zzL(0);
        this.zzb.zzK(zzb);
        return 0;
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
        this.zzd = zzacqVar;
        this.zze = zzacqVar.zzw(0, 1);
        zzacqVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        if (j == 0) {
            this.zzf = 0;
        } else {
            zzaer zzaerVar = this.zzk;
            if (zzaerVar != null) {
                zzaerVar.zzd(j2);
            }
        }
        this.zzm = j2 != 0 ? -1L : 0L;
        this.zzl = 0;
        this.zzb.zzI(0);
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        zzacv.zza(zzacoVar, false);
        zzdy zzdyVar = new zzdy(4);
        ((zzacc) zzacoVar).zzm(zzdyVar.zzN(), 0, 4, false);
        return zzdyVar.zzu() == 1716281667;
    }
}

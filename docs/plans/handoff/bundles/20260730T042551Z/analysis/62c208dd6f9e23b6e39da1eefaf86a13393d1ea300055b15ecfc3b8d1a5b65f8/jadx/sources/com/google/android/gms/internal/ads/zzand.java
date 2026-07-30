package com.google.android.gms.internal.ads;

import defpackage.Cpublic;

/* loaded from: classes.dex */
public final class zzand implements zzany {
    private final zzamj zza;
    private final zzdx zzb = new zzdx(new byte[10], 10);
    private int zzc = 0;
    private int zzd;
    private zzef zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;

    public zzand(zzamj zzamjVar) {
        this.zza = zzamjVar;
    }

    private final void zze(int i) {
        this.zzc = i;
        this.zzd = 0;
    }

    private final boolean zzf(zzdy zzdyVar, byte[] bArr, int i) {
        int min = Math.min(zzdyVar.zzb(), i - this.zzd);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            zzdyVar.zzM(min);
        } else {
            zzdyVar.zzH(bArr, this.zzd, min);
        }
        int i2 = this.zzd + min;
        this.zzd = i2;
        return i2 == i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v2 */
    @Override // com.google.android.gms.internal.ads.zzany
    public final void zza(zzdy zzdyVar, int i) {
        zzdy zzdyVar2;
        int i2;
        int i3;
        int i4;
        int i5;
        long j;
        zzdy zzdyVar3 = zzdyVar;
        zzcw.zzb(this.zze);
        int i6 = -1;
        int i7 = 2;
        ?? r6 = 0;
        int i8 = 1;
        if ((i & 1) != 0) {
            int i9 = this.zzc;
            if (i9 != 0 && i9 != 1) {
                if (i9 != 2) {
                    int i10 = this.zzj;
                    if (i10 != -1) {
                        zzdo.zzf("PesReader", "Unexpected start indicator: expected " + i10 + " more bytes");
                    }
                    this.zza.zzc(zzdyVar.zze() == 0);
                } else {
                    zzdo.zzf("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            zze(1);
        }
        int i11 = i;
        while (zzdyVar.zzb() > 0) {
            int i12 = this.zzc;
            if (i12 != 0) {
                if (i12 != i8) {
                    if (i12 != i7) {
                        int zzb = zzdyVar.zzb();
                        int i13 = this.zzj;
                        int i14 = i13 == i6 ? 0 : zzb - i13;
                        if (i14 > 0) {
                            zzb -= i14;
                            zzdyVar3.zzK(zzdyVar.zzd() + zzb);
                        }
                        this.zza.zza(zzdyVar3);
                        int i15 = this.zzj;
                        if (i15 != i6) {
                            int i16 = i15 - zzb;
                            this.zzj = i16;
                            if (i16 == 0) {
                                this.zza.zzc(r6);
                                zze(i8);
                            }
                        }
                    } else {
                        if (zzf(zzdyVar3, this.zzb.zza, Math.min(10, this.zzi)) && zzf(zzdyVar3, null, this.zzi)) {
                            this.zzb.zzl(r6);
                            if (this.zzf) {
                                this.zzb.zzn(4);
                                long zzd = this.zzb.zzd(3);
                                this.zzb.zzn(i8);
                                int zzd2 = this.zzb.zzd(15) << 15;
                                this.zzb.zzn(i8);
                                long zzd3 = this.zzb.zzd(15);
                                this.zzb.zzn(i8);
                                if (this.zzh || !this.zzg) {
                                    i5 = i11;
                                } else {
                                    this.zzb.zzn(4);
                                    this.zzb.zzn(i8);
                                    int zzd4 = this.zzb.zzd(15) << 15;
                                    this.zzb.zzn(i8);
                                    long zzd5 = this.zzb.zzd(15);
                                    this.zzb.zzn(i8);
                                    i5 = i11;
                                    this.zze.zzb(zzd4 | (this.zzb.zzd(3) << 30) | zzd5);
                                    this.zzh = true;
                                }
                                j = this.zze.zzb((zzd << 30) | zzd2 | zzd3);
                            } else {
                                i5 = i11;
                                j = -9223372036854775807L;
                            }
                            int i17 = (true != this.zzk ? 0 : 4) | i5;
                            this.zza.zzd(j, i17);
                            zze(3);
                            zzdyVar2 = zzdyVar;
                            i11 = i17;
                            i6 = -1;
                        }
                    }
                    i2 = i11;
                    zzdyVar2 = zzdyVar;
                } else {
                    i2 = i11;
                    zzdyVar2 = zzdyVar;
                    if (zzf(zzdyVar2, this.zzb.zza, 9)) {
                        this.zzb.zzl(0);
                        int zzd6 = this.zzb.zzd(24);
                        if (zzd6 != 1) {
                            Cpublic.m7824goto("Unexpected start code prefix: ", zzd6, "PesReader");
                            i3 = -1;
                            this.zzj = -1;
                            i4 = 0;
                        } else {
                            this.zzb.zzn(8);
                            zzdx zzdxVar = this.zzb;
                            int zzd7 = zzdxVar.zzd(16);
                            zzdxVar.zzn(5);
                            this.zzk = this.zzb.zzp();
                            this.zzb.zzn(2);
                            this.zzf = this.zzb.zzp();
                            this.zzg = this.zzb.zzp();
                            this.zzb.zzn(6);
                            int zzd8 = this.zzb.zzd(8);
                            this.zzi = zzd8;
                            if (zzd7 == 0) {
                                this.zzj = -1;
                            } else {
                                int i18 = (zzd7 - 3) - zzd8;
                                this.zzj = i18;
                                if (i18 < 0) {
                                    Cpublic.m7824goto("Found negative packet payload size: ", i18, "PesReader");
                                    i3 = -1;
                                    this.zzj = -1;
                                    i4 = 2;
                                }
                            }
                            i3 = -1;
                            i4 = 2;
                        }
                        zze(i4);
                        i6 = i3;
                    } else {
                        i6 = -1;
                    }
                }
                i11 = i2;
            } else {
                zzdyVar2 = zzdyVar3;
                zzdyVar2.zzM(zzdyVar.zzb());
            }
            r6 = 0;
            i8 = 1;
            zzdyVar3 = zzdyVar2;
            i7 = 2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzany
    public final void zzb(zzef zzefVar, zzacq zzacqVar, zzanx zzanxVar) {
        this.zze = zzefVar;
        this.zza.zzb(zzacqVar, zzanxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzany
    public final void zzc() {
        this.zzc = 0;
        this.zzd = 0;
        this.zzh = false;
        this.zza.zze();
    }

    public final boolean zzd(boolean z) {
        return this.zzc == 3 && this.zzj == -1;
    }
}

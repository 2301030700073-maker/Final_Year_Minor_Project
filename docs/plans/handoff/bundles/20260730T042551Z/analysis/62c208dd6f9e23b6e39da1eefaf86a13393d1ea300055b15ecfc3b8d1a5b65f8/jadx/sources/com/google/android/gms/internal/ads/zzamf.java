package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
public final class zzamf implements zzamj {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    private final zzdx zzc = new zzdx(new byte[7], 7);
    private final zzdy zzd = new zzdy(Arrays.copyOf(zza, 10));
    private final String zze;
    private final int zzf;
    private String zzg;
    private zzadt zzh;
    private zzadt zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private boolean zzm;
    private boolean zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;
    private long zzs;
    private int zzt;
    private long zzu;
    private zzadt zzv;
    private long zzw;

    public zzamf(boolean z, String str, int i) {
        zzh();
        this.zzo = -1;
        this.zzp = -1;
        this.zzs = -9223372036854775807L;
        this.zzu = -9223372036854775807L;
        this.zzb = z;
        this.zze = str;
        this.zzf = i;
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    private final void zzg() {
        this.zzn = false;
        zzh();
    }

    private final void zzh() {
        this.zzj = 0;
        this.zzk = 0;
        this.zzl = 256;
    }

    private final void zzi() {
        this.zzj = 3;
        this.zzk = 0;
    }

    private final void zzj(zzadt zzadtVar, long j, int i, int i2) {
        this.zzj = 4;
        this.zzk = i;
        this.zzv = zzadtVar;
        this.zzw = j;
        this.zzt = i2;
    }

    private final boolean zzk(zzdy zzdyVar, byte[] bArr, int i) {
        int min = Math.min(zzdyVar.zzb(), i - this.zzk);
        zzdyVar.zzH(bArr, this.zzk, min);
        int i2 = this.zzk + min;
        this.zzk = i2;
        return i2 == i;
    }

    private static final boolean zzl(byte b, byte b2) {
        return zzf((b2 & 255) | 65280);
    }

    private static final boolean zzm(zzdy zzdyVar, byte[] bArr, int i) {
        if (zzdyVar.zzb() < i) {
            return false;
        }
        zzdyVar.zzH(bArr, 0, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zza(zzdy zzdyVar) {
        int i;
        int i2;
        int i3;
        this.zzh.getClass();
        int i4 = zzei.zza;
        while (zzdyVar.zzb() > 0) {
            int i5 = this.zzj;
            int i6 = 13;
            int i7 = 2;
            if (i5 == 0) {
                byte[] zzN = zzdyVar.zzN();
                int zzd = zzdyVar.zzd();
                int zze = zzdyVar.zze();
                while (true) {
                    if (zzd >= zze) {
                        zzdyVar.zzL(zzd);
                        break;
                    }
                    i = zzd + 1;
                    i2 = zzN[zzd] & 255;
                    if (this.zzl == 512 && zzl((byte) -1, (byte) i2)) {
                        if (!this.zzn) {
                            int i8 = i - 2;
                            zzdyVar.zzL(i8 + 1);
                            if (zzm(zzdyVar, this.zzc.zza, 1)) {
                                this.zzc.zzl(4);
                                int zzd2 = this.zzc.zzd(1);
                                int i9 = this.zzo;
                                if (i9 == -1 || zzd2 == i9) {
                                    if (this.zzp != -1) {
                                        if (!zzm(zzdyVar, this.zzc.zza, 1)) {
                                            break;
                                        }
                                        this.zzc.zzl(i7);
                                        if (this.zzc.zzd(4) == this.zzp) {
                                            zzdyVar.zzL(i8 + 2);
                                        }
                                    }
                                    if (!zzm(zzdyVar, this.zzc.zza, 4)) {
                                        break;
                                    }
                                    this.zzc.zzl(14);
                                    int zzd3 = this.zzc.zzd(i6);
                                    if (zzd3 >= 7) {
                                        byte[] zzN2 = zzdyVar.zzN();
                                        int zze2 = zzdyVar.zze();
                                        int i10 = i8 + zzd3;
                                        if (i10 < zze2) {
                                            byte b = zzN2[i10];
                                            if (b != -1) {
                                                if (b == 73) {
                                                    int i11 = i10 + 1;
                                                    if (i11 == zze2) {
                                                        break;
                                                    }
                                                    if (zzN2[i11] == 68) {
                                                        int i12 = i10 + 2;
                                                        if (i12 == zze2) {
                                                            break;
                                                        } else if (zzN2[i12] == 51) {
                                                            break;
                                                        }
                                                    }
                                                }
                                            } else {
                                                int i13 = i10 + 1;
                                                if (i13 == zze2) {
                                                    break;
                                                }
                                                byte b2 = zzN2[i13];
                                                if (zzl((byte) -1, b2) && ((b2 & 8) >> 3) == zzd2) {
                                                    break;
                                                }
                                            }
                                        } else {
                                            break;
                                        }
                                    }
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    int i14 = this.zzl;
                    int i15 = i14 | i2;
                    if (i15 == 329) {
                        i3 = 768;
                    } else if (i15 == 511) {
                        i3 = AdRequest.MAX_CONTENT_URL_LENGTH;
                    } else if (i15 == 836) {
                        i3 = 1024;
                    } else {
                        if (i15 == 1075) {
                            this.zzj = 2;
                            this.zzk = 3;
                            this.zzt = 0;
                            this.zzd.zzL(0);
                            zzdyVar.zzL(i);
                            break;
                        }
                        if (i14 != 256) {
                            this.zzl = 256;
                            zzd = i - 1;
                            i6 = 13;
                            i7 = 2;
                        } else {
                            zzd = i;
                            i6 = 13;
                            i7 = 2;
                        }
                    }
                    this.zzl = i3;
                    zzd = i;
                    i6 = 13;
                    i7 = 2;
                }
                this.zzq = (i2 & 8) >> 3;
                this.zzm = 1 == ((i2 & 1) ^ 1);
                if (this.zzn) {
                    zzi();
                } else {
                    this.zzj = 1;
                    this.zzk = 0;
                }
                zzdyVar.zzL(i);
            } else if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        int min = Math.min(zzdyVar.zzb(), this.zzt - this.zzk);
                        this.zzv.zzr(zzdyVar, min);
                        int i16 = this.zzk + min;
                        this.zzk = i16;
                        if (i16 == this.zzt) {
                            zzcw.zzf(this.zzu != -9223372036854775807L);
                            this.zzv.zzt(this.zzu, 1, this.zzt, 0, null);
                            this.zzu += this.zzw;
                            zzh();
                        }
                    } else {
                        if (zzk(zzdyVar, this.zzc.zza, true != this.zzm ? 5 : 7)) {
                            this.zzc.zzl(0);
                            if (this.zzr) {
                                this.zzc.zzn(10);
                            } else {
                                int zzd4 = this.zzc.zzd(2) + 1;
                                if (zzd4 != 2) {
                                    zzdo.zzf("AdtsReader", "Detected audio object type: " + zzd4 + ", but assuming AAC LC.");
                                }
                                this.zzc.zzn(5);
                                int zzd5 = this.zzc.zzd(3);
                                int i17 = this.zzp;
                                byte[] bArr = {(byte) (((i17 >> 1) & 7) | 16), (byte) (((zzd5 << 3) & 120) | ((i17 << 7) & 128))};
                                zzabi zza2 = zzabk.zza(bArr);
                                zzz zzzVar = new zzz();
                                zzzVar.zzM(this.zzg);
                                zzzVar.zzaa("audio/mp4a-latm");
                                zzzVar.zzA(zza2.zzc);
                                zzzVar.zzz(zza2.zzb);
                                zzzVar.zzab(zza2.zza);
                                zzzVar.zzN(Collections.singletonList(bArr));
                                zzzVar.zzQ(this.zze);
                                zzzVar.zzY(this.zzf);
                                zzab zzag = zzzVar.zzag();
                                this.zzs = 1024000000 / zzag.zzE;
                                this.zzh.zzm(zzag);
                                this.zzr = true;
                            }
                            this.zzc.zzn(4);
                            int zzd6 = this.zzc.zzd(13) - 7;
                            if (this.zzm) {
                                zzd6 -= 2;
                            }
                            zzj(this.zzh, this.zzs, 0, zzd6);
                        }
                    }
                } else if (zzk(zzdyVar, this.zzd.zzN(), 10)) {
                    this.zzi.zzr(this.zzd, 10);
                    this.zzd.zzL(6);
                    zzj(this.zzi, 0L, 10, 10 + this.zzd.zzl());
                }
            } else if (zzdyVar.zzb() != 0) {
                zzdx zzdxVar = this.zzc;
                zzdxVar.zza[0] = zzdyVar.zzN()[zzdyVar.zzd()];
                zzdxVar.zzl(2);
                int zzd7 = this.zzc.zzd(4);
                int i18 = this.zzp;
                if (i18 == -1 || zzd7 == i18) {
                    if (!this.zzn) {
                        this.zzn = true;
                        this.zzo = this.zzq;
                        this.zzp = zzd7;
                    }
                    zzi();
                } else {
                    zzg();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        this.zzg = zzanxVar.zzb();
        zzadt zzw = zzacqVar.zzw(zzanxVar.zza(), 1);
        this.zzh = zzw;
        this.zzv = zzw;
        if (!this.zzb) {
            this.zzi = new zzaci();
            return;
        }
        zzanxVar.zzc();
        zzadt zzw2 = zzacqVar.zzw(zzanxVar.zza(), 5);
        this.zzi = zzw2;
        zzz zzzVar = new zzz();
        zzzVar.zzM(zzanxVar.zzb());
        zzzVar.zzaa("application/id3");
        zzw2.zzm(zzzVar.zzag());
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzd(long j, int i) {
        this.zzu = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        this.zzu = -9223372036854775807L;
        zzg();
    }
}

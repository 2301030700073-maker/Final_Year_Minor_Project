package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzaks {
    private final zzdy zza = new zzdy();
    private final int[] zzb = new int[256];
    private boolean zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    public static /* bridge */ /* synthetic */ void zzb(zzaks zzaksVar, zzdy zzdyVar, int i) {
        int zzo;
        if (i < 4) {
            return;
        }
        zzdyVar.zzM(3);
        int i2 = i - 4;
        if ((zzdyVar.zzm() & 128) != 0) {
            if (i2 < 7 || (zzo = zzdyVar.zzo()) < 4) {
                return;
            }
            zzaksVar.zzh = zzdyVar.zzq();
            zzaksVar.zzi = zzdyVar.zzq();
            zzaksVar.zza.zzI(zzo - 4);
            i2 -= 7;
        }
        zzdy zzdyVar2 = zzaksVar.zza;
        int zzd = zzdyVar2.zzd();
        int zze = zzdyVar2.zze();
        if (zzd >= zze || i2 <= 0) {
            return;
        }
        int min = Math.min(i2, zze - zzd);
        zzdyVar.zzH(zzdyVar2.zzN(), zzd, min);
        zzaksVar.zza.zzL(zzd + min);
    }

    public static /* bridge */ /* synthetic */ void zzc(zzaks zzaksVar, zzdy zzdyVar, int i) {
        if (i < 19) {
            return;
        }
        zzaksVar.zzd = zzdyVar.zzq();
        zzaksVar.zze = zzdyVar.zzq();
        zzdyVar.zzM(11);
        zzaksVar.zzf = zzdyVar.zzq();
        zzaksVar.zzg = zzdyVar.zzq();
    }

    public static /* bridge */ /* synthetic */ void zzd(zzaks zzaksVar, zzdy zzdyVar, int i) {
        if (i % 5 != 2) {
            return;
        }
        zzdyVar.zzM(2);
        int i2 = 0;
        Arrays.fill(zzaksVar.zzb, 0);
        int i3 = i / 5;
        int i4 = 0;
        while (i4 < i3) {
            int zzm = zzdyVar.zzm();
            int zzm2 = zzdyVar.zzm();
            int zzm3 = zzdyVar.zzm();
            int zzm4 = zzdyVar.zzm();
            int zzm5 = zzdyVar.zzm();
            double d = zzm2;
            int[] iArr = zzaksVar.zzb;
            double d2 = zzm3 - 128;
            int max = Math.max(i2, Math.min((int) ((1.402d * d2) + d), 255)) << 16;
            double d3 = zzm4 - 128;
            iArr[zzm] = Math.max(0, Math.min((int) ((d3 * 1.772d) + d), 255)) | (zzm5 << 24) | max | (Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)) << 8);
            i4++;
            i2 = 0;
        }
        zzaksVar.zzc = true;
    }

    public final zzco zza() {
        int i;
        if (this.zzd == 0 || this.zze == 0 || this.zzh == 0 || this.zzi == 0) {
            return null;
        }
        zzdy zzdyVar = this.zza;
        if (zzdyVar.zze() == 0 || zzdyVar.zzd() != zzdyVar.zze() || !this.zzc) {
            return null;
        }
        zzdyVar.zzL(0);
        int i2 = this.zzh * this.zzi;
        int[] iArr = new int[i2];
        int i3 = 0;
        while (i3 < i2) {
            int zzm = this.zza.zzm();
            if (zzm != 0) {
                i = i3 + 1;
                iArr[i3] = this.zzb[zzm];
            } else {
                int zzm2 = this.zza.zzm();
                if (zzm2 != 0) {
                    int i4 = zzm2 & 63;
                    if ((zzm2 & 64) != 0) {
                        i4 = (i4 << 8) | this.zza.zzm();
                    }
                    i = i4 + i3;
                    Arrays.fill(iArr, i3, i, (zzm2 & 128) == 0 ? this.zzb[0] : this.zzb[this.zza.zzm()]);
                }
            }
            i3 = i;
        }
        Bitmap createBitmap = Bitmap.createBitmap(iArr, this.zzh, this.zzi, Bitmap.Config.ARGB_8888);
        zzcm zzcmVar = new zzcm();
        zzcmVar.zzc(createBitmap);
        zzcmVar.zzh(this.zzf / this.zzd);
        zzcmVar.zzi(0);
        zzcmVar.zze(this.zzg / this.zze, 0);
        zzcmVar.zzf(0);
        zzcmVar.zzk(this.zzh / this.zzd);
        zzcmVar.zzd(this.zzi / this.zze);
        return zzcmVar.zzp();
    }

    public final void zze() {
        this.zzd = 0;
        this.zze = 0;
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = 0;
        this.zzi = 0;
        this.zza.zzI(0);
        this.zzc = false;
    }
}

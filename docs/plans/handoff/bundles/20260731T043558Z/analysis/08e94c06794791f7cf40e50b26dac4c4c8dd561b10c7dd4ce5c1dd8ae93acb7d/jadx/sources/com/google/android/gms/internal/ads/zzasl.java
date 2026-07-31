package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzasl {
    public int zza;
    public zzasg zzb;
    public zzaru zzc;
    public zzarx zzd;

    zzasl() {
        this(new zzarx(1));
    }

    public zzasl(zzarx zzarxVar) {
        this(zzasg.zzb, 0, new zzarv());
        this.zzd = zzarxVar;
    }

    private zzasl(zzasg zzasgVar, int i, zzaru zzaruVar) {
        this.zzb = zzasgVar;
        this.zza = i;
        this.zzc = zzaruVar;
    }

    public zzasl(zzasg zzasgVar, int i, zzaru zzaruVar, zzarx zzarxVar) {
        this(zzasgVar, i, zzaruVar);
        this.zzd = zzarxVar;
    }

    private final long zzg() throws zzask, zzasi {
        int i = ((((~1246322141) & 272302173) | 1841378864) + ((1246322141 & 825937997) | 658822930)) - (-1823634633);
        int i2 = 1600766768 % 649830540;
        int i3 = ((((~680326130) & 1378702392) | 3315809) + ((680326130 & 1913472410) | 739293607)) - 2048099035;
        int i4 = 1743768897 % 152059765;
        int i5 = ((((~973294814) & 1252035530) | 51191353) + ((973294814 & 1755616710) | 889459732)) - 1494176168;
        int i6 = 1861701682 % 1196748250;
        int i7 = ((((~29116548) & 174422021) | 84710160) + ((29116548 & (-1973327347)) | (-1266641286))) - (-1891729929);
        int i8 = 2091729405 % 1207774949;
        int i9 = ((((~80201211) & 1629524354) | 38778411) + ((80201211 & 1977746312) | 382371455)) - 1921480783;
        int i10 = 1050760512 % 184320788;
        int i11 = 0;
        long j = 0;
        while (i11 < (i ^ i2)) {
            try {
                zzaru zzaruVar = this.zzc;
                zzasg zzasgVar = this.zzb;
                int i12 = i;
                int i13 = this.zza;
                int i14 = i2;
                this.zza = i13 + 1;
                byte zza = zzaruVar.zza(zzasgVar, i13);
                int i15 = i5 ^ i6;
                j |= ((i3 ^ i4) & zza) << i11;
                if (i11 == i15) {
                    if (zza > 1) {
                        throw new zzasi();
                    }
                    i11 = i15;
                }
                if ((zza & (i7 ^ i8)) == 0) {
                    return (j >>> 1) ^ (-(1 & j));
                }
                i11 += i9 ^ i10;
                i = i12;
                i2 = i14;
            } catch (IndexOutOfBoundsException e) {
                throw new zzask(e);
            }
        }
        throw new zzasi();
    }

    private static final void zzh(long j) throws zzasj {
        long[] jArr = {141540322, 456640674, 1141397064, 993500330, 1614820873, 3337980909L, 410218731, 1716462158, 477127367};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        if (j % ((jArr[6] + ((((j3 & (~j2)) | j4) + ((j2 & j5) | j6)) - j7)) ^ (jArr[7] % 477127367)) != 0) {
            throw new zzasj();
        }
    }

    public final void zza(long j) throws zzasj, zzask {
        long[] jArr = {2139842053, 728564241, 750932242, 1403848321, 1892818418, 4558981222L, 1919655804, 1856374729, 899334107};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        zzh(j);
        long j10 = j / ((j8 + (((((~j2) & j3) | j4) + ((j2 & j5) | j6)) - j7)) ^ (j9 % 899334107));
        if (j10 >= 0 && j10 <= this.zzb.zza.length) {
            this.zza = (int) j10;
            return;
        }
        throw new zzask();
    }

    public final long zzb() {
        long[] jArr = {491705403, 818579170, 1201981453, 810223590, 1243973916, 3701563257L, 554701476, 1889947178, 1780695788};
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        return this.zza * ((jArr[6] + ((((j2 & (~j)) | j3) + ((j & j4) | j5)) - jArr[5])) ^ (jArr[7] % 1780695788));
    }

    public final long zzc() throws zzask {
        try {
            zzaru zzaruVar = this.zzc;
            zzasg zzasgVar = this.zzb;
            this.zza = this.zza + 1;
            return zzaruVar.zza(zzasgVar, r2);
        } catch (IndexOutOfBoundsException e) {
            throw new zzask(e);
        }
    }

    public final int zzd() throws zzask {
        int i = ((((~413360099) & 1621678468) | 84323740) + ((413360099 & 1621644360) | 385888249)) - 1513564466;
        int i2 = 1609416931 % 1031126087;
        int i3 = ((((~978587665) & 1228171537) | 1025392332) + ((978587665 & 1075859857) | 983056096)) - (-1589113644);
        int i4 = 1723578341 % 672563970;
        int i5 = ((((~1163384280) & 546336857) | 505597090) + ((1163384280 & 546323033) | 358992768)) - 1346988633;
        int i6 = 1124734562 % 530406424;
        int i7 = ((((~217161528) & 116398273) | 202500381) + ((217161528 & 316821712) | 269928733)) - 410012058;
        int i8 = 529302443 % 418646579;
        try {
            zzaru zzaruVar = this.zzc;
            zzasg zzasgVar = this.zzb;
            int i9 = this.zza;
            this.zza = i9 + 1;
            int i10 = i ^ i2;
            int zza = zzaruVar.zza(zzasgVar, i9) & i10;
            zzaru zzaruVar2 = this.zzc;
            zzasg zzasgVar2 = this.zzb;
            int i11 = this.zza;
            this.zza = i11 + 1;
            int zza2 = zza | ((zzaruVar2.zza(zzasgVar2, i11) & i10) << (i3 ^ i4));
            zzaru zzaruVar3 = this.zzc;
            zzasg zzasgVar3 = this.zzb;
            int i12 = this.zza;
            this.zza = i12 + 1;
            int zza3 = zza2 | ((i10 & zzaruVar3.zza(zzasgVar3, i12)) << (i5 ^ i6));
            zzaru zzaruVar4 = this.zzc;
            zzasg zzasgVar4 = this.zzb;
            int i13 = this.zza;
            this.zza = i13 + 1;
            return zza3 | (zzaruVar4.zza(zzasgVar4, i13) << (i7 ^ i8));
        } catch (IndexOutOfBoundsException e) {
            throw new zzask(e);
        }
    }

    public final long zze() throws zzask, zzasi {
        return zzg();
    }

    public final zzasg zzf(long j) throws zzasj, zzask {
        int[] iArr = {1667674495, 1502201381, 1197125461, 478240810, 622476187, -1652496091, 840440151, 1203013321, 774318984};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        zzh(zzb() + j);
        int i10 = this.zza;
        long j2 = i10;
        zzasg zzasgVar = this.zzb;
        long j3 = (j >> ((i8 % 774318984) ^ i9)) + j2;
        if (j3 > zzasgVar.zza.length || j3 < j2) {
            throw new zzask();
        }
        try {
            int i11 = (int) j3;
            zzasg zzb = this.zzc.zzb(zzasgVar, i10, i11);
            this.zza = i11;
            return zzb;
        } catch (IndexOutOfBoundsException e) {
            throw new AssertionError(zzase.zza("CEiv6BFfPnitUE+D"), e);
        }
    }
}

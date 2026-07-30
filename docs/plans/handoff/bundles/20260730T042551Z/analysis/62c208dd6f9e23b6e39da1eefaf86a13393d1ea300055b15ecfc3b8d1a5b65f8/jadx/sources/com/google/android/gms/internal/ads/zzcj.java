package com.google.android.gms.internal.ads;

import com.google.android.gms.wearable.WearableStatusCodes;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzcj {
    private final int zza;
    private final int zzb;
    private final float zzc;
    private final float zzd;
    private final float zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final short[] zzi;
    private short[] zzj;
    private int zzk;
    private short[] zzl;
    private int zzm;
    private short[] zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private int zzt;
    private int zzu;
    private int zzv;
    private double zzw;

    public zzcj(int i, int i2, float f, float f2, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = f;
        this.zzd = f2;
        this.zze = i / i3;
        this.zzf = i / 400;
        int i4 = i / 65;
        this.zzg = i4;
        int i5 = i4 + i4;
        this.zzh = i5;
        this.zzi = new short[i5];
        int i6 = i5 * i2;
        this.zzj = new short[i6];
        this.zzl = new short[i6];
        this.zzn = new short[i6];
    }

    private final int zzg(short[] sArr, int i, int i2, int i3) {
        int i4 = 1;
        int i5 = 255;
        int i6 = 0;
        int i7 = 0;
        while (i2 <= i3) {
            int i8 = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                int i10 = this.zzb * i;
                i8 += Math.abs(sArr[i10 + i9] - sArr[(i10 + i2) + i9]);
            }
            int i11 = i8 * i6;
            int i12 = i4 * i2;
            if (i11 < i12) {
                i4 = i8;
            }
            if (i11 < i12) {
                i6 = i2;
            }
            int i13 = i8 * i5;
            int i14 = i7 * i2;
            if (i13 > i14) {
                i7 = i8;
            }
            if (i13 > i14) {
                i5 = i2;
            }
            i2++;
        }
        this.zzu = i4 / i6;
        this.zzv = i7 / i5;
        return i6;
    }

    private final void zzh(short[] sArr, int i, int i2) {
        short[] zzl = zzl(this.zzl, this.zzm, i2);
        this.zzl = zzl;
        int i3 = this.zzm;
        int i4 = this.zzb;
        System.arraycopy(sArr, i * i4, zzl, i3 * i4, i2 * i4);
        this.zzm += i2;
    }

    private final void zzi(short[] sArr, int i, int i2) {
        int i3;
        for (int i4 = 0; i4 < this.zzh / i2; i4++) {
            int i5 = 0;
            int i6 = 0;
            while (true) {
                int i7 = this.zzb;
                i3 = i7 * i2;
                if (i5 < i3) {
                    i6 += sArr[(i3 * i4) + (i7 * i) + i5];
                    i5++;
                }
            }
            this.zzi[i4] = (short) (i6 / i3);
        }
    }

    private static void zzj(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i4 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i3 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i9] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i7])) / i);
                i9 += i2;
                i7 += i2;
                i8 += i2;
            }
        }
    }

    private final void zzk() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j;
        long j2;
        double d = this.zzc / this.zzd;
        int i8 = 0;
        int i9 = 1;
        int i10 = this.zzm;
        if (d > 1.00001d || d < 0.99999d) {
            int i11 = this.zzk;
            if (i11 >= this.zzh) {
                int i12 = 0;
                while (true) {
                    int i13 = this.zzr;
                    if (i13 > 0) {
                        int min = Math.min(this.zzh, i13);
                        zzh(this.zzj, i12, min);
                        this.zzr -= min;
                        i12 += min;
                    } else {
                        short[] sArr = this.zzj;
                        int i14 = this.zza;
                        int i15 = i14 > 4000 ? i14 / WearableStatusCodes.TARGET_NODE_NOT_CONNECTED : 1;
                        if (this.zzb == i9 && i15 == i9) {
                            i = zzg(sArr, i12, this.zzf, this.zzg);
                        } else {
                            zzi(sArr, i12, i15);
                            int zzg = zzg(this.zzi, i8, this.zzf / i15, this.zzg / i15);
                            if (i15 != i9) {
                                int i16 = zzg * i15;
                                int i17 = i15 * 4;
                                int i18 = this.zzf;
                                int i19 = i16 - i17;
                                if (i19 >= i18) {
                                    i18 = i19;
                                }
                                int i20 = i16 + i17;
                                int i21 = this.zzg;
                                if (i20 > i21) {
                                    i20 = i21;
                                }
                                if (this.zzb == i9) {
                                    i = zzg(sArr, i12, i18, i20);
                                } else {
                                    zzi(sArr, i12, i9);
                                    i = zzg(this.zzi, i8, i18, i20);
                                }
                            } else {
                                i = zzg;
                            }
                        }
                        int i22 = this.zzu;
                        int i23 = (i22 == 0 || (i4 = this.zzs) == 0 || this.zzv > i22 * 3 || i22 + i22 <= this.zzt * 3) ? i : i4;
                        int i24 = i12 + i23;
                        this.zzt = i22;
                        this.zzs = i;
                        double d2 = i23;
                        if (d > 1.0d) {
                            short[] sArr2 = this.zzj;
                            double d3 = (-1.0d) + d;
                            if (d >= 2.0d) {
                                double d4 = (d2 / d3) + this.zzw;
                                int round = (int) Math.round(d4);
                                this.zzw = d4 - round;
                                i3 = round;
                            } else {
                                double d5 = ((d2 * (2.0d - d)) / d3) + this.zzw;
                                int round2 = (int) Math.round(d5);
                                this.zzr = round2;
                                this.zzw = d5 - round2;
                                i3 = i23;
                            }
                            short[] zzl = zzl(this.zzl, this.zzm, i3);
                            this.zzl = zzl;
                            zzj(i3, this.zzb, zzl, this.zzm, sArr2, i12, sArr2, i24);
                            this.zzm += i3;
                            i12 = i23 + i3 + i12;
                        } else {
                            int i25 = i23;
                            short[] sArr3 = this.zzj;
                            double d6 = 1.0d - d;
                            if (d < 0.5d) {
                                double d7 = ((d2 * d) / d6) + this.zzw;
                                int round3 = (int) Math.round(d7);
                                this.zzw = d7 - round3;
                                i2 = round3;
                            } else {
                                double d8 = ((d2 * ((d + d) - 1.0d)) / d6) + this.zzw;
                                int round4 = (int) Math.round(d8);
                                this.zzr = round4;
                                this.zzw = d8 - round4;
                                i2 = i25;
                            }
                            int i26 = i25 + i2;
                            short[] zzl2 = zzl(this.zzl, this.zzm, i26);
                            this.zzl = zzl2;
                            int i27 = this.zzb;
                            System.arraycopy(sArr3, i12 * i27, zzl2, this.zzm * i27, i27 * i25);
                            zzj(i2, this.zzb, this.zzl, this.zzm + i25, sArr3, i24, sArr3, i12);
                            this.zzm += i26;
                            i12 += i2;
                        }
                    }
                    if (this.zzh + i12 > i11) {
                        break;
                    }
                    i8 = 0;
                    i9 = 1;
                }
                int i28 = this.zzk - i12;
                short[] sArr4 = this.zzj;
                int i29 = this.zzb;
                System.arraycopy(sArr4, i12 * i29, sArr4, 0, i29 * i28);
                this.zzk = i28;
            }
        } else {
            zzh(this.zzj, 0, this.zzk);
            this.zzk = 0;
        }
        float f = this.zze * this.zzd;
        if (f == 1.0f || this.zzm == i10) {
            return;
        }
        int i30 = this.zza;
        float f2 = i30 / f;
        long j3 = i30;
        long j4 = (long) f2;
        while (j4 != 0 && j3 != 0 && j4 % 2 == 0 && j3 % 2 == 0) {
            j4 /= 2;
            j3 /= 2;
        }
        int i31 = this.zzm - i10;
        short[] zzl3 = zzl(this.zzn, this.zzo, i31);
        this.zzn = zzl3;
        short[] sArr5 = this.zzl;
        int i32 = this.zzb;
        System.arraycopy(sArr5, i10 * i32, zzl3, this.zzo * i32, i32 * i31);
        this.zzm = i10;
        this.zzo += i31;
        int i33 = 0;
        while (true) {
            i5 = this.zzo;
            i6 = i5 - 1;
            if (i33 >= i6) {
                break;
            }
            while (true) {
                i7 = this.zzp + 1;
                j = i7;
                long j5 = j * j4;
                j2 = this.zzq;
                if (j5 <= j2 * j3) {
                    break;
                }
                this.zzl = zzl(this.zzl, this.zzm, 1);
                int i34 = 0;
                while (true) {
                    int i35 = this.zzb;
                    if (i34 < i35) {
                        short[] sArr6 = this.zzl;
                        int i36 = this.zzm * i35;
                        short[] sArr7 = this.zzn;
                        int i37 = (i33 * i35) + i34;
                        short s = sArr7[i37];
                        short s2 = sArr7[i37 + i35];
                        long j6 = this.zzq * j3;
                        long j7 = j3;
                        long j8 = (r13 + 1) * j4;
                        long j9 = j8 - (this.zzp * j4);
                        long j10 = j8 - j6;
                        sArr6[i36 + i34] = (short) ((((j9 - j10) * s2) + (j10 * s)) / j9);
                        i34++;
                        i33 = i33;
                        j3 = j7;
                        j4 = j4;
                    }
                }
                this.zzq++;
                this.zzm++;
                j3 = j3;
                j4 = j4;
            }
            long j11 = j3;
            long j12 = j4;
            int i38 = i33;
            this.zzp = i7;
            if (j == j11) {
                this.zzp = 0;
                zzcw.zzf(j2 == j12);
                this.zzq = 0;
            }
            i33 = i38 + 1;
            j3 = j11;
            j4 = j12;
        }
        if (i6 != 0) {
            short[] sArr8 = this.zzn;
            int i39 = this.zzb;
            System.arraycopy(sArr8, i6 * i39, sArr8, 0, (i5 - i6) * i39);
            this.zzo -= i6;
        }
    }

    private final short[] zzl(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.zzb;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    public final int zza() {
        int i = this.zzm * this.zzb;
        return i + i;
    }

    public final int zzb() {
        int i = this.zzk * this.zzb;
        return i + i;
    }

    public final void zzc() {
        this.zzk = 0;
        this.zzm = 0;
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        this.zzt = 0;
        this.zzu = 0;
        this.zzv = 0;
        this.zzw = 0.0d;
    }

    public final void zzd(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.zzb, this.zzm);
        shortBuffer.put(this.zzl, 0, this.zzb * min);
        int i = this.zzm - min;
        this.zzm = i;
        int i2 = this.zzb;
        short[] sArr = this.zzl;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    public final void zze() {
        int i;
        int i2 = this.zzk;
        int i3 = this.zzr;
        int i4 = this.zzm;
        float f = this.zzc;
        float f2 = this.zzd;
        int i5 = i4 + ((int) (((((((i2 - i3) / (f / f2)) + i3) + this.zzw) + this.zzo) / (this.zze * f2)) + 0.5d));
        this.zzw = 0.0d;
        int i6 = this.zzh;
        this.zzj = zzl(this.zzj, i2, i6 + i6 + i2);
        int i7 = 0;
        while (true) {
            int i8 = this.zzh;
            int i9 = this.zzb;
            i = i8 + i8;
            if (i7 >= i * i9) {
                break;
            }
            this.zzj[(i9 * i2) + i7] = 0;
            i7++;
        }
        this.zzk += i;
        zzk();
        if (this.zzm > i5) {
            this.zzm = i5;
        }
        this.zzk = 0;
        this.zzr = 0;
        this.zzo = 0;
    }

    public final void zzf(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.zzb;
        int i2 = remaining / i;
        int i3 = i * i2;
        short[] zzl = zzl(this.zzj, this.zzk, i2);
        this.zzj = zzl;
        shortBuffer.get(zzl, this.zzk * this.zzb, (i3 + i3) / 2);
        this.zzk += i2;
        zzk();
    }
}

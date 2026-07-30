package com.google.android.gms.internal.measurement;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zziz extends zziw {
    private final byte[] zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    private zziz(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzj = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzd = bArr;
        this.zze = i2 + i;
        this.zzg = i;
        this.zzh = i;
    }

    private final void zzaa() {
        int i = this.zze + this.zzf;
        this.zze = i;
        int i2 = i - this.zzh;
        int i3 = this.zzj;
        if (i2 <= i3) {
            this.zzf = 0;
            return;
        }
        int i4 = i2 - i3;
        this.zzf = i4;
        this.zze = i - i4;
    }

    private final byte zzv() {
        int i = this.zzg;
        if (i == this.zze) {
            throw zzkb.zzi();
        }
        byte[] bArr = this.zzd;
        this.zzg = i + 1;
        return bArr[i];
    }

    private final int zzw() {
        int i = this.zzg;
        if (this.zze - i < 4) {
            throw zzkb.zzi();
        }
        byte[] bArr = this.zzd;
        this.zzg = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0066, code lost:
    
        if (r2[r3] >= 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzx() {
        /*
            r5 = this;
            int r0 = r5.zzg
            int r1 = r5.zze
            if (r1 == r0) goto L6b
            byte[] r2 = r5.zzd
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.zzg = r3
            return r0
        L11:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6b
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L22
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L68
        L22:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L2f
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2d:
            r1 = r3
            goto L68
        L2f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3d
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L68
        L3d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 < 0) goto L6b
        L68:
            r5.zzg = r1
            return r0
        L6b:
            long r0 = r5.zzm()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zziz.zzx():int");
    }

    private final long zzy() {
        int i = this.zzg;
        if (this.zze - i < 8) {
            throw zzkb.zzi();
        }
        byte[] bArr = this.zzd;
        this.zzg = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
    
        if (r2[r0] >= 0) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzz() {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zziz.zzz():long");
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final double zza() {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final float zzb() {
        return Float.intBitsToFloat(zzw());
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzc() {
        return this.zzg - this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzd() {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zze() {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzf() {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzg() {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzh() {
        return zziw.zza(zzx());
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzi() {
        if (zzt()) {
            this.zzi = 0;
            return 0;
        }
        int zzx = zzx();
        this.zzi = zzx;
        if ((zzx >>> 3) != 0) {
            return zzx;
        }
        throw zzkb.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzj() {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzk() {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzl() {
        return zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzm() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((zzv() & 128) == 0) {
                return j;
            }
        }
        throw zzkb.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzn() {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzo() {
        return zziw.zza(zzz());
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzp() {
        return zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final zzik zzq() {
        byte[] bArr;
        int zzx = zzx();
        if (zzx > 0) {
            int i = this.zze;
            int i2 = this.zzg;
            if (zzx <= i - i2) {
                zzik zza = zzik.zza(this.zzd, i2, zzx);
                this.zzg += zzx;
                return zza;
            }
        }
        if (zzx == 0) {
            return zzik.zza;
        }
        if (zzx > 0) {
            int i3 = this.zze;
            int i4 = this.zzg;
            if (zzx <= i3 - i4) {
                int i5 = zzx + i4;
                this.zzg = i5;
                bArr = Arrays.copyOfRange(this.zzd, i4, i5);
                return zzik.zzb(bArr);
            }
        }
        if (zzx > 0) {
            throw zzkb.zzi();
        }
        if (zzx != 0) {
            throw zzkb.zzf();
        }
        bArr = zzjv.zzb;
        return zzik.zzb(bArr);
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final String zzr() {
        int zzx = zzx();
        if (zzx > 0) {
            int i = this.zze;
            int i2 = this.zzg;
            if (zzx <= i - i2) {
                String str = new String(this.zzd, i2, zzx, zzjv.zza);
                this.zzg += zzx;
                return str;
            }
        }
        if (zzx == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (zzx < 0) {
            throw zzkb.zzf();
        }
        throw zzkb.zzi();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final String zzs() {
        int zzx = zzx();
        if (zzx > 0) {
            int i = this.zze;
            int i2 = this.zzg;
            if (zzx <= i - i2) {
                String zzb = zzmp.zzb(this.zzd, i2, zzx);
                this.zzg += zzx;
                return zzb;
            }
        }
        if (zzx == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (zzx <= 0) {
            throw zzkb.zzf();
        }
        throw zzkb.zzi();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final boolean zzt() {
        return this.zzg == this.zze;
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final boolean zzu() {
        return zzz() != 0;
    }

    private final void zzf(int i) {
        if (i >= 0) {
            int i2 = this.zze;
            int i3 = this.zzg;
            if (i <= i2 - i3) {
                this.zzg = i3 + i;
                return;
            }
        }
        if (i >= 0) {
            throw zzkb.zzi();
        }
        throw zzkb.zzf();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzb(int i) {
        if (i < 0) {
            throw zzkb.zzf();
        }
        int zzc = i + zzc();
        if (zzc < 0) {
            throw zzkb.zzg();
        }
        int i2 = this.zzj;
        if (zzc > i2) {
            throw zzkb.zzi();
        }
        this.zzj = zzc;
        zzaa();
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final void zzc(int i) {
        if (this.zzi != i) {
            throw zzkb.zzb();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final void zzd(int i) {
        this.zzj = i;
        zzaa();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final boolean zze(int i) {
        boolean zze;
        int i2 = i & 7;
        int i3 = 0;
        if (i2 == 0) {
            if (this.zze - this.zzg < 10) {
                while (i3 < 10) {
                    if (zzv() < 0) {
                        i3++;
                    }
                }
                throw zzkb.zze();
            }
            while (i3 < 10) {
                byte[] bArr = this.zzd;
                int i4 = this.zzg;
                this.zzg = i4 + 1;
                if (bArr[i4] < 0) {
                    i3++;
                }
            }
            throw zzkb.zze();
            return true;
        }
        if (i2 == 1) {
            zzf(8);
            return true;
        }
        if (i2 == 2) {
            zzf(zzx());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzkb.zza();
            }
            zzf(4);
            return true;
        }
        do {
            int zzi = zzi();
            if (zzi == 0) {
                break;
            }
            int i5 = this.zza;
            if (i5 >= this.zzb) {
                throw zzkb.zzh();
            }
            this.zza = i5 + 1;
            zze = zze(zzi);
            this.zza--;
        } while (zze);
        zzc(((i >>> 3) << 3) | 4);
        return true;
    }
}

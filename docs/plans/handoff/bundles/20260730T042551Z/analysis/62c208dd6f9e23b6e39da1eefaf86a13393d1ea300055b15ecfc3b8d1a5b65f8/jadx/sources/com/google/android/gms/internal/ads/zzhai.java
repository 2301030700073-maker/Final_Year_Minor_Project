package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzhai {
    private static final zzhai zza = new zzhai(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhai() {
        this(0, new int[8], new Object[8], true);
    }

    private zzhai(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzhai zzc() {
        return zza;
    }

    public static zzhai zze(zzhai zzhaiVar, zzhai zzhaiVar2) {
        int i = zzhaiVar.zzb + zzhaiVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzhaiVar.zzc, i);
        System.arraycopy(zzhaiVar2.zzc, 0, copyOf, zzhaiVar.zzb, zzhaiVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzhaiVar.zzd, i);
        System.arraycopy(zzhaiVar2.zzd, 0, copyOf2, zzhaiVar.zzb, zzhaiVar2.zzb);
        return new zzhai(i, copyOf, copyOf2, true);
    }

    public static zzhai zzf() {
        return new zzhai();
    }

    private final void zzn(int i) {
        int[] iArr = this.zzc;
        if (i > iArr.length) {
            int i2 = this.zzb;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i);
            this.zzd = Arrays.copyOf(this.zzd, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhai)) {
            return false;
        }
        zzhai zzhaiVar = (zzhai) obj;
        int i = this.zzb;
        if (i == zzhaiVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzhaiVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzhaiVar.zzd;
                    int i3 = this.zzb;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
                if (iArr[i2] != iArr2[i2]) {
                    break;
                }
                i2++;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = i + 527;
        int[] iArr = this.zzc;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i2 * 31) + i4) * 31;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final int zza() {
        int zzD;
        int zzE;
        int zzD2;
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.zzd[i3]).longValue();
                    zzD2 = zzgww.zzD(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    zzgwj zzgwjVar = (zzgwj) this.zzd[i3];
                    int zzD3 = zzgww.zzD(i7);
                    int zzd = zzgwjVar.zzd();
                    i2 = zzgww.zzD(zzd) + zzd + zzD3 + i2;
                } else if (i6 == 3) {
                    int zzD4 = zzgww.zzD(i5 << 3);
                    zzD = zzD4 + zzD4;
                    zzE = ((zzhai) this.zzd[i3]).zza();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(new zzgyf("Protocol message tag had invalid wire type."));
                    }
                    ((Integer) this.zzd[i3]).intValue();
                    zzD2 = zzgww.zzD(i5 << 3) + 4;
                }
                i2 = zzD2 + i2;
            } else {
                int i8 = i5 << 3;
                long longValue = ((Long) this.zzd[i3]).longValue();
                zzD = zzgww.zzD(i8);
                zzE = zzgww.zzE(longValue);
            }
            i2 = zzE + zzD + i2;
        }
        this.zze = i2;
        return i2;
    }

    public final int zzb() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3] >>> 3;
            zzgwj zzgwjVar = (zzgwj) this.zzd[i3];
            int zzD = zzgww.zzD(8);
            int zzD2 = zzgww.zzD(i4) + zzgww.zzD(16);
            int zzD3 = zzgww.zzD(24);
            int zzd = zzgwjVar.zzd();
            i2 = V1.m2501for(zzD + zzD, zzD2, zzgww.zzD(zzd) + zzd + zzD3, i2);
        }
        this.zze = i2;
        return i2;
    }

    public final zzhai zzd(zzhai zzhaiVar) {
        if (zzhaiVar.equals(zza)) {
            return this;
        }
        zzg();
        int i = this.zzb + zzhaiVar.zzb;
        zzn(i);
        System.arraycopy(zzhaiVar.zzc, 0, this.zzc, this.zzb, zzhaiVar.zzb);
        System.arraycopy(zzhaiVar.zzd, 0, this.zzd, this.zzb, zzhaiVar.zzb);
        this.zzb = i;
        return this;
    }

    public final void zzg() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    public final void zzi(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzgze.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzj(int i, Object obj) {
        zzg();
        zzn(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    public final void zzk(zzhaw zzhawVar) {
        for (int i = 0; i < this.zzb; i++) {
            zzhawVar.zzw(this.zzc[i] >>> 3, this.zzd[i]);
        }
    }

    public final void zzl(zzhaw zzhawVar) {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    zzhawVar.zzt(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    zzhawVar.zzm(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    zzhawVar.zzd(i4, (zzgwj) obj);
                } else if (i3 == 3) {
                    zzhawVar.zzF(i4);
                    ((zzhai) obj).zzl(zzhawVar);
                    zzhawVar.zzh(i4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(new zzgyf("Protocol message tag had invalid wire type."));
                    }
                    zzhawVar.zzk(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final boolean zzm(int i, zzgwp zzgwpVar) {
        int zzl;
        zzg();
        int i2 = i & 7;
        if (i2 == 0) {
            zzj(i, Long.valueOf(zzgwpVar.zzo()));
            return true;
        }
        if (i2 == 1) {
            zzj(i, Long.valueOf(zzgwpVar.zzn()));
            return true;
        }
        if (i2 == 2) {
            zzj(i, zzgwpVar.zzv());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw new zzgyf("Protocol message tag had invalid wire type.");
            }
            zzj(i, Integer.valueOf(zzgwpVar.zzf()));
            return true;
        }
        zzhai zzhaiVar = new zzhai();
        do {
            zzl = zzgwpVar.zzl();
            if (zzl == 0) {
                break;
            }
        } while (zzhaiVar.zzm(zzl, zzgwpVar));
        zzgwpVar.zzy(4 | ((i >>> 3) << 3));
        zzj(i, zzhaiVar);
        return true;
    }
}

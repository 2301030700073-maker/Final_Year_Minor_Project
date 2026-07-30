package com.google.android.gms.internal.wearable;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzef {
    private static final zzef zza = new zzef(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzef() {
        this(0, new int[8], new Object[8], true);
    }

    private zzef(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzef zzc() {
        return zza;
    }

    public static zzef zzd(zzef zzefVar, zzef zzefVar2) {
        int i = zzefVar.zzb + zzefVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzefVar.zzc, i);
        System.arraycopy(zzefVar2.zzc, 0, copyOf, zzefVar.zzb, zzefVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzefVar.zzd, i);
        System.arraycopy(zzefVar2.zzd, 0, copyOf2, zzefVar.zzb, zzefVar2.zzb);
        return new zzef(i, copyOf, copyOf2, true);
    }

    public static zzef zze() {
        return new zzef(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzef)) {
            return false;
        }
        zzef zzefVar = (zzef) obj;
        int i = this.zzb;
        if (i == zzefVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzefVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzefVar.zzd;
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
        int i2 = (i + 527) * 31;
        int[] iArr = this.zzc;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final int zza() {
        int zzA;
        int zzB;
        int zzA2;
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
                    zzA2 = zzbe.zzA(i5 << 3) + 8;
                } else if (i6 == 2) {
                    zzaw zzawVar = (zzaw) this.zzd[i3];
                    int zzA3 = zzbe.zzA(i5 << 3);
                    int zzd = zzawVar.zzd();
                    i2 = zzbe.zzA(zzd) + zzd + zzA3 + i2;
                } else if (i6 == 3) {
                    int zzz = zzbe.zzz(i5);
                    zzA = zzz + zzz;
                    zzB = ((zzef) this.zzd[i3]).zza();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(zzcf.zza());
                    }
                    ((Integer) this.zzd[i3]).intValue();
                    zzA2 = zzbe.zzA(i5 << 3) + 4;
                }
                i2 = zzA2 + i2;
            } else {
                long longValue = ((Long) this.zzd[i3]).longValue();
                zzA = zzbe.zzA(i5 << 3);
                zzB = zzbe.zzB(longValue);
            }
            i2 = zzB + zzA + i2;
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
            int i4 = this.zzc[i3];
            zzaw zzawVar = (zzaw) this.zzd[i3];
            int zzA = zzbe.zzA(8);
            int zzd = zzawVar.zzd();
            i2 += zzbe.zzA(zzd) + zzd + zzbe.zzA(24) + zzbe.zzA(i4 >>> 3) + zzbe.zzA(16) + zzA + zzA;
        }
        this.zze = i2;
        return i2;
    }

    public final void zzf() {
        this.zzf = false;
    }

    public final void zzg(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzde.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzh(int i, Object obj) {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.zzb;
        int[] iArr = this.zzc;
        if (i2 == iArr.length) {
            int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
            this.zzc = Arrays.copyOf(iArr, i3);
            this.zzd = Arrays.copyOf(this.zzd, i3);
        }
        int[] iArr2 = this.zzc;
        int i4 = this.zzb;
        iArr2[i4] = i;
        this.zzd[i4] = obj;
        this.zzb = i4 + 1;
    }

    public final void zzi(zzew zzewVar) {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    zzewVar.zzt(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzewVar.zzm(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzewVar.zzd(i3, (zzaw) obj);
                } else if (i4 == 3) {
                    zzewVar.zzE(i3);
                    ((zzef) obj).zzi(zzewVar);
                    zzewVar.zzh(i3);
                } else {
                    if (i4 != 5) {
                        throw new RuntimeException(zzcf.zza());
                    }
                    zzewVar.zzk(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}

package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzahn {
    private final zzdy zza = new zzdy(8);
    private int zzb;

    private final long zzb(zzaco zzacoVar) {
        int i;
        zzacc zzaccVar = (zzacc) zzacoVar;
        int i2 = 0;
        zzaccVar.zzm(this.zza.zzN(), 0, 1, false);
        int i3 = this.zza.zzN()[0] & 255;
        if (i3 == 0) {
            return Long.MIN_VALUE;
        }
        int i4 = 128;
        int i5 = 0;
        while (true) {
            i = i5 + 1;
            if ((i3 & i4) != 0) {
                break;
            }
            i4 >>= 1;
            i5 = i;
        }
        int i6 = i3 & (~i4);
        zzaccVar.zzm(this.zza.zzN(), 1, i5, false);
        while (i2 < i5) {
            i2++;
            i6 = (this.zza.zzN()[i2] & 255) + (i6 << 8);
        }
        this.zzb += i;
        return i6;
    }

    public final boolean zza(zzaco zzacoVar) {
        long zzd = zzacoVar.zzd();
        long j = 1024;
        if (zzd != -1 && zzd <= 1024) {
            j = zzd;
        }
        zzacc zzaccVar = (zzacc) zzacoVar;
        zzaccVar.zzm(this.zza.zzN(), 0, 4, false);
        long zzu = this.zza.zzu();
        this.zzb = 4;
        while (zzu != 440786851) {
            int i = (int) j;
            int i2 = this.zzb + 1;
            this.zzb = i2;
            if (i2 == i) {
                return false;
            }
            zzaccVar.zzm(this.zza.zzN(), 0, 1, false);
            zzu = ((zzu << 8) & (-256)) | (this.zza.zzN()[0] & 255);
        }
        long zzb = zzb(zzacoVar);
        long j2 = this.zzb;
        if (zzb != Long.MIN_VALUE) {
            long j3 = j2 + zzb;
            if (zzd == -1 || j3 < zzd) {
                while (true) {
                    long j4 = this.zzb;
                    if (j4 < j3) {
                        if (zzb(zzacoVar) == Long.MIN_VALUE) {
                            return false;
                        }
                        long zzb2 = zzb(zzacoVar);
                        if (zzb2 < 0) {
                            return false;
                        }
                        if (zzb2 != 0) {
                            int i3 = (int) zzb2;
                            zzaccVar.zzl(i3, false);
                            this.zzb += i3;
                        }
                    } else if (j4 == j3) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}

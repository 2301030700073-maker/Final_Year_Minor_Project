package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzwe {
    private final zzyv zza;
    private final zzeg zzb = new zzeg(32);
    private zzwd zzc;
    private zzwd zzd;
    private zzwd zze;
    private long zzf;

    public zzwe(zzyv zzyvVar) {
        this.zza = zzyvVar;
        zzwd zzwdVar = new zzwd(0L, 65536);
        this.zzc = zzwdVar;
        this.zzd = zzwdVar;
        this.zze = zzwdVar;
    }

    private final int zzi(int i) {
        zzwd zzwdVar = this.zze;
        if (zzwdVar.zzc == null) {
            zzyt zza = this.zza.zza();
            zzwd zzwdVar2 = new zzwd(this.zze.zzb, 65536);
            zzwdVar.zzc = zza;
            zzwdVar.zzd = zzwdVar2;
        }
        return Math.min(i, (int) (this.zze.zzb - this.zzf));
    }

    private final void zzj(int i) {
        long j = this.zzf + i;
        this.zzf = j;
        zzwd zzwdVar = this.zze;
        if (j == zzwdVar.zzb) {
            this.zze = zzwdVar.zzd;
        }
    }

    private static zzwd zzk(zzwd zzwdVar, zzhh zzhhVar, zzwf zzwfVar, zzeg zzegVar) {
        zzwd zzwdVar2;
        if (zzhhVar.zzk()) {
            long j = zzwfVar.zzb;
            int i = 1;
            zzegVar.zza(1);
            zzwd zzm = zzm(zzwdVar, j, zzegVar.zzi(), 1);
            long j2 = j + 1;
            byte b = zzegVar.zzi()[0];
            int i2 = b & 128;
            int i3 = b & Byte.MAX_VALUE;
            zzhe zzheVar = zzhhVar.zzb;
            byte[] bArr = zzheVar.zza;
            if (bArr == null) {
                zzheVar.zza = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            boolean z = i2 != 0;
            zzwdVar2 = zzm(zzm, j2, zzheVar.zza, i3);
            long j3 = j2 + i3;
            if (z) {
                zzegVar.zza(2);
                zzwdVar2 = zzm(zzwdVar2, j3, zzegVar.zzi(), 2);
                j3 += 2;
                i = zzegVar.zzt();
            }
            int i4 = i;
            int[] iArr = zzheVar.zzd;
            if (iArr == null || iArr.length < i4) {
                iArr = new int[i4];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = zzheVar.zze;
            if (iArr3 == null || iArr3.length < i4) {
                iArr3 = new int[i4];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i5 = i4 * 6;
                zzegVar.zza(i5);
                zzwdVar2 = zzm(zzwdVar2, j3, zzegVar.zzi(), i5);
                j3 += i5;
                zzegVar.zzh(0);
                for (int i6 = 0; i6 < i4; i6++) {
                    iArr2[i6] = zzegVar.zzt();
                    iArr4[i6] = zzegVar.zzH();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = zzwfVar.zza - ((int) (j3 - zzwfVar.zzb));
            }
            zzael zzaelVar = zzwfVar.zzc;
            String str = zzep.zza;
            zzheVar.zza(i4, iArr2, iArr4, zzaelVar.zzb, zzheVar.zza, zzaelVar.zza, zzaelVar.zzc, zzaelVar.zzd);
            long j4 = zzwfVar.zzb;
            int i7 = (int) (j3 - j4);
            zzwfVar.zzb = j4 + i7;
            zzwfVar.zza -= i7;
        } else {
            zzwdVar2 = zzwdVar;
        }
        if (!zzhhVar.zze()) {
            zzhhVar.zzj(zzwfVar.zza);
            return zzl(zzwdVar2, zzwfVar.zzb, zzhhVar.zzc, zzwfVar.zza);
        }
        zzegVar.zza(4);
        zzwd zzm2 = zzm(zzwdVar2, zzwfVar.zzb, zzegVar.zzi(), 4);
        int zzH = zzegVar.zzH();
        zzwfVar.zzb += 4;
        zzwfVar.zza -= 4;
        zzhhVar.zzj(zzH);
        zzwd zzl = zzl(zzm2, zzwfVar.zzb, zzhhVar.zzc, zzH);
        zzwfVar.zzb += zzH;
        int i8 = zzwfVar.zza - zzH;
        zzwfVar.zza = i8;
        ByteBuffer byteBuffer = zzhhVar.zzf;
        if (byteBuffer == null || byteBuffer.capacity() < i8) {
            zzhhVar.zzf = ByteBuffer.allocate(i8);
        } else {
            zzhhVar.zzf.clear();
        }
        return zzl(zzl, zzwfVar.zzb, zzhhVar.zzf, zzwfVar.zza);
    }

    private static zzwd zzl(zzwd zzwdVar, long j, ByteBuffer byteBuffer, int i) {
        zzwd zzn = zzn(zzwdVar, j);
        while (i > 0) {
            int min = Math.min(i, (int) (zzn.zzb - j));
            byteBuffer.put(zzn.zzc.zza, zzn.zzb(j), min);
            i -= min;
            j += min;
            if (j == zzn.zzb) {
                zzn = zzn.zzd;
            }
        }
        return zzn;
    }

    private static zzwd zzm(zzwd zzwdVar, long j, byte[] bArr, int i) {
        zzwd zzn = zzn(zzwdVar, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (zzn.zzb - j));
            System.arraycopy(zzn.zzc.zza, zzn.zzb(j), bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == zzn.zzb) {
                zzn = zzn.zzd;
            }
        }
        return zzn;
    }

    private static zzwd zzn(zzwd zzwdVar, long j) {
        while (j >= zzwdVar.zzb) {
            zzwdVar = zzwdVar.zzd;
        }
        return zzwdVar;
    }

    public final void zza() {
        zzwd zzwdVar = this.zzc;
        if (zzwdVar.zzc != null) {
            this.zza.zzc(zzwdVar);
            zzwdVar.zzc();
        }
        this.zzc.zza(0L, 65536);
        zzwd zzwdVar2 = this.zzc;
        this.zzd = zzwdVar2;
        this.zze = zzwdVar2;
        this.zzf = 0L;
        this.zza.zzd();
    }

    public final void zzb() {
        this.zzd = this.zzc;
    }

    public final void zzc(zzhh zzhhVar, zzwf zzwfVar) {
        this.zzd = zzk(this.zzd, zzhhVar, zzwfVar, this.zzb);
    }

    public final void zzd(zzhh zzhhVar, zzwf zzwfVar) {
        zzk(this.zzd, zzhhVar, zzwfVar, this.zzb);
    }

    public final void zze(long j) {
        zzwd zzwdVar;
        if (j != -1) {
            while (true) {
                zzwdVar = this.zzc;
                if (j < zzwdVar.zzb) {
                    break;
                }
                this.zza.zzb(zzwdVar.zzc);
                this.zzc = this.zzc.zzc();
            }
            if (this.zzd.zza < zzwdVar.zza) {
                this.zzd = zzwdVar;
            }
        }
    }

    public final long zzf() {
        return this.zzf;
    }

    public final int zzg(zzj zzjVar, int i, boolean z) throws IOException {
        int zzi = zzi(i);
        zzwd zzwdVar = this.zze;
        int zza = zzjVar.zza(zzwdVar.zzc.zza, zzwdVar.zzb(this.zzf), zzi);
        if (zza != -1) {
            zzj(zza);
            return zza;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public final void zzh(zzeg zzegVar, int i) {
        while (i > 0) {
            int zzi = zzi(i);
            zzwd zzwdVar = this.zze;
            zzegVar.zzm(zzwdVar.zzc.zza, zzwdVar.zzb(this.zzf), zzi);
            i -= zzi;
            zzj(zzi);
        }
    }
}

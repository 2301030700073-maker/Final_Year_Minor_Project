package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzvr {
    private final zzdy zza = new zzdy(32);
    private zzvq zzb;
    private zzvq zzc;
    private zzvq zzd;
    private long zze;
    private final zzyk zzf;

    public zzvr(zzyk zzykVar) {
        this.zzf = zzykVar;
        zzvq zzvqVar = new zzvq(0L, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        this.zzb = zzvqVar;
        this.zzc = zzvqVar;
        this.zzd = zzvqVar;
    }

    private final int zzi(int i) {
        zzvq zzvqVar = this.zzd;
        if (zzvqVar.zzc == null) {
            zzyd zzb = this.zzf.zzb();
            zzvq zzvqVar2 = new zzvq(this.zzd.zzb, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
            zzvqVar.zzc = zzb;
            zzvqVar.zzd = zzvqVar2;
        }
        return Math.min(i, (int) (this.zzd.zzb - this.zze));
    }

    private static zzvq zzj(zzvq zzvqVar, long j) {
        while (j >= zzvqVar.zzb) {
            zzvqVar = zzvqVar.zzd;
        }
        return zzvqVar;
    }

    private static zzvq zzk(zzvq zzvqVar, long j, ByteBuffer byteBuffer, int i) {
        zzvq zzj = zzj(zzvqVar, j);
        while (i > 0) {
            int min = Math.min(i, (int) (zzj.zzb - j));
            byteBuffer.put(zzj.zzc.zza, zzj.zza(j), min);
            i -= min;
            j += min;
            if (j == zzj.zzb) {
                zzj = zzj.zzd;
            }
        }
        return zzj;
    }

    private static zzvq zzl(zzvq zzvqVar, long j, byte[] bArr, int i) {
        zzvq zzj = zzj(zzvqVar, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (zzj.zzb - j));
            System.arraycopy(zzj.zzc.zza, zzj.zza(j), bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == zzj.zzb) {
                zzj = zzj.zzd;
            }
        }
        return zzj;
    }

    private static zzvq zzm(zzvq zzvqVar, zzhh zzhhVar, zzvt zzvtVar, zzdy zzdyVar) {
        zzvq zzvqVar2;
        int i;
        if (zzhhVar.zzl()) {
            long j = zzvtVar.zzb;
            zzdyVar.zzI(1);
            zzvq zzl = zzl(zzvqVar, j, zzdyVar.zzN(), 1);
            long j2 = j + 1;
            byte b = zzdyVar.zzN()[0];
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
            zzvqVar2 = zzl(zzl, j2, zzheVar.zza, i3);
            long j3 = j2 + i3;
            if (z) {
                zzdyVar.zzI(2);
                zzvqVar2 = zzl(zzvqVar2, j3, zzdyVar.zzN(), 2);
                j3 += 2;
                i = zzdyVar.zzq();
            } else {
                i = 1;
            }
            int[] iArr = zzheVar.zzd;
            if (iArr == null || iArr.length < i) {
                iArr = new int[i];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = zzheVar.zze;
            if (iArr3 == null || iArr3.length < i) {
                iArr3 = new int[i];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i4 = i * 6;
                zzdyVar.zzI(i4);
                zzvqVar2 = zzl(zzvqVar2, j3, zzdyVar.zzN(), i4);
                j3 += i4;
                zzdyVar.zzL(0);
                for (int i5 = 0; i5 < i; i5++) {
                    iArr2[i5] = zzdyVar.zzq();
                    iArr4[i5] = zzdyVar.zzp();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = zzvtVar.zza - ((int) (j3 - zzvtVar.zzb));
            }
            zzads zzadsVar = zzvtVar.zzc;
            int i6 = zzei.zza;
            zzheVar.zzc(i, iArr2, iArr4, zzadsVar.zzb, zzheVar.zza, zzadsVar.zza, zzadsVar.zzc, zzadsVar.zzd);
            long j4 = zzvtVar.zzb;
            int i7 = (int) (j3 - j4);
            zzvtVar.zzb = j4 + i7;
            zzvtVar.zza -= i7;
        } else {
            zzvqVar2 = zzvqVar;
        }
        if (!zzhhVar.zze()) {
            zzhhVar.zzj(zzvtVar.zza);
            return zzk(zzvqVar2, zzvtVar.zzb, zzhhVar.zzc, zzvtVar.zza);
        }
        zzdyVar.zzI(4);
        zzvq zzl2 = zzl(zzvqVar2, zzvtVar.zzb, zzdyVar.zzN(), 4);
        int zzp = zzdyVar.zzp();
        zzvtVar.zzb += 4;
        zzvtVar.zza -= 4;
        zzhhVar.zzj(zzp);
        zzvq zzk = zzk(zzl2, zzvtVar.zzb, zzhhVar.zzc, zzp);
        zzvtVar.zzb += zzp;
        int i8 = zzvtVar.zza - zzp;
        zzvtVar.zza = i8;
        ByteBuffer byteBuffer = zzhhVar.zzf;
        if (byteBuffer == null || byteBuffer.capacity() < i8) {
            zzhhVar.zzf = ByteBuffer.allocate(i8);
        } else {
            zzhhVar.zzf.clear();
        }
        return zzk(zzk, zzvtVar.zzb, zzhhVar.zzf, zzvtVar.zza);
    }

    private final void zzn(int i) {
        long j = this.zze + i;
        this.zze = j;
        zzvq zzvqVar = this.zzd;
        if (j == zzvqVar.zzb) {
            this.zzd = zzvqVar.zzd;
        }
    }

    public final int zza(zzl zzlVar, int i, boolean z) {
        int zzi = zzi(i);
        zzvq zzvqVar = this.zzd;
        int zza = zzlVar.zza(zzvqVar.zzc.zza, zzvqVar.zza(this.zze), zzi);
        if (zza != -1) {
            zzn(zza);
            return zza;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public final long zzb() {
        return this.zze;
    }

    public final void zzc(long j) {
        zzvq zzvqVar;
        if (j != -1) {
            while (true) {
                zzvqVar = this.zzb;
                if (j < zzvqVar.zzb) {
                    break;
                }
                this.zzf.zzc(zzvqVar.zzc);
                this.zzb = this.zzb.zzb();
            }
            if (this.zzc.zza < zzvqVar.zza) {
                this.zzc = zzvqVar;
            }
        }
    }

    public final void zzd(zzhh zzhhVar, zzvt zzvtVar) {
        zzm(this.zzc, zzhhVar, zzvtVar, this.zza);
    }

    public final void zze(zzhh zzhhVar, zzvt zzvtVar) {
        this.zzc = zzm(this.zzc, zzhhVar, zzvtVar, this.zza);
    }

    public final void zzf() {
        zzvq zzvqVar = this.zzb;
        if (zzvqVar.zzc != null) {
            this.zzf.zzd(zzvqVar);
            zzvqVar.zzb();
        }
        this.zzb.zze(0L, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        zzvq zzvqVar2 = this.zzb;
        this.zzc = zzvqVar2;
        this.zzd = zzvqVar2;
        this.zze = 0L;
        this.zzf.zzg();
    }

    public final void zzg() {
        this.zzc = this.zzb;
    }

    public final void zzh(zzdy zzdyVar, int i) {
        while (i > 0) {
            int zzi = zzi(i);
            zzvq zzvqVar = this.zzd;
            zzdyVar.zzH(zzvqVar.zzc.zza, zzvqVar.zza(this.zze), zzi);
            i -= zzi;
            zzn(zzi);
        }
    }
}

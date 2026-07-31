package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzanm {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzem zza = new zzem(0);
    private long zzf = C.TIME_UNSET;
    private long zzg = C.TIME_UNSET;
    private long zzh = C.TIME_UNSET;
    private final zzeg zzb = new zzeg();

    zzanm() {
    }

    public static long zze(zzeg zzegVar) {
        int zzg = zzegVar.zzg();
        if (zzegVar.zzd() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        zzegVar.zzm(bArr, 0, 9);
        zzegVar.zzh(zzg);
        byte b = bArr[0];
        if ((b & 196) != 68) {
            return C.TIME_UNSET;
        }
        byte b2 = bArr[2];
        if ((b2 & 4) != 4) {
            return C.TIME_UNSET;
        }
        byte b3 = bArr[4];
        if ((b3 & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return C.TIME_UNSET;
        }
        long j = b;
        long j2 = b2;
        long j3 = (248 & j2) >> 3;
        long j4 = (j2 & 3) << 13;
        return j4 | ((bArr[1] & 255) << 20) | ((j & 3) << 28) | (((j & 56) >> 3) << 30) | (j3 << 15) | ((bArr[3] & 255) << 5) | ((b3 & 248) >> 3);
    }

    private final int zzf(zzadb zzadbVar) {
        byte[] bArr = zzep.zzb;
        int length = bArr.length;
        this.zzb.zzb(bArr, 0);
        this.zzc = true;
        zzadbVar.zzl();
        return 0;
    }

    private static final int zzg(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public final boolean zza() {
        return this.zzc;
    }

    public final zzem zzb() {
        return this.zza;
    }

    public final int zzc(zzadb zzadbVar, zzaea zzaeaVar) throws IOException {
        boolean z = this.zze;
        long j = C.TIME_UNSET;
        if (!z) {
            long zzo = zzadbVar.zzo();
            int min = (int) Math.min(20000L, zzo);
            long j2 = zzo - min;
            if (zzadbVar.zzn() != j2) {
                zzaeaVar.zza = j2;
                return 1;
            }
            zzeg zzegVar = this.zzb;
            zzegVar.zza(min);
            zzadbVar.zzl();
            zzadbVar.zzi(zzegVar.zzi(), 0, min);
            int zzg = zzegVar.zzg();
            int zze = zzegVar.zze() - 4;
            while (true) {
                if (zze < zzg) {
                    break;
                }
                if (zzg(zzegVar.zzi(), zze) == 442) {
                    zzegVar.zzh(zze + 4);
                    long zze2 = zze(zzegVar);
                    if (zze2 != C.TIME_UNSET) {
                        j = zze2;
                        break;
                    }
                }
                zze--;
            }
            this.zzg = j;
            this.zze = true;
        } else {
            if (this.zzg == C.TIME_UNSET) {
                zzf(zzadbVar);
                return 0;
            }
            if (this.zzd) {
                long j3 = this.zzf;
                if (j3 == C.TIME_UNSET) {
                    zzf(zzadbVar);
                    return 0;
                }
                zzem zzemVar = this.zza;
                this.zzh = zzemVar.zzf(this.zzg) - zzemVar.zze(j3);
                zzf(zzadbVar);
                return 0;
            }
            int min2 = (int) Math.min(20000L, zzadbVar.zzo());
            if (zzadbVar.zzn() != 0) {
                zzaeaVar.zza = 0L;
                return 1;
            }
            zzeg zzegVar2 = this.zzb;
            zzegVar2.zza(min2);
            zzadbVar.zzl();
            zzadbVar.zzi(zzegVar2.zzi(), 0, min2);
            int zzg2 = zzegVar2.zzg();
            int zze3 = zzegVar2.zze();
            while (true) {
                if (zzg2 >= zze3 - 3) {
                    break;
                }
                if (zzg(zzegVar2.zzi(), zzg2) == 442) {
                    zzegVar2.zzh(zzg2 + 4);
                    long zze4 = zze(zzegVar2);
                    if (zze4 != C.TIME_UNSET) {
                        j = zze4;
                        break;
                    }
                }
                zzg2++;
            }
            this.zzf = j;
            this.zzd = true;
        }
        return 0;
    }

    public final long zzd() {
        return this.zzh;
    }
}

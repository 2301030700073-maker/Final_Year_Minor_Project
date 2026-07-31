package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzanw {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzem zza = new zzem(0);
    private long zzf = C.TIME_UNSET;
    private long zzg = C.TIME_UNSET;
    private long zzh = C.TIME_UNSET;
    private final zzeg zzb = new zzeg();

    zzanw(int i) {
    }

    private final int zze(zzadb zzadbVar) {
        byte[] bArr = zzep.zzb;
        int length = bArr.length;
        this.zzb.zzb(bArr, 0);
        this.zzc = true;
        zzadbVar.zzl();
        return 0;
    }

    public final boolean zza() {
        return this.zzc;
    }

    public final int zzb(zzadb zzadbVar, zzaea zzaeaVar, int i) throws IOException {
        if (i <= 0) {
            zze(zzadbVar);
            return 0;
        }
        boolean z = this.zze;
        long j = C.TIME_UNSET;
        if (!z) {
            long zzo = zzadbVar.zzo();
            int min = (int) Math.min(112800L, zzo);
            long j2 = zzo - min;
            if (zzadbVar.zzn() == j2) {
                zzeg zzegVar = this.zzb;
                zzegVar.zza(min);
                zzadbVar.zzl();
                zzadbVar.zzi(zzegVar.zzi(), 0, min);
                int zzg = zzegVar.zzg();
                int zze = zzegVar.zze();
                int i2 = zze - 188;
                while (true) {
                    if (i2 < zzg) {
                        break;
                    }
                    byte[] zzi = zzegVar.zzi();
                    int i3 = -4;
                    int i4 = 0;
                    while (true) {
                        if (i3 > 4) {
                            break;
                        }
                        int i5 = (i3 * 188) + i2;
                        if (i5 < zzg || i5 >= zze || zzi[i5] != 71) {
                            i4 = 0;
                        } else {
                            i4++;
                            if (i4 == 5) {
                                long zzb = zzaog.zzb(zzegVar, i2, i);
                                if (zzb != C.TIME_UNSET) {
                                    j = zzb;
                                    break;
                                }
                            }
                        }
                        i3++;
                    }
                    i2--;
                }
                this.zzg = j;
                this.zze = true;
                return 0;
            }
            zzaeaVar.zza = j2;
        } else {
            if (this.zzg == C.TIME_UNSET) {
                zze(zzadbVar);
                return 0;
            }
            if (this.zzd) {
                long j3 = this.zzf;
                if (j3 == C.TIME_UNSET) {
                    zze(zzadbVar);
                    return 0;
                }
                zzem zzemVar = this.zza;
                this.zzh = zzemVar.zzf(this.zzg) - zzemVar.zze(j3);
                zze(zzadbVar);
                return 0;
            }
            int min2 = (int) Math.min(112800L, zzadbVar.zzo());
            if (zzadbVar.zzn() == 0) {
                zzeg zzegVar2 = this.zzb;
                zzegVar2.zza(min2);
                zzadbVar.zzl();
                zzadbVar.zzi(zzegVar2.zzi(), 0, min2);
                int zzg2 = zzegVar2.zzg();
                int zze2 = zzegVar2.zze();
                while (true) {
                    if (zzg2 >= zze2) {
                        break;
                    }
                    if (zzegVar2.zzi()[zzg2] == 71) {
                        long zzb2 = zzaog.zzb(zzegVar2, zzg2, i);
                        if (zzb2 != C.TIME_UNSET) {
                            j = zzb2;
                            break;
                        }
                    }
                    zzg2++;
                }
                this.zzf = j;
                this.zzd = true;
                return 0;
            }
            zzaeaVar.zza = 0L;
        }
        return 1;
    }

    public final long zzc() {
        return this.zzh;
    }

    public final zzem zzd() {
        return this.zza;
    }
}

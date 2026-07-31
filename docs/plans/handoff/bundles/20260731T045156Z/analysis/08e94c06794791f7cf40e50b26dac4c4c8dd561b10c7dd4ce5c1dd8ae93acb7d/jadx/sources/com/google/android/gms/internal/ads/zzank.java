package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzank implements zzacl {
    private final zzem zza;
    private final zzeg zzb = new zzeg();

    /* synthetic */ zzank(zzem zzemVar, byte[] bArr) {
        this.zza = zzemVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacl
    public final zzack zza(zzadb zzadbVar, long j) throws IOException {
        int zzh;
        long j2;
        long zzn = zzadbVar.zzn();
        int min = (int) Math.min(20000L, zzadbVar.zzo() - zzn);
        zzeg zzegVar = this.zzb;
        zzegVar.zza(min);
        zzadbVar.zzi(zzegVar.zzi(), 0, min);
        int i = -1;
        int i2 = -1;
        long j3 = -9223372036854775807L;
        while (zzegVar.zzd() >= 4) {
            if (zzanl.zzh(zzegVar.zzi(), zzegVar.zzg()) != 442) {
                zzegVar.zzk(1);
            } else {
                zzegVar.zzk(4);
                long zze = zzanm.zze(zzegVar);
                if (zze != C.TIME_UNSET) {
                    long zze2 = this.zza.zze(zze);
                    if (zze2 > j) {
                        if (j3 == C.TIME_UNSET) {
                            return zzack.zza(zze2, zzn);
                        }
                        j2 = i2;
                    } else if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + zze2 > j) {
                        j2 = zzegVar.zzg();
                    } else {
                        i2 = zzegVar.zzg();
                        j3 = zze2;
                    }
                    return zzack.zzc(zzn + j2);
                }
                int zze3 = zzegVar.zze();
                if (zzegVar.zzd() >= 10) {
                    zzegVar.zzk(9);
                    int zzs = zzegVar.zzs() & 7;
                    if (zzegVar.zzd() >= zzs) {
                        zzegVar.zzk(zzs);
                        if (zzegVar.zzd() >= 4) {
                            if (zzanl.zzh(zzegVar.zzi(), zzegVar.zzg()) == 443) {
                                zzegVar.zzk(4);
                                int zzt = zzegVar.zzt();
                                if (zzegVar.zzd() < zzt) {
                                    zzegVar.zzh(zze3);
                                } else {
                                    zzegVar.zzk(zzt);
                                }
                            }
                            while (true) {
                                if (zzegVar.zzd() < 4 || (zzh = zzanl.zzh(zzegVar.zzi(), zzegVar.zzg())) == 442 || zzh == 441 || (zzh >>> 8) != 1) {
                                    break;
                                }
                                zzegVar.zzk(4);
                                if (zzegVar.zzd() < 2) {
                                    zzegVar.zzh(zze3);
                                    break;
                                }
                                zzegVar.zzh(Math.min(zzegVar.zze(), zzegVar.zzg() + zzegVar.zzt()));
                            }
                        } else {
                            zzegVar.zzh(zze3);
                        }
                    } else {
                        zzegVar.zzh(zze3);
                    }
                } else {
                    zzegVar.zzh(zze3);
                }
                i = zzegVar.zzg();
            }
        }
        return j3 != C.TIME_UNSET ? zzack.zzb(j3, zzn + i) : zzack.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacl
    public final void zzb() {
        byte[] bArr = zzep.zzb;
        int length = bArr.length;
        this.zzb.zzb(bArr, 0);
    }
}

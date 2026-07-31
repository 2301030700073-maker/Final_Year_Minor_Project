package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzanu implements zzacl {
    private final zzem zza;
    private final zzeg zzb = new zzeg();
    private final int zzc;

    public zzanu(int i, zzem zzemVar, int i2) {
        this.zzc = i;
        this.zza = zzemVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacl
    public final zzack zza(zzadb zzadbVar, long j) throws IOException {
        int zza;
        int zza2;
        long zzn = zzadbVar.zzn();
        int min = (int) Math.min(112800L, zzadbVar.zzo() - zzn);
        zzeg zzegVar = this.zzb;
        zzegVar.zza(min);
        zzadbVar.zzi(zzegVar.zzi(), 0, min);
        int zze = zzegVar.zze();
        long j2 = -1;
        long j3 = -9223372036854775807L;
        long j4 = -1;
        while (zzegVar.zzd() >= 188 && (zza2 = (zza = zzaog.zza(zzegVar.zzi(), zzegVar.zzg(), zze)) + 188) <= zze) {
            long zzb = zzaog.zzb(zzegVar, zza, this.zzc);
            if (zzb != C.TIME_UNSET) {
                long zze2 = this.zza.zze(zzb);
                if (zze2 <= j) {
                    j4 = zza;
                    if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + zze2 <= j) {
                        j3 = zze2;
                    }
                } else if (j3 == C.TIME_UNSET) {
                    return zzack.zza(zze2, zzn);
                }
                return zzack.zzc(zzn + j4);
            }
            zzegVar.zzh(zza2);
            j2 = zza2;
        }
        return j3 != C.TIME_UNSET ? zzack.zzb(j3, zzn + j2) : zzack.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacl
    public final void zzb() {
        byte[] bArr = zzep.zzb;
        int length = bArr.length;
        this.zzb.zzb(bArr, 0);
    }
}

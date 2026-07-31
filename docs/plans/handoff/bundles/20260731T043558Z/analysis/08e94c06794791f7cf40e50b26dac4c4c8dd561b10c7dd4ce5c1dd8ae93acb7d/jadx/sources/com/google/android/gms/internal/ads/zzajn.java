package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzajn extends zzajw {
    private zzadn zza;
    private zzajm zzb;

    zzajn() {
    }

    private static boolean zzd(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    protected final void zza(boolean z) {
        super.zza(z);
        if (z) {
            this.zza = null;
            this.zzb = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    protected final long zzb(zzeg zzegVar) {
        if (!zzd(zzegVar.zzi())) {
            return -1L;
        }
        int i = (zzegVar.zzi()[2] & 255) >> 4;
        if (i != 6) {
            if (i == 7) {
                i = 7;
            }
            int zzc = zzadi.zzc(zzegVar, i);
            zzegVar.zzh(0);
            return zzc;
        }
        zzegVar.zzk(4);
        zzegVar.zzO();
        int zzc2 = zzadi.zzc(zzegVar, i);
        zzegVar.zzh(0);
        return zzc2;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean zzc(zzeg zzegVar, long j, zzaju zzajuVar) {
        byte[] zzi = zzegVar.zzi();
        zzadn zzadnVar = this.zza;
        if (zzadnVar == null) {
            zzadn zzadnVar2 = new zzadn(zzi, 17);
            this.zza = zzadnVar2;
            zzt zza = zzadnVar2.zzc(Arrays.copyOfRange(zzi, 9, zzegVar.zze()), null).zza();
            zza.zzl(MimeTypes.AUDIO_OGG);
            zzajuVar.zza = zza.zzM();
            return true;
        }
        if ((zzi[0] & Byte.MAX_VALUE) == 3) {
            zzadm zzc = zzadk.zzc(zzegVar);
            zzadn zze = zzadnVar.zze(zzc);
            this.zza = zze;
            this.zzb = new zzajm(zze, zzc);
            return true;
        }
        if (!zzd(zzi)) {
            return true;
        }
        zzajm zzajmVar = this.zzb;
        if (zzajmVar != null) {
            zzajmVar.zzd(j);
            zzajuVar.zzb = this.zzb;
        }
        zzajuVar.zza.getClass();
        return false;
    }
}

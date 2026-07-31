package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.OpusUtil;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzajt extends zzajw {
    private static final byte[] zza = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final byte[] zzb = {79, 112, 117, 115, 84, 97, 103, 115};
    private boolean zzc;

    zzajt() {
    }

    public static boolean zzd(zzeg zzegVar) {
        return zzk(zzegVar, zza);
    }

    private static boolean zzk(zzeg zzegVar, byte[] bArr) {
        if (zzegVar.zzd() < 8) {
            return false;
        }
        int zzg = zzegVar.zzg();
        byte[] bArr2 = new byte[8];
        zzegVar.zzm(bArr2, 0, 8);
        zzegVar.zzh(zzg);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    protected final void zza(boolean z) {
        super.zza(z);
        if (z) {
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    protected final long zzb(zzeg zzegVar) {
        return zzi(zzadz.zzd(zzegVar.zzi()));
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean zzc(zzeg zzegVar, long j, zzaju zzajuVar) throws zzat {
        if (zzk(zzegVar, zza)) {
            byte[] copyOf = Arrays.copyOf(zzegVar.zzi(), zzegVar.zze());
            int i = copyOf[9] & 255;
            List zza2 = zzadz.zza(copyOf);
            if (zzajuVar.zza != null) {
                return true;
            }
            zzt zztVar = new zzt();
            zztVar.zzl(MimeTypes.AUDIO_OGG);
            zztVar.zzm(MimeTypes.AUDIO_OPUS);
            zztVar.zzE(i);
            zztVar.zzF(OpusUtil.SAMPLE_RATE);
            zztVar.zzp(zza2);
            zzajuVar.zza = zztVar.zzM();
            return true;
        }
        if (!zzk(zzegVar, zzb)) {
            zzajuVar.zza.getClass();
            return false;
        }
        zzajuVar.zza.getClass();
        if (this.zzc) {
            return true;
        }
        this.zzc = true;
        zzegVar.zzk(8);
        zzap zzc = zzaes.zzc(zzgpe.zzr(zzaes.zzb(zzegVar, false, false).zza));
        if (zzc == null) {
            return true;
        }
        zzt zza3 = zzajuVar.zza.zza();
        zza3.zzk(zzc.zzf(zzajuVar.zza.zzl));
        zzajuVar.zza = zza3.zzM();
        return true;
    }
}

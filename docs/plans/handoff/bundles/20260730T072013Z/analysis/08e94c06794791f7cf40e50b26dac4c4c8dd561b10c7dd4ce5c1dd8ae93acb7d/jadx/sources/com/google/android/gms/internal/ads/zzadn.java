package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.OpusUtil;
import java.nio.ByteOrder;
import java.util.Collections;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzadn {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final long zzj;
    public final zzadm zzk;
    private final zzap zzl;

    zzadn(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, zzadm zzadmVar, zzap zzapVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = i5;
        this.zzf = zzf(i5);
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = zzg(i7);
        this.zzj = j;
        this.zzk = zzadmVar;
        this.zzl = zzapVar;
    }

    public zzadn(byte[] bArr, int i) {
        zzef zzefVar = new zzef(bArr, bArr.length);
        zzefVar.zzf(i * 8);
        this.zza = zzefVar.zzj(16);
        this.zzb = zzefVar.zzj(16);
        this.zzc = zzefVar.zzj(24);
        this.zzd = zzefVar.zzj(24);
        int zzj = zzefVar.zzj(20);
        this.zze = zzj;
        this.zzf = zzf(zzj);
        this.zzg = zzefVar.zzj(3) + 1;
        int zzj2 = zzefVar.zzj(5) + 1;
        this.zzh = zzj2;
        this.zzi = zzg(zzj2);
        this.zzj = zzefVar.zzk(36);
        this.zzk = null;
        this.zzl = null;
    }

    private static int zzf(int i) {
        switch (i) {
            case 8000:
                return 4;
            case AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND /* 16000 */:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case OpusUtil.SAMPLE_RATE /* 48000 */:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND /* 192000 */:
                return 3;
            default:
                return -1;
        }
    }

    private static int zzg(int i) {
        if (i == 8) {
            return 1;
        }
        if (i == 12) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 20) {
            return 5;
        }
        if (i != 24) {
            return i != 32 ? -1 : 7;
        }
        return 6;
    }

    public final long zza() {
        long j = this.zzj;
        return j == 0 ? C.TIME_UNSET : (j * 1000000) / this.zze;
    }

    public final long zzb(long j) {
        String str = zzep.zza;
        return Math.max(0L, Math.min((j * this.zze) / 1000000, this.zzj - 1));
    }

    public final zzv zzc(byte[] bArr, zzap zzapVar) {
        bArr[4] = Byte.MIN_VALUE;
        zzap zzd = zzd(zzapVar);
        zzt zztVar = new zzt();
        zztVar.zzm(MimeTypes.AUDIO_FLAC);
        int i = this.zzd;
        if (i <= 0) {
            i = -1;
        }
        zztVar.zzn(i);
        zztVar.zzE(this.zzg);
        zztVar.zzF(this.zze);
        zztVar.zzG(zzep.zzz(this.zzh, ByteOrder.LITTLE_ENDIAN));
        zztVar.zzp(Collections.singletonList(bArr));
        zztVar.zzk(zzd);
        return zztVar.zzM();
    }

    public final zzap zzd(zzap zzapVar) {
        zzap zzapVar2 = this.zzl;
        return zzapVar2 == null ? zzapVar : zzapVar2.zzf(zzapVar);
    }

    public final zzadn zze(zzadm zzadmVar) {
        return new zzadn(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, zzadmVar, this.zzl);
    }
}

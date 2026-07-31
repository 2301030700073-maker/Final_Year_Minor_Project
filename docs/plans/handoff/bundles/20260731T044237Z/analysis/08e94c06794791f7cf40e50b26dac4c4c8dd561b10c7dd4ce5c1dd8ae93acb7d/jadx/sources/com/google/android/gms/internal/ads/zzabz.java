package com.google.android.gms.internal.ads;

import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzabz {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {96000, 88200, 64000, OpusUtil.SAMPLE_RATE, 44100, 32000, 24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 12000, 11025, 8000, 7350};
    private static final int[] zzc = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static zzaby zza(byte[] bArr) throws zzat {
        return zzb(new zzef(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c9, code lost:
    
        if (r11 != 3) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzaby zzb(com.google.android.gms.internal.ads.zzef r11, boolean r12) throws com.google.android.gms.internal.ads.zzat {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabz.zzb(com.google.android.gms.internal.ads.zzef, boolean):com.google.android.gms.internal.ads.zzaby");
    }

    private static int zzc(zzef zzefVar) {
        int zzj = zzefVar.zzj(5);
        return zzj == 31 ? zzefVar.zzj(6) + 32 : zzj;
    }

    private static int zzd(zzef zzefVar) throws zzat {
        int zzj = zzefVar.zzj(4);
        if (zzj == 15) {
            if (zzefVar.zzc() >= 24) {
                return zzefVar.zzj(24);
            }
            throw zzat.zzb("AAC header insufficient data", null);
        }
        if (zzj < 13) {
            return zzb[zzj];
        }
        throw zzat.zzb("AAC header wrong Sampling Frequency Index", null);
    }
}

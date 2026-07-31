package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import androidx.media3.common.MimeTypes;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zztk implements zztj {
    private zztk() {
        throw null;
    }

    /* synthetic */ zztk(byte[] bArr) {
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final MediaCodecInfo zzb(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final boolean zzc() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final boolean zzd(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && MimeTypes.VIDEO_H264.equals(str2);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final boolean zze(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }
}

package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* loaded from: classes.dex */
final class zzhc {
    private final MediaCodec.CryptoInfo zza;
    private final MediaCodec.CryptoInfo.Pattern zzb = new MediaCodec.CryptoInfo.Pattern(0, 0);

    public static /* bridge */ /* synthetic */ void zza(zzhc zzhcVar, int i, int i2) {
        zzhcVar.zzb.set(i, i2);
        zzhcVar.zza.setPattern(zzhcVar.zzb);
    }
}

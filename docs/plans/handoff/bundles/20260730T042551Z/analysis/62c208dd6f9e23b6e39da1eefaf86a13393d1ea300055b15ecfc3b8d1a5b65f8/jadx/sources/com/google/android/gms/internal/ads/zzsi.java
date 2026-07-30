package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;

/* loaded from: classes.dex */
final class zzsi {
    private static Boolean zza;

    public static int zza(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        if (zzei.zza < 29) {
            return 0;
        }
        Boolean bool = zza;
        if (bool == null || !bool.booleanValue()) {
            return zzsh.zza(videoCapabilities, i, i2, d);
        }
        return 0;
    }
}

package com.bumptech.glide.util;

import android.os.SystemClock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LogTime {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final double MILLIS_MULTIPLIER = 1.0d / Math.pow(10.0d, 6.0d);

    public static double getElapsedMillis(long j) {
        return (SystemClock.elapsedRealtimeNanos() - j) * MILLIS_MULTIPLIER;
    }
}

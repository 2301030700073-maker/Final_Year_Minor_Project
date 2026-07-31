package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcw {
    private static Executor zza;

    public static synchronized Executor zza() {
        Executor executor;
        synchronized (zzcw.class) {
            if (zza == null) {
                zza = zzep.zzf("ExoPlayer:BackgroundExecutor");
            }
            executor = zza;
        }
        return executor;
    }
}

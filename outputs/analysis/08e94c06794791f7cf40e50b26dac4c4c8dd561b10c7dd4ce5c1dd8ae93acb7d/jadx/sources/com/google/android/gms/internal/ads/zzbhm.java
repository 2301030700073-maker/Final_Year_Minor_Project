package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbhm {
    private static final AtomicReference zza = new AtomicReference();
    private static final AtomicReference zzb = new AtomicReference();

    static {
        new AtomicBoolean();
    }

    static zzbhk zza() {
        return (zzbhk) zza.get();
    }

    static zzbhl zzb() {
        return (zzbhl) zzb.get();
    }

    public static void zzc(zzbhk zzbhkVar) {
        zza.set(zzbhkVar);
    }
}

package com.google.android.gms.internal.wearable;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes3.dex */
final class zzdk {
    private static final zzdk zza = new zzdk();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzdo zzb = new zzcu();

    private zzdk() {
    }

    public static zzdk zza() {
        return zza;
    }

    public final zzdn zzb(Class cls) {
        zzcd.zzf(cls, "messageType");
        zzdn zzdnVar = (zzdn) this.zzc.get(cls);
        if (zzdnVar == null) {
            zzdnVar = this.zzb.zza(cls);
            zzcd.zzf(cls, "messageType");
            zzcd.zzf(zzdnVar, "schema");
            zzdn zzdnVar2 = (zzdn) this.zzc.putIfAbsent(cls, zzdnVar);
            if (zzdnVar2 != null) {
                return zzdnVar2;
            }
        }
        return zzdnVar;
    }
}

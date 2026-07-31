package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhyj {
    private static final zzhyj zza = new zzhyj();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzhys zzb = new zzhxq();

    private zzhyj() {
    }

    public static zzhyj zza() {
        return zza;
    }

    public final zzhyr zzb(Class cls) {
        zzhxb.zza(cls, "messageType");
        ConcurrentMap concurrentMap = this.zzc;
        zzhyr zzhyrVar = (zzhyr) concurrentMap.get(cls);
        if (zzhyrVar == null) {
            zzhyrVar = this.zzb.zza(cls);
            zzhxb.zza(cls, "messageType");
            zzhyr zzhyrVar2 = (zzhyr) concurrentMap.putIfAbsent(cls, zzhyrVar);
            if (zzhyrVar2 != null) {
                return zzhyrVar2;
            }
        }
        return zzhyrVar;
    }
}

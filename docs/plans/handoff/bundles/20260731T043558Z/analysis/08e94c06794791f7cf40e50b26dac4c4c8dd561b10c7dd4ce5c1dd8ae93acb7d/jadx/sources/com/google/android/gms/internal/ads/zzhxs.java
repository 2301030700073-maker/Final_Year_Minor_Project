package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhxs {
    private final zzhxr zza;

    private zzhxs(zzhzp zzhzpVar, Object obj, zzhzp zzhzpVar2, Object obj2) {
        this.zza = new zzhxr(zzhzpVar, "", zzhzpVar2, obj2);
    }

    public static zzhxs zza(zzhzp zzhzpVar, Object obj, zzhzp zzhzpVar2, Object obj2) {
        return new zzhxs(zzhzpVar, "", zzhzpVar2, obj2);
    }

    static void zzb(zzhvt zzhvtVar, zzhxr zzhxrVar, Object obj, Object obj2) throws IOException {
        zzhwd.zzf(zzhvtVar, zzhxrVar.zza, 1, obj);
        zzhwd.zzf(zzhvtVar, zzhxrVar.zzc, 2, obj2);
    }

    static int zzc(zzhxr zzhxrVar, Object obj, Object obj2) {
        return zzhwd.zzh(zzhxrVar.zza, 1, obj) + zzhwd.zzh(zzhxrVar.zzc, 2, obj2);
    }

    public final int zzd(int i, Object obj, Object obj2) {
        zzhxr zzhxrVar = this.zza;
        int zzA = zzhvt.zzA(i << 3);
        int zzc = zzc(zzhxrVar, obj, obj2);
        return zzA + zzhvt.zzA(zzc) + zzc;
    }

    final zzhxr zze() {
        return this.zza;
    }
}

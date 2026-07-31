package com.google.android.gms.internal.ads;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhxl {
    zzhxl() {
    }

    public static final List zza(Object obj, long j) {
        zzhxa zzhxaVar = (zzhxa) zzhzj.zzn(obj, j);
        if (zzhxaVar.zza()) {
            return zzhxaVar;
        }
        int size = zzhxaVar.size();
        zzhxa zzh = zzhxaVar.zzh(size == 0 ? 10 : size + size);
        zzhzj.zzo(obj, j, zzh);
        return zzh;
    }
}

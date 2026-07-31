package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaxj extends zzavs {
    public long zza;
    public long zzb;

    public zzaxj() {
        this.zza = -1L;
        this.zzb = -1L;
    }

    public zzaxj(String str) {
        this.zza = -1L;
        this.zzb = -1L;
        HashMap zzb = zzb(str);
        if (zzb != null) {
            this.zza = ((Long) zzb.get(0)).longValue();
            this.zzb = ((Long) zzb.get(1)).longValue();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavs
    protected final HashMap zza() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, Long.valueOf(this.zza));
        hashMap.put(1, Long.valueOf(this.zzb));
        return hashMap;
    }
}

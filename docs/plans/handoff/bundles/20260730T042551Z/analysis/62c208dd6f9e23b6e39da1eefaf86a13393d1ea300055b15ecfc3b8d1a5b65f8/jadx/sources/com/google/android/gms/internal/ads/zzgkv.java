package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzgkv {
    final Map zza = new HashMap();
    final Map zzb = new HashMap();

    private zzgkv() {
    }

    public final zzgkv zza(Enum r2, Object obj) {
        this.zza.put(r2, obj);
        this.zzb.put(obj, r2);
        return this;
    }

    public final zzgkx zzb() {
        return new zzgkx(DesugarCollections.unmodifiableMap(this.zza), DesugarCollections.unmodifiableMap(this.zzb), null);
    }

    public /* synthetic */ zzgkv(zzgkw zzgkwVar) {
    }
}

package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzgs {
    private final Map zza = new HashMap();
    private Map zzb;

    public final synchronized Map zza() {
        if (this.zzb == null) {
            this.zzb = DesugarCollections.unmodifiableMap(new HashMap(this.zza));
        }
        return this.zzb;
    }
}

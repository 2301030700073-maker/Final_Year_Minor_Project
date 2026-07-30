package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.Map;

/* loaded from: classes.dex */
abstract class zzhen implements zzher {
    private final Map zza;

    public zzhen(Map map) {
        this.zza = DesugarCollections.unmodifiableMap(map);
    }

    public final Map zza() {
        return this.zza;
    }
}

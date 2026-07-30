package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzglm {
    private HashMap zza = new HashMap();

    public final zzglo zza() {
        if (this.zza == null) {
            throw new IllegalStateException("cannot call build() twice");
        }
        zzglo zzgloVar = new zzglo(DesugarCollections.unmodifiableMap(this.zza), null);
        this.zza = null;
        return zzgloVar;
    }
}

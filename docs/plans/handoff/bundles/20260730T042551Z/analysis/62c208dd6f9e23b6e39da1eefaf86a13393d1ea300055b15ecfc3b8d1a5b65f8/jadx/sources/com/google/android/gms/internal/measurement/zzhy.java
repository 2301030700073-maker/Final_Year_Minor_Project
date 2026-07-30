package com.google.android.gms.internal.measurement;

import com.google.common.collect.Cnew;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzhy {
    private final boolean zza;

    public zzhy(zzhx zzhxVar) {
        if (zzhxVar == null) {
            throw new NullPointerException("BuildInfo must be non-null");
        }
        this.zza = !zzhxVar.zza();
    }

    public final boolean zza(String str) {
        if (str == null) {
            throw new NullPointerException("flagName must not be null");
        }
        if (!this.zza) {
            return true;
        }
        Iterator it = ((Cnew) zzia.zza.get()).f11840do.values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(str)) {
                return true;
            }
        }
        return false;
    }
}

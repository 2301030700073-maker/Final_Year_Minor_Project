package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class zzfvj {
    public static zzfvf zza(zzfvf zzfvfVar) {
        return ((zzfvfVar instanceof zzfvi) || (zzfvfVar instanceof zzfvg)) ? zzfvfVar : zzfvfVar instanceof Serializable ? new zzfvg(zzfvfVar) : new zzfvi(zzfvfVar);
    }
}

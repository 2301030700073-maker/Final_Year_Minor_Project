package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public abstract class zzfgf {
    private static final InterfaceFutureC3942wq zza = zzgch.zzh(null);
    private final zzgcs zzb;
    private final ScheduledExecutorService zzc;
    private final zzfgg zzd;

    public zzfgf(zzgcs zzgcsVar, ScheduledExecutorService scheduledExecutorService, zzfgg zzfggVar) {
        this.zzb = zzgcsVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzfggVar;
    }

    public final zzffv zza(Object obj, InterfaceFutureC3942wq... interfaceFutureC3942wqArr) {
        return new zzffv(this, obj, Arrays.asList(interfaceFutureC3942wqArr), null);
    }

    public final zzfgd zzb(Object obj, InterfaceFutureC3942wq interfaceFutureC3942wq) {
        return new zzfgd(this, obj, interfaceFutureC3942wq, Collections.singletonList(interfaceFutureC3942wq), interfaceFutureC3942wq);
    }

    public abstract String zzf(Object obj);
}

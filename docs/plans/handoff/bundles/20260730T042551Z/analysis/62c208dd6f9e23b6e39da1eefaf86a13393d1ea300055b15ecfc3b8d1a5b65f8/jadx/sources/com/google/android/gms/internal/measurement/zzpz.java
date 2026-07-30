package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzpz implements SF<zzpy> {
    private static zzpz zza = new zzpz();
    private final SF<zzpy> zzb = new VF(new zzqb());

    public static boolean zza() {
        return ((zzpy) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpy) zza.get()).zzb();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzpy get() {
        return this.zzb.get();
    }
}

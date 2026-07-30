package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzna implements SF<zznd> {
    private static zzna zza = new zzna();
    private final SF<zznd> zzb = new VF(new zznc());

    public static boolean zza() {
        return ((zznd) zza.get()).zza();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zznd get() {
        return this.zzb.get();
    }
}

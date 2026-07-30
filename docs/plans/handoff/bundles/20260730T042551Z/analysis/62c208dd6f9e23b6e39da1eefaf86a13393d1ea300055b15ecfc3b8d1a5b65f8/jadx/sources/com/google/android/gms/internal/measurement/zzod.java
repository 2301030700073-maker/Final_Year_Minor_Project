package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzod implements SF<zzoc> {
    private static zzod zza = new zzod();
    private final SF<zzoc> zzb = new VF(new zzof());

    public static boolean zza() {
        return ((zzoc) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzoc) zza.get()).zzb();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzoc get() {
        return this.zzb.get();
    }
}

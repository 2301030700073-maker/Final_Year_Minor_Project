package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzpt implements SF<zzps> {
    private static zzpt zza = new zzpt();
    private final SF<zzps> zzb = new VF(new zzpv());

    public static boolean zza() {
        return ((zzps) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzps) zza.get()).zzb();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzps get() {
        return this.zzb.get();
    }
}

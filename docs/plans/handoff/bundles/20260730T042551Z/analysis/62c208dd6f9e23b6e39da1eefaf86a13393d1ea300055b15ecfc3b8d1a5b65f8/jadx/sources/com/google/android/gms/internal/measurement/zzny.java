package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzny implements SF<zzob> {
    private static zzny zza = new zzny();
    private final SF<zzob> zzb = new VF(new zzoa());

    public static boolean zza() {
        return ((zzob) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzob) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzob) zza.get()).zzc();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzob get() {
        return this.zzb.get();
    }
}

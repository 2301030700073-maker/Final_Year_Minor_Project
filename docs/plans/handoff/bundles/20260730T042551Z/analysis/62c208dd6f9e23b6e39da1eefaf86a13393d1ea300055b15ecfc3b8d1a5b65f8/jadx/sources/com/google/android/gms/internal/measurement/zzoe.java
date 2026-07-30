package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzoe implements SF<zzoh> {
    private static zzoe zza = new zzoe();
    private final SF<zzoh> zzb = new VF(new zzog());

    public static boolean zza() {
        return ((zzoh) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzoh) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzoh) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zzoh) zza.get()).zzd();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzoh get() {
        return this.zzb.get();
    }
}

package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzok implements SF<zzon> {
    private static zzok zza = new zzok();
    private final SF<zzon> zzb = new VF(new zzom());

    public static boolean zza() {
        return ((zzon) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzon) zza.get()).zzb();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzon get() {
        return this.zzb.get();
    }
}

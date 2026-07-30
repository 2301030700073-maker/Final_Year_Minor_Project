package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzpo implements SF<zzpr> {
    private static zzpo zza = new zzpo();
    private final SF<zzpr> zzb = new VF(new zzpq());

    public static boolean zza() {
        return ((zzpr) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpr) zza.get()).zzb();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzpr get() {
        return this.zzb.get();
    }
}

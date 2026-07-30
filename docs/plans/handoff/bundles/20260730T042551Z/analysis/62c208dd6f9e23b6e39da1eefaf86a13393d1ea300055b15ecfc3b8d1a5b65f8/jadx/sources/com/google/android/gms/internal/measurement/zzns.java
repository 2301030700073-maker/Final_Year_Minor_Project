package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzns implements SF<zznv> {
    private static zzns zza = new zzns();
    private final SF<zznv> zzb = new VF(new zznu());

    public static boolean zza() {
        return ((zznv) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznv) zza.get()).zzb();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zznv get() {
        return this.zzb.get();
    }
}

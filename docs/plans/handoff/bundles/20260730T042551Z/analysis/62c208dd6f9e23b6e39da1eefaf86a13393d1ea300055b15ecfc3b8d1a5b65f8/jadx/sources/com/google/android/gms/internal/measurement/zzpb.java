package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzpb implements SF<zzpa> {
    private static zzpb zza = new zzpb();
    private final SF<zzpa> zzb = new VF(new zzpd());

    public static boolean zza() {
        return ((zzpa) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpa) zza.get()).zzb();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzpa get() {
        return this.zzb.get();
    }
}

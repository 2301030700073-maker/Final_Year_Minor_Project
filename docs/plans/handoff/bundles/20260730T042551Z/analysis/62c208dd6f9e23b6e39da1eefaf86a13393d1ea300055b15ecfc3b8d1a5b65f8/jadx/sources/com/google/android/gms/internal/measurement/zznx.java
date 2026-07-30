package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zznx implements SF<zznw> {
    private static zznx zza = new zznx();
    private final SF<zznw> zzb = new VF(new zznz());

    public static boolean zza() {
        return ((zznw) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznw) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zznw) zza.get()).zzc();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zznw get() {
        return this.zzb.get();
    }
}

package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zznr implements SF<zznq> {
    private static zznr zza = new zznr();
    private final SF<zznq> zzb = new VF(new zznt());

    public static boolean zza() {
        return ((zznq) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznq) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zznq) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zznq) zza.get()).zzd();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zznq get() {
        return this.zzb.get();
    }
}

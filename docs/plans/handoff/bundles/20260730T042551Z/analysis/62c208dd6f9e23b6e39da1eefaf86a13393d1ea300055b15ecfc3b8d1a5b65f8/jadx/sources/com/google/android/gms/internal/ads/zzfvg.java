package com.google.android.gms.internal.ads;

import defpackage.Cif;
import java.io.Serializable;

/* loaded from: classes.dex */
final class zzfvg implements Serializable, zzfvf {
    final zzfvf zza;
    volatile transient boolean zzb;
    transient Object zzc;
    private final transient zzfvm zzd = new zzfvm();

    public zzfvg(zzfvf zzfvfVar) {
        this.zza = zzfvfVar;
    }

    public final String toString() {
        return Cif.m6908case("Suppliers.memoize(", (this.zzb ? Cif.m6908case("<supplier that returned ", String.valueOf(this.zzc), ">") : this.zza).toString(), ")");
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final Object zza() {
        if (!this.zzb) {
            synchronized (this.zzd) {
                if (!this.zzb) {
                    Object zza = this.zza.zza();
                    this.zzc = zza;
                    this.zzb = true;
                    return zza;
                }
            }
        }
        return this.zzc;
    }
}

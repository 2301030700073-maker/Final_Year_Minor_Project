package com.google.android.gms.internal.measurement;

import android.content.Context;
import defpackage.AbstractC2838gw;
import defpackage.SF;
import defpackage.V1;

/* loaded from: classes.dex */
final class zzgv extends zzhu {
    private final Context zza;
    private final SF<AbstractC2838gw<zzhh>> zzb;

    public zzgv(Context context, SF<AbstractC2838gw<zzhh>> sf) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        this.zza = context;
        this.zzb = sf;
    }

    public final boolean equals(Object obj) {
        SF<AbstractC2838gw<zzhh>> sf;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhu) {
            zzhu zzhuVar = (zzhu) obj;
            if (this.zza.equals(zzhuVar.zza()) && ((sf = this.zzb) != null ? sf.equals(zzhuVar.zzb()) : zzhuVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.zza.hashCode() ^ 1000003) * 1000003;
        SF<AbstractC2838gw<zzhh>> sf = this.zzb;
        return hashCode ^ (sf == null ? 0 : sf.hashCode());
    }

    public final String toString() {
        return V1.m2499else("FlagsContext{context=", String.valueOf(this.zza), ", hermeticFileOverrides=", String.valueOf(this.zzb), "}");
    }

    @Override // com.google.android.gms.internal.measurement.zzhu
    public final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzhu
    public final SF<AbstractC2838gw<zzhh>> zzb() {
        return this.zzb;
    }
}

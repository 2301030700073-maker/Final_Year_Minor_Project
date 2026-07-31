package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhej extends zzgwj {
    private final zzhfx zza;

    public zzhej(zzhfx zzhfxVar) {
        this.zza = zzhfxVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhej)) {
            return false;
        }
        zzhfx zzhfxVar = ((zzhej) obj).zza;
        zzhfx zzhfxVar2 = this.zza;
        return zzhfxVar2.zzc().zzc().equals(zzhfxVar.zzc().zzc()) && zzhfxVar2.zzc().zza().equals(zzhfxVar.zzc().zza()) && zzhfxVar2.zzc().zzb().equals(zzhfxVar.zzc().zzb());
    }

    public final int hashCode() {
        zzhfx zzhfxVar = this.zza;
        return Objects.hash(zzhfxVar.zzc(), zzhfxVar.zzf());
    }

    public final String toString() {
        zzhfx zzhfxVar = this.zza;
        String zza = zzhfxVar.zzc().zza();
        int ordinal = zzhfxVar.zzc().zzc().ordinal();
        return String.format("(typeUrl=%s, outputPrefixType=%s)", zza, ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK");
    }

    @Override // com.google.android.gms.internal.ads.zzgwj
    public final boolean zza() {
        return this.zza.zzc().zzc() != zzhlt.RAW;
    }

    public final zzhfx zzb() {
        return this.zza;
    }
}

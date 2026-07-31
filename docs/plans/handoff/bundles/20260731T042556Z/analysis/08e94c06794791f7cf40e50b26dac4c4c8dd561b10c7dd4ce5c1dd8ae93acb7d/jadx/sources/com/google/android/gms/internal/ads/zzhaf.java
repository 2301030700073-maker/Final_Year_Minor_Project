package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhaf extends zzgxa {
    private final zzhak zza;
    private final zzhtb zzb;
    private final zzhsz zzc;

    @Nullable
    private final Integer zzd;

    private zzhaf(zzhak zzhakVar, zzhtb zzhtbVar, zzhsz zzhszVar, @Nullable Integer num) {
        this.zza = zzhakVar;
        this.zzb = zzhtbVar;
        this.zzc = zzhszVar;
        this.zzd = num;
    }

    public static zzhaf zzd(zzhak zzhakVar, zzhtb zzhtbVar, @Nullable Integer num) throws GeneralSecurityException {
        zzhsz zzb;
        zzhaj zzc = zzhakVar.zzc();
        zzhaj zzhajVar = zzhaj.zzb;
        if (zzc != zzhajVar && num == null) {
            String obj = zzhakVar.zzc().toString();
            StringBuilder sb = new StringBuilder(obj.length() + 62);
            sb.append("For given Variant ");
            sb.append(obj);
            sb.append(" the value of idRequirement must be non-null");
            throw new GeneralSecurityException(sb.toString());
        }
        if (zzhakVar.zzc() == zzhajVar && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzhtbVar.zzd() != 32) {
            int zzd = zzhtbVar.zzd();
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzd).length() + 68);
            sb2.append("XAesGcmKey key must be constructed with key of length 32 bytes, not ");
            sb2.append(zzd);
            throw new GeneralSecurityException(sb2.toString());
        }
        if (zzhakVar.zzc() == zzhajVar) {
            zzb = zzhfc.zza;
        } else {
            if (zzhakVar.zzc() != zzhaj.zza) {
                throw new IllegalStateException("Unknown Variant: ".concat(zzhakVar.zzc().toString()));
            }
            zzb = zzhfc.zzb(num.intValue());
        }
        return new zzhaf(zzhakVar, zzhtbVar, zzb, num);
    }

    @Override // com.google.android.gms.internal.ads.zzgxa, com.google.android.gms.internal.ads.zzgvt
    public final /* synthetic */ zzgwj zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgvt
    @Nullable
    public final Integer zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgxa
    public final zzhsz zzc() {
        return this.zzc;
    }

    public final zzhtb zze() {
        return this.zzb;
    }

    public final zzhak zzf() {
        return this.zza;
    }
}

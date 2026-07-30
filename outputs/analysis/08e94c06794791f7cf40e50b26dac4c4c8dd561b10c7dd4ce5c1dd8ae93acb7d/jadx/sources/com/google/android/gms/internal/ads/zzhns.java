package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhns extends zzhpr {
    private final zzhnl zza;
    private final zzhsz zzb;
    private final zzhsz zzc;

    @Nullable
    private final Integer zzd;

    private zzhns(zzhnl zzhnlVar, zzhsz zzhszVar, zzhsz zzhszVar2, @Nullable Integer num) {
        this.zza = zzhnlVar;
        this.zzb = zzhszVar;
        this.zzc = zzhszVar2;
        this.zzd = num;
    }

    public static zzhns zzc(zzhnk zzhnkVar, zzhsz zzhszVar, @Nullable Integer num) throws GeneralSecurityException {
        zzhsz zza;
        zzhnl zzb = zzhnl.zzb(zzhnkVar);
        zzhnk zzhnkVar2 = zzhnk.zzd;
        if (!zzhnkVar.equals(zzhnkVar2) && num == null) {
            String obj = zzhnkVar.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 62);
            sb.append("For given Variant ");
            sb.append(obj);
            sb.append(" the value of idRequirement must be non-null");
            throw new GeneralSecurityException(sb.toString());
        }
        if (zzhnkVar.equals(zzhnkVar2) && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzhszVar.zzd() != 32) {
            int zzd = zzhszVar.zzd();
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzd).length() + 65);
            sb2.append("Ed25519 key must be constructed with key of length 32 bytes, not ");
            sb2.append(zzd);
            throw new GeneralSecurityException(sb2.toString());
        }
        if (zzb.zzc() == zzhnkVar2) {
            zza = zzhfc.zza;
        } else if (zzb.zzc() == zzhnk.zzb || zzb.zzc() == zzhnk.zzc) {
            zza = zzhfc.zza(num.intValue());
        } else {
            if (zzb.zzc() != zzhnk.zza) {
                throw new IllegalStateException("Unknown Variant: ".concat(zzb.zzc().toString()));
            }
            zza = zzhfc.zzb(num.intValue());
        }
        return new zzhns(zzb, zzhszVar, zza, num);
    }

    @Override // com.google.android.gms.internal.ads.zzhpr, com.google.android.gms.internal.ads.zzgvt
    public final /* synthetic */ zzgwj zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgvt
    @Nullable
    public final Integer zzb() {
        return this.zzd;
    }

    public final zzhsz zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhpr
    public final zzhsz zze() {
        return this.zzc;
    }

    public final zzhnl zzf() {
        return this.zza;
    }
}

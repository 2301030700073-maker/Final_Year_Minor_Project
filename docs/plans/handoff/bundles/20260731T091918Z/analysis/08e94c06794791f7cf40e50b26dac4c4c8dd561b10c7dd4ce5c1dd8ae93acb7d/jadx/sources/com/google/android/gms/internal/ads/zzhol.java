package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhol implements zzhfv {
    private static final zzhol zza = new zzhol();
    private static final zzhfp zzb = zzhfp.zzd(zzhoi.zza, zzhei.class, zzgwl.class);

    zzhol() {
    }

    public static void zzc() throws GeneralSecurityException {
        zzhey.zza().zzc(zza);
        zzhey.zza().zzb(zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zza() {
        return zzgwl.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zzb() {
        return zzgwl.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final /* bridge */ /* synthetic */ Object zze(zzhed zzhedVar, zzhel zzhelVar, zzhfu zzhfuVar) throws GeneralSecurityException {
        zzhem zza2 = !zzhelVar.zza() ? zzhew.zza().zzb().zza(zzhedVar, zzhelVar, "public_key_sign", "sign") : zzhep.zza;
        zzgwe zzgweVar = (zzgwe) zzhedVar;
        return new zzhok(new zzhoj((zzgwl) zzhfuVar.zza(zzgweVar.zzc()), zzgweVar.zzc().zzc()), zza2);
    }
}

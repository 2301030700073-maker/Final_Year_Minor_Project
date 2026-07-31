package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzgza implements zzhfo {
    static final /* synthetic */ zzgza zza = new zzgza();

    private /* synthetic */ zzgza() {
    }

    @Override // com.google.android.gms.internal.ads.zzhfo
    public final /* synthetic */ Object zza(zzgvt zzgvtVar) {
        zzgzl zzgzlVar = (zzgzl) zzgvtVar;
        int i = zzgzc.zza;
        String zzb = zzgzlVar.zze().zzb();
        zzgxb zzd = zzgzlVar.zze().zzd();
        zzgvm zzb2 = zzgwh.zza(zzb).zzb();
        int i2 = zzgyz.zza;
        try {
            return zzhce.zzc(new zzgyz(zzhla.zzd(zzgwp.zza(zzd), zzhvy.zza()), zzb2), zzgzlVar.zzc());
        } catch (zzhxd e) {
            throw new GeneralSecurityException(e);
        }
    }
}

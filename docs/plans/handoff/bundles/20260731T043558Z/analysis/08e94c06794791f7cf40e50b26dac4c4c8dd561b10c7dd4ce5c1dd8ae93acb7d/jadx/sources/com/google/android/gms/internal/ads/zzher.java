package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzher implements zzheq {
    static final /* synthetic */ zzher zza = new zzher();

    private /* synthetic */ zzher() {
    }

    @Override // com.google.android.gms.internal.ads.zzheq
    public final /* synthetic */ zzgvt zza(zzgwj zzgwjVar, Integer num) {
        int i = zzhes.zza;
        zzhla zzc = ((zzhej) zzgwjVar).zzb().zzc();
        zzgvu zzd = zzhdw.zza().zzd(zzc.zza());
        if (!zzhdw.zza().zze(zzc.zza())) {
            throw new GeneralSecurityException("Creating new keys is not allowed.");
        }
        zzhkx zzd2 = zzd.zzd(zzc.zzb());
        return new zzhei(zzhfw.zza(zzd2.zza(), zzd2.zzb(), zzd2.zzc(), zzc.zzc(), num), zzgvr.zza());
    }
}

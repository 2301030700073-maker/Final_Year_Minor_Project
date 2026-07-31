package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhop implements zzhfv {
    private static final zzhop zza = new zzhop();
    private static final zzhfp zzb = zzhfp.zzd(zzhom.zza, zzhei.class, zzgwm.class);

    static void zzc() throws GeneralSecurityException {
        zzhey.zza().zzc(zza);
        zzhey.zza().zzb(zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zza() {
        return zzgwm.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zzb() {
        return zzgwm.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final /* bridge */ /* synthetic */ Object zze(zzhed zzhedVar, zzhel zzhelVar, zzhfu zzhfuVar) throws GeneralSecurityException {
        zzhsz zzd;
        zzhfk zzhfkVar = new zzhfk();
        for (int i = 0; i < zzhedVar.zzd(); i++) {
            zzgwc zze = ((zzgwe) zzhedVar).zze(i);
            if (zze.zzb().equals(zzgvv.zza)) {
                zzgwm zzgwmVar = (zzgwm) zzhfuVar.zza(zze);
                zzgvt zza2 = zze.zza();
                if (zza2 instanceof zzhpr) {
                    zzd = ((zzhpr) zza2).zze();
                } else {
                    if (!(zza2 instanceof zzhei)) {
                        String name = zza2.getClass().getName();
                        String valueOf = String.valueOf(zza2.zza());
                        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 59 + String.valueOf(valueOf).length());
                        sb.append("Cannot get output prefix for key of class ");
                        sb.append(name);
                        sb.append(" with parameters ");
                        sb.append(valueOf);
                        throw new GeneralSecurityException(sb.toString());
                    }
                    zzd = ((zzhei) zza2).zzd();
                }
                zzhfkVar.zza(zzd, new zzhon(zzgwmVar, zze.zzc()));
            }
        }
        return new zzhoo(zzhfkVar.zzb(), !zzhelVar.zza() ? zzhew.zza().zzb().zza(zzhedVar, zzhelVar, "public_key_verify", "verify") : zzhep.zza);
    }
}

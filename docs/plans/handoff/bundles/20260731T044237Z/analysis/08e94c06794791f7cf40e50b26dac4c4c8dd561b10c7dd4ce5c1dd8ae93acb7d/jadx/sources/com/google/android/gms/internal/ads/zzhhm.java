package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhhm implements zzhfv {
    private static final zzhhm zza = new zzhhm();
    private static final zzhfp zzb = zzhfp.zzd(zzhhj.zza, zzhei.class, zzgwi.class);

    zzhhm() {
    }

    static void zzc() throws GeneralSecurityException {
        zzhey.zza().zzc(zza);
        zzhey.zza().zzb(zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zza() {
        return zzgwi.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zzb() {
        return zzgwi.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final /* bridge */ /* synthetic */ Object zze(zzhed zzhedVar, zzhel zzhelVar, zzhfu zzhfuVar) throws GeneralSecurityException {
        zzhem zzhemVar;
        zzhem zzhemVar2;
        zzhsz zzd;
        zzhfk zzhfkVar = new zzhfk();
        for (int i = 0; i < zzhedVar.zzd(); i++) {
            zzgwc zze = ((zzgwe) zzhedVar).zze(i);
            if (zze.zzb().equals(zzgvv.zza)) {
                zzgwi zzgwiVar = (zzgwi) zzhfuVar.zza(zze);
                zzgvt zza2 = zze.zza();
                if (zza2 instanceof zzhhh) {
                    zzd = ((zzhhh) zza2).zze();
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
                zzhfkVar.zza(zzd, new zzhhk(zzgwiVar, zze.zzc()));
            }
        }
        if (zzhelVar.zza()) {
            zzhemVar = zzhep.zza;
            zzhemVar2 = zzhemVar;
        } else {
            zzhen zzb2 = zzhew.zza().zzb();
            zzhem zza3 = zzb2.zza(zzhedVar, zzhelVar, "mac", "compute");
            zzhemVar2 = zzb2.zza(zzhedVar, zzhelVar, "mac", "verify");
            zzhemVar = zza3;
        }
        zzgwe zzgweVar = (zzgwe) zzhedVar;
        return new zzhhl(new zzhhk((zzgwi) zzhfuVar.zza(zzgweVar.zzc()), zzgweVar.zzc().zzc()), zzhfkVar.zzb(), zzhemVar, zzhemVar2, null);
    }
}

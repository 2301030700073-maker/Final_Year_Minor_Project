package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgxf implements zzhfv {
    private static final zzgxf zza = new zzgxf();
    private static final zzhfp zzb = zzhfp.zzd(zzgxd.zza, zzhei.class, zzgvm.class);

    zzgxf() {
    }

    public static void zzc() throws GeneralSecurityException {
        zzhey.zza().zzc(zza);
        zzhey.zza().zzb(zzb);
    }

    public static void zzd(zzhfq zzhfqVar) throws GeneralSecurityException {
        zzhfqVar.zzb(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zza() {
        return zzgvm.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zzb() {
        return zzgvm.class;
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
                zzgvt zza2 = zze.zza();
                if (zza2 instanceof zzgxa) {
                    zzd = ((zzgxa) zza2).zzc();
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
                zzhfkVar.zza(zzd, new zzgxc((zzgvm) zzhfuVar.zza(zze), zze.zzc()));
            }
        }
        if (zzhelVar.zza()) {
            zzhemVar = zzhep.zza;
            zzhemVar2 = zzhemVar;
        } else {
            zzhen zzb2 = zzhew.zza().zzb();
            zzhem zza3 = zzb2.zza(zzhedVar, zzhelVar, "aead", "encrypt");
            zzhemVar2 = zzb2.zza(zzhedVar, zzhelVar, "aead", "decrypt");
            zzhemVar = zza3;
        }
        zzgwe zzgweVar = (zzgwe) zzhedVar;
        return new zzgxe(new zzgxc((zzgvm) zzhfuVar.zza(zzgweVar.zzc()), zzgweVar.zzc().zzc()), zzhfkVar.zzb(), zzhemVar, zzhemVar2, null);
    }
}

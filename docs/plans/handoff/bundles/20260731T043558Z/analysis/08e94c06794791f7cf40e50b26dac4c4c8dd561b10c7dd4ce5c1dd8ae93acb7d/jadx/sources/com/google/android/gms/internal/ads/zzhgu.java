package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhgu implements zzhfv {
    private static final zzhgu zza = new zzhgu();

    private zzhgu() {
    }

    static void zzc() throws GeneralSecurityException {
        zzhey.zza().zzc(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zza() {
        return zzhgs.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final Class zzb() {
        return zzhgs.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhfv
    public final /* bridge */ /* synthetic */ Object zze(zzhed zzhedVar, zzhel zzhelVar, zzhfu zzhfuVar) throws GeneralSecurityException {
        zzhsz zzd;
        zzgwe zzgweVar = (zzgwe) zzhedVar;
        zzgwc zzc = zzgweVar.zzc();
        zzhfk zzhfkVar = new zzhfk();
        for (int i = 0; i < zzhedVar.zzd(); i++) {
            zzgwc zze = zzgweVar.zze(i);
            if (zze.zzb().equals(zzgvv.zza)) {
                zzhgs zzhgsVar = (zzhgs) zzhfuVar.zza(zze);
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
                zzhfkVar.zza(zzd, zzhgsVar);
            }
        }
        return new zzhgt(zzhfkVar.zzb(), (zzhgs) zzhfuVar.zza(zzc), null);
    }
}

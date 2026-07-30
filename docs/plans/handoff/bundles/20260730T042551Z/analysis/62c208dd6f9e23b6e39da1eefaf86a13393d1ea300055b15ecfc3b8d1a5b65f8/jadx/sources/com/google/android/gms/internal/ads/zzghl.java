package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzghl {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzghh
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzghl.zzd((zzghg) zzgekVar);
            }
        }, zzghg.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzghi
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzghl.zzb((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzghj
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzghl.zzc((zzghe) zzgdxVar, zzgeoVar);
            }
        }, zzghe.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzghk
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzghl.zza((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzghe zza(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
        }
        try {
            zzgtf zzd2 = zzgtf.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() == 0) {
                return zzghe.zza(zzghg.zzc(zzd2.zzf().zzf(), zzf(zzgnhVar.zzc())), zzgnhVar.zzf());
            }
            throw new GeneralSecurityException("KmsAeadKey are only accepted with version 0, got ".concat(String.valueOf(zzd2)));
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e);
        }
    }

    public static /* synthetic */ zzghg zzb(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            return zzghg.zzc(zzgti.zzd(zzgniVar.zzc().zzh(), zzgxb.zza()).zzf(), zzf(zzgniVar.zzc().zzg()));
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing KmsAeadKeyFormat failed: ", e);
        }
    }

    public static /* synthetic */ zzgnh zzc(zzghe zzgheVar, zzgeo zzgeoVar) {
        zzgtd zzb2 = zzgtf.zzb();
        zzgtg zza2 = zzgti.zza();
        zza2.zza(zzgheVar.zzb().zzd());
        zzb2.zza((zzgti) zza2.zzbr());
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.KmsAeadKey", ((zzgtf) zzb2.zzbr()).zzaN(), zzgsj.REMOTE, zzg(zzgheVar.zzb().zzb()), zzgheVar.zzd());
    }

    public static /* synthetic */ zzgni zzd(zzghg zzghgVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        zzgtg zza3 = zzgti.zza();
        zza3.zza(zzghgVar.zzd());
        zza2.zzc(((zzgti) zza3.zzbr()).zzaN());
        zza2.zza(zzg(zzghgVar.zzb()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzghf zzf(zzgtp zzgtpVar) {
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            return zzghf.zza;
        }
        if (ordinal == 3) {
            return zzghf.zzb;
        }
        throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
    }

    private static zzgtp zzg(zzghf zzghfVar) {
        if (zzghf.zza.equals(zzghfVar)) {
            return zzgtp.TINK;
        }
        if (zzghf.zzb.equals(zzghfVar)) {
            return zzgtp.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzghfVar.toString()));
    }
}

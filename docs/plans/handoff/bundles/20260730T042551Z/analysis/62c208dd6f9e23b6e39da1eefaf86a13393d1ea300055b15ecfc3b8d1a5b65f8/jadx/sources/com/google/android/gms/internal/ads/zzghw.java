package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzghw {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzghs
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzghw.zzd((zzghr) zzgekVar);
            }
        }, zzghr.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzght
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzghw.zzb((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzghu
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzghw.zzc((zzghm) zzgdxVar, zzgeoVar);
            }
        }, zzghm.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzghv
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzghw.zza((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzghm zza(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
        }
        try {
            zzgtl zzd2 = zzgtl.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() == 0) {
                return zzghm.zza(zzf(zzd2.zzf(), zzgnhVar.zzc()), zzgnhVar.zzf());
            }
            throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with version 0, got ".concat(String.valueOf(zzd2)));
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e);
        }
    }

    public static /* synthetic */ zzghr zzb(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            return zzf(zzgto.zzf(zzgniVar.zzc().zzh(), zzgxb.zza()), zzgniVar.zzc().zzg());
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
        }
    }

    public static /* synthetic */ zzgnh zzc(zzghm zzghmVar, zzgeo zzgeoVar) {
        zzgtj zzb2 = zzgtl.zzb();
        zzb2.zza(zzg(zzghmVar.zzb()));
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", ((zzgtl) zzb2.zzbr()).zzaN(), zzgsj.REMOTE, zzh(zzghmVar.zzb().zzc()), zzghmVar.zzd());
    }

    public static /* synthetic */ zzgni zzd(zzghr zzghrVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        zza2.zzc(zzg(zzghrVar).zzaN());
        zza2.zza(zzh(zzghrVar.zzc()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzghr zzf(zzgto zzgtoVar, zzgtp zzgtpVar) {
        zzgho zzghoVar;
        zzghp zzghpVar;
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb(zzgtoVar.zza().zzi());
        zza2.zzc(zzgtoVar.zza().zzh());
        zza2.zza(zzgtp.RAW);
        zzgek zza3 = zzgeq.zza(((zzgsp) zza2.zzbr()).zzaV());
        if (zza3 instanceof zzggf) {
            zzghoVar = zzgho.zza;
        } else if (zza3 instanceof zzggw) {
            zzghoVar = zzgho.zzc;
        } else if (zza3 instanceof zzgir) {
            zzghoVar = zzgho.zzb;
        } else if (zza3 instanceof zzgfk) {
            zzghoVar = zzgho.zzd;
        } else if (zza3 instanceof zzgfu) {
            zzghoVar = zzgho.zze;
        } else {
            if (!(zza3 instanceof zzggq)) {
                throw new GeneralSecurityException("Unsupported DEK parameters when parsing ".concat(zza3.toString()));
            }
            zzghoVar = zzgho.zzf;
        }
        zzghn zzghnVar = new zzghn(null);
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            zzghpVar = zzghp.zza;
        } else {
            if (ordinal != 3) {
                throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
            }
            zzghpVar = zzghp.zzb;
        }
        zzghnVar.zzd(zzghpVar);
        zzghnVar.zzc(zzgtoVar.zzg());
        zzghnVar.zza((zzgeu) zza3);
        zzghnVar.zzb(zzghoVar);
        return zzghnVar.zze();
    }

    private static zzgto zzg(zzghr zzghrVar) {
        try {
            zzgsp zzf2 = zzgsp.zzf(zzgeq.zzb(zzghrVar.zzb()), zzgxb.zza());
            zzgtm zzb2 = zzgto.zzb();
            zzb2.zzb(zzghrVar.zzd());
            zzb2.zza(zzf2);
            return (zzgto) zzb2.zzbr();
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
        }
    }

    private static zzgtp zzh(zzghp zzghpVar) {
        if (zzghp.zza.equals(zzghpVar)) {
            return zzgtp.TINK;
        }
        if (zzghp.zzb.equals(zzghpVar)) {
            return zzgtp.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzghpVar)));
    }
}

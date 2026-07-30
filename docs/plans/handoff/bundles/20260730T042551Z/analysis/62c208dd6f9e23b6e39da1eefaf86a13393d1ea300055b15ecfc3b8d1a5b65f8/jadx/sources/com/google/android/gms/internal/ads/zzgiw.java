package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgiw {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgis
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzgiw.zzd((zzgfk) zzgekVar);
            }
        }, zzgfk.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzgit
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzgiw.zzb((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzgiu
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzgiw.zzc((zzgfb) zzgdxVar, zzgeoVar);
            }
        }, zzgfb.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzgiv
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzgiw.zza((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzgfb zza(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
        }
        try {
            zzgqk zzd2 = zzgqk.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (zzd2.zzf().zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
            }
            if (zzd2.zzg().zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
            }
            zzgfg zzf2 = zzgfk.zzf();
            zzf2.zza(zzd2.zzf().zzg().zzd());
            zzf2.zzc(zzd2.zzg().zzh().zzd());
            zzf2.zzd(zzd2.zzf().zzf().zza());
            zzf2.zze(zzd2.zzg().zzg().zza());
            zzf2.zzb(zzf(zzd2.zzg().zzg().zzb()));
            zzf2.zzf(zzg(zzgnhVar.zzc()));
            zzgfk zzg = zzf2.zzg();
            zzgez zza2 = zzgfb.zza();
            zza2.zzd(zzg);
            zza2.zza(zzgvp.zzb(zzd2.zzf().zzg().zzA(), zzgeoVar));
            zza2.zzb(zzgvp.zzb(zzd2.zzg().zzh().zzA(), zzgeoVar));
            zza2.zzc(zzgnhVar.zzf());
            return zza2.zze();
        } catch (zzgyg unused) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
        }
    }

    public static /* synthetic */ zzgfk zzb(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            zzgqn zzc2 = zzgqn.zzc(zzgniVar.zzc().zzh(), zzgxb.zza());
            if (zzc2.zzf().zzb() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgfg zzf2 = zzgfk.zzf();
            zzf2.zza(zzc2.zzd().zza());
            zzf2.zzc(zzc2.zzf().zza());
            zzf2.zzd(zzc2.zzd().zzf().zza());
            zzf2.zze(zzc2.zzf().zzh().zza());
            zzf2.zzb(zzf(zzc2.zzf().zzh().zzb()));
            zzf2.zzf(zzg(zzgniVar.zzc().zzg()));
            return zzf2.zzg();
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e);
        }
    }

    public static /* synthetic */ zzgnh zzc(zzgfb zzgfbVar, zzgeo zzgeoVar) {
        zzgqi zzb2 = zzgqk.zzb();
        zzgqo zzb3 = zzgqq.zzb();
        zzgqu zzb4 = zzgqw.zzb();
        zzb4.zza(zzgfbVar.zzb().zzd());
        zzb3.zzb((zzgqw) zzb4.zzbr());
        byte[] zzd2 = zzgfbVar.zzd().zzd(zzgeoVar);
        zzb3.zza(zzgwj.zzv(zzd2, 0, zzd2.length));
        zzb2.zza((zzgqq) zzb3.zzbr());
        zzgrz zzb5 = zzgsb.zzb();
        zzb5.zzb(zzh(zzgfbVar.zzb()));
        byte[] zzd3 = zzgfbVar.zze().zzd(zzgeoVar);
        zzb5.zza(zzgwj.zzv(zzd3, 0, zzd3.length));
        zzb2.zzb((zzgsb) zzb5.zzbr());
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((zzgqk) zzb2.zzbr()).zzaN(), zzgsj.SYMMETRIC, zzi(zzgfbVar.zzb().zzh()), zzgfbVar.zzf());
    }

    public static /* synthetic */ zzgni zzd(zzgfk zzgfkVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzgql zza3 = zzgqn.zza();
        zzgqr zzb2 = zzgqt.zzb();
        zzgqu zzb3 = zzgqw.zzb();
        zzb3.zza(zzgfkVar.zzd());
        zzb2.zzb((zzgqw) zzb3.zzbr());
        zzb2.zza(zzgfkVar.zzb());
        zza3.zza((zzgqt) zzb2.zzbr());
        zzgsc zzc2 = zzgse.zzc();
        zzc2.zzb(zzh(zzgfkVar));
        zzc2.zza(zzgfkVar.zzc());
        zza3.zzb((zzgse) zzc2.zzbr());
        zza2.zzc(((zzgqn) zza3.zzbr()).zzaN());
        zza2.zza(zzi(zzgfkVar.zzh()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzgfh zzf(zzgry zzgryVar) {
        int ordinal = zzgryVar.ordinal();
        if (ordinal == 1) {
            return zzgfh.zza;
        }
        if (ordinal == 2) {
            return zzgfh.zzd;
        }
        if (ordinal == 3) {
            return zzgfh.zzc;
        }
        if (ordinal == 4) {
            return zzgfh.zze;
        }
        if (ordinal == 5) {
            return zzgfh.zzb;
        }
        throw new GeneralSecurityException(V1.m2494case("Unable to parse HashType: ", zzgryVar.zza()));
    }

    private static zzgfi zzg(zzgtp zzgtpVar) {
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            return zzgfi.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgfi.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
            }
        }
        return zzgfi.zzb;
    }

    private static zzgsh zzh(zzgfk zzgfkVar) {
        zzgry zzgryVar;
        zzgsf zzc2 = zzgsh.zzc();
        zzc2.zzb(zzgfkVar.zze());
        zzgfh zzg = zzgfkVar.zzg();
        if (zzgfh.zza.equals(zzg)) {
            zzgryVar = zzgry.SHA1;
        } else if (zzgfh.zzb.equals(zzg)) {
            zzgryVar = zzgry.SHA224;
        } else if (zzgfh.zzc.equals(zzg)) {
            zzgryVar = zzgry.SHA256;
        } else if (zzgfh.zzd.equals(zzg)) {
            zzgryVar = zzgry.SHA384;
        } else {
            if (!zzgfh.zze.equals(zzg)) {
                throw new GeneralSecurityException("Unable to serialize HashType ".concat(String.valueOf(zzg)));
            }
            zzgryVar = zzgry.SHA512;
        }
        zzc2.zza(zzgryVar);
        return (zzgsh) zzc2.zzbr();
    }

    private static zzgtp zzi(zzgfi zzgfiVar) {
        if (zzgfi.zza.equals(zzgfiVar)) {
            return zzgtp.TINK;
        }
        if (zzgfi.zzb.equals(zzgfiVar)) {
            return zzgtp.CRUNCHY;
        }
        if (zzgfi.zzc.equals(zzgfiVar)) {
            return zzgtp.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgfiVar)));
    }
}

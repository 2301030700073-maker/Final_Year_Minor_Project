package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgpo {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgpk
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzgpo.zzb((zzgof) zzgekVar);
            }
        }, zzgof.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzgpl
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzgpo.zzd((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzgpm
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzgpo.zza((zzgnx) zzgdxVar, zzgeoVar);
            }
        }, zzgnx.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzgpn
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzgpo.zzc((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzgnh zza(zzgnx zzgnxVar, zzgeo zzgeoVar) {
        zzgpz zzb2 = zzgqb.zzb();
        zzb2.zzb(zzg(zzgnxVar.zzb()));
        byte[] zzd2 = zzgnxVar.zzd().zzd(zzgeoVar);
        zzb2.zza(zzgwj.zzv(zzd2, 0, zzd2.length));
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.AesCmacKey", ((zzgqb) zzb2.zzbr()).zzaN(), zzgsj.SYMMETRIC, zzh(zzgnxVar.zzb().zzf()), zzgnxVar.zze());
    }

    public static /* synthetic */ zzgni zzb(zzgof zzgofVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zzgqc zzb2 = zzgqe.zzb();
        zzb2.zzb(zzg(zzgofVar));
        zzb2.zza(zzgofVar.zzc());
        zza2.zzc(((zzgqe) zzb2.zzbr()).zzaN());
        zza2.zza(zzh(zzgofVar.zzf()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static /* synthetic */ zzgnx zzc(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
        }
        try {
            zzgqb zzd2 = zzgqb.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgoc zze2 = zzgof.zze();
            zze2.zza(zzd2.zzg().zzd());
            zze2.zzb(zzd2.zzf().zza());
            zze2.zzc(zzf(zzgnhVar.zzc()));
            zzgof zzd3 = zze2.zzd();
            zzgnv zza2 = zzgnx.zza();
            zza2.zzc(zzd3);
            zza2.zza(zzgvp.zzb(zzd2.zzg().zzA(), zzgeoVar));
            zza2.zzb(zzgnhVar.zzf());
            return zza2.zzd();
        } catch (zzgyg | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing AesCmacKey failed");
        }
    }

    public static /* synthetic */ zzgof zzd(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            zzgqe zzd2 = zzgqe.zzd(zzgniVar.zzc().zzh(), zzgxb.zza());
            zzgoc zze2 = zzgof.zze();
            zze2.zza(zzd2.zza());
            zze2.zzb(zzd2.zzf().zza());
            zze2.zzc(zzf(zzgniVar.zzc().zzg()));
            return zze2.zzd();
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e);
        }
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzgod zzf(zzgtp zzgtpVar) {
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            return zzgod.zza;
        }
        if (ordinal == 2) {
            return zzgod.zzc;
        }
        if (ordinal == 3) {
            return zzgod.zzd;
        }
        if (ordinal == 4) {
            return zzgod.zzb;
        }
        throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
    }

    private static zzgqh zzg(zzgof zzgofVar) {
        zzgqf zzb2 = zzgqh.zzb();
        zzb2.zza(zzgofVar.zzb());
        return (zzgqh) zzb2.zzbr();
    }

    private static zzgtp zzh(zzgod zzgodVar) {
        if (zzgod.zza.equals(zzgodVar)) {
            return zzgtp.TINK;
        }
        if (zzgod.zzb.equals(zzgodVar)) {
            return zzgtp.CRUNCHY;
        }
        if (zzgod.zzd.equals(zzgodVar)) {
            return zzgtp.RAW;
        }
        if (zzgod.zzc.equals(zzgodVar)) {
            return zzgtp.LEGACY;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgodVar)));
    }
}

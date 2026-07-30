package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgjn {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgjj
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzgjn.zzd((zzggq) zzgekVar);
            }
        }, zzggq.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzgjk
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzgjn.zzb((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzgjl
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzgjn.zzc((zzggi) zzgdxVar, zzgeoVar);
            }
        }, zzggi.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzgjm
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzgjn.zza((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzggi zza(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
        }
        try {
            zzgro zzd2 = zzgro.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzggn zzc2 = zzggq.zzc();
            zzc2.zza(zzd2.zzf().zzd());
            zzc2.zzb(zzf(zzgnhVar.zzc()));
            zzggq zzc3 = zzc2.zzc();
            zzggg zza2 = zzggi.zza();
            zza2.zzc(zzc3);
            zza2.zzb(zzgvp.zzb(zzd2.zzf().zzA(), zzgeoVar));
            zza2.zza(zzgnhVar.zzf());
            return zza2.zzd();
        } catch (zzgyg unused) {
            throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
        }
    }

    public static /* synthetic */ zzggq zzb(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            zzgrr zzf2 = zzgrr.zzf(zzgniVar.zzc().zzh(), zzgxb.zza());
            if (zzf2.zzb() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            zzggn zzc2 = zzggq.zzc();
            zzc2.zza(zzf2.zza());
            zzc2.zzb(zzf(zzgniVar.zzc().zzg()));
            return zzc2.zzc();
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e);
        }
    }

    public static /* synthetic */ zzgnh zzc(zzggi zzggiVar, zzgeo zzgeoVar) {
        zzgrm zzb2 = zzgro.zzb();
        byte[] zzd2 = zzggiVar.zzd().zzd(zzgeoVar);
        zzb2.zza(zzgwj.zzv(zzd2, 0, zzd2.length));
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.AesGcmSivKey", ((zzgro) zzb2.zzbr()).zzaN(), zzgsj.SYMMETRIC, zzg(zzggiVar.zzb().zzd()), zzggiVar.zze());
    }

    public static /* synthetic */ zzgni zzd(zzggq zzggqVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        zzgrp zzc2 = zzgrr.zzc();
        zzc2.zza(zzggqVar.zzb());
        zza2.zzc(((zzgrr) zzc2.zzbr()).zzaN());
        zza2.zza(zzg(zzggqVar.zzd()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzggo zzf(zzgtp zzgtpVar) {
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            return zzggo.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzggo.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
            }
        }
        return zzggo.zzb;
    }

    private static zzgtp zzg(zzggo zzggoVar) {
        if (zzggo.zza.equals(zzggoVar)) {
            return zzgtp.TINK;
        }
        if (zzggo.zzb.equals(zzggoVar)) {
            return zzgtp.CRUNCHY;
        }
        if (zzggo.zzc.equals(zzggoVar)) {
            return zzgtp.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzggoVar)));
    }
}

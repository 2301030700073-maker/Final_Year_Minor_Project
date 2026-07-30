package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgji {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.AesGcmKey");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgje
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzgji.zzd((zzggf) zzgekVar);
            }
        }, zzggf.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzgjf
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzgji.zzb((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzgjg
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzgji.zzc((zzgfx) zzgdxVar, zzgeoVar);
            }
        }, zzgfx.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzgjh
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzgji.zza((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzgfx zza(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
        }
        try {
            zzgri zzd2 = zzgri.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzggc zzc2 = zzggf.zzc();
            zzc2.zzb(zzd2.zzf().zzd());
            zzc2.zza(12);
            zzc2.zzc(16);
            zzc2.zzd(zzf(zzgnhVar.zzc()));
            zzggf zze2 = zzc2.zze();
            zzgfv zza2 = zzgfx.zza();
            zza2.zzc(zze2);
            zza2.zzb(zzgvp.zzb(zzd2.zzf().zzA(), zzgeoVar));
            zza2.zza(zzgnhVar.zzf());
            return zza2.zzd();
        } catch (zzgyg unused) {
            throw new GeneralSecurityException("Parsing AesGcmKey failed");
        }
    }

    public static /* synthetic */ zzggf zzb(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            zzgrl zzf2 = zzgrl.zzf(zzgniVar.zzc().zzh(), zzgxb.zza());
            if (zzf2.zzb() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            zzggc zzc2 = zzggf.zzc();
            zzc2.zzb(zzf2.zza());
            zzc2.zza(12);
            zzc2.zzc(16);
            zzc2.zzd(zzf(zzgniVar.zzc().zzg()));
            return zzc2.zze();
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e);
        }
    }

    public static /* synthetic */ zzgnh zzc(zzgfx zzgfxVar, zzgeo zzgeoVar) {
        zzgrg zzb2 = zzgri.zzb();
        byte[] zzd2 = zzgfxVar.zzd().zzd(zzgeoVar);
        zzb2.zza(zzgwj.zzv(zzd2, 0, zzd2.length));
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.AesGcmKey", ((zzgri) zzb2.zzbr()).zzaN(), zzgsj.SYMMETRIC, zzg(zzgfxVar.zzb().zzd()), zzgfxVar.zze());
    }

    public static /* synthetic */ zzgni zzd(zzggf zzggfVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesGcmKey");
        zzgrj zzc2 = zzgrl.zzc();
        zzc2.zza(zzggfVar.zzb());
        zza2.zzc(((zzgrl) zzc2.zzbr()).zzaN());
        zza2.zza(zzg(zzggfVar.zzd()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzggd zzf(zzgtp zzgtpVar) {
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            return zzggd.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzggd.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
            }
        }
        return zzggd.zzb;
    }

    private static zzgtp zzg(zzggd zzggdVar) {
        if (zzggd.zza.equals(zzggdVar)) {
            return zzgtp.TINK;
        }
        if (zzggd.zzb.equals(zzggdVar)) {
            return zzgtp.CRUNCHY;
        }
        if (zzggd.zzc.equals(zzggdVar)) {
            return zzgtp.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzggdVar)));
    }
}

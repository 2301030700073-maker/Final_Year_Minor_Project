package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgjb {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgix
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzgjb.zzd((zzgfu) zzgekVar);
            }
        }, zzgfu.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzgiy
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzgjb.zzb((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzgiz
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzgjb.zzc((zzgfn) zzgdxVar, zzgeoVar);
            }
        }, zzgfn.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzgja
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzgjb.zza((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzgfn zza(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
        }
        try {
            zzgqz zzd2 = zzgqz.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgfr zzd3 = zzgfu.zzd();
            zzd3.zzb(zzd2.zzg().zzd());
            zzd3.zza(zzd2.zzf().zza());
            zzd3.zzc(16);
            zzd3.zzd(zzf(zzgnhVar.zzc()));
            zzgfu zze2 = zzd3.zze();
            zzgfl zza2 = zzgfn.zza();
            zza2.zzc(zze2);
            zza2.zzb(zzgvp.zzb(zzd2.zzg().zzA(), zzgeoVar));
            zza2.zza(zzgnhVar.zzf());
            return zza2.zzd();
        } catch (zzgyg unused) {
            throw new GeneralSecurityException("Parsing AesEaxcKey failed");
        }
    }

    public static /* synthetic */ zzgfu zzb(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            zzgrc zzd2 = zzgrc.zzd(zzgniVar.zzc().zzh(), zzgxb.zza());
            zzgfr zzd3 = zzgfu.zzd();
            zzd3.zzb(zzd2.zza());
            zzd3.zza(zzd2.zzf().zza());
            zzd3.zzc(16);
            zzd3.zzd(zzf(zzgniVar.zzc().zzg()));
            return zzd3.zze();
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e);
        }
    }

    public static /* synthetic */ zzgnh zzc(zzgfn zzgfnVar, zzgeo zzgeoVar) {
        zzgqx zzb2 = zzgqz.zzb();
        zzb2.zzb(zzg(zzgfnVar.zzb()));
        byte[] zzd2 = zzgfnVar.zzd().zzd(zzgeoVar);
        zzb2.zza(zzgwj.zzv(zzd2, 0, zzd2.length));
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.AesEaxKey", ((zzgqz) zzb2.zzbr()).zzaN(), zzgsj.SYMMETRIC, zzh(zzgfnVar.zzb().zze()), zzgfnVar.zze());
    }

    public static /* synthetic */ zzgni zzd(zzgfu zzgfuVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzgra zzb2 = zzgrc.zzb();
        zzb2.zzb(zzg(zzgfuVar));
        zzb2.zza(zzgfuVar.zzc());
        zza2.zzc(((zzgrc) zzb2.zzbr()).zzaN());
        zza2.zza(zzh(zzgfuVar.zze()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzgfs zzf(zzgtp zzgtpVar) {
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            return zzgfs.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgfs.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
            }
        }
        return zzgfs.zzb;
    }

    private static zzgrf zzg(zzgfu zzgfuVar) {
        zzgrd zzb2 = zzgrf.zzb();
        zzb2.zza(zzgfuVar.zzb());
        return (zzgrf) zzb2.zzbr();
    }

    private static zzgtp zzh(zzgfs zzgfsVar) {
        if (zzgfs.zza.equals(zzgfsVar)) {
            return zzgtp.TINK;
        }
        if (zzgfs.zzb.equals(zzgfsVar)) {
            return zzgtp.CRUNCHY;
        }
        if (zzgfs.zzc.equals(zzgfsVar)) {
            return zzgtp.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgfsVar)));
    }
}

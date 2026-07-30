package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgpw {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgkx zzc;
    private static final zzgkx zzd;
    private static final zzgmt zze;
    private static final zzgmp zzf;
    private static final zzglh zzg;
    private static final zzgld zzh;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.HmacKey");
        zzb = zzb2;
        zzgkv zza2 = zzgkx.zza();
        zza2.zza(zzgtp.RAW, zzgou.zzd);
        zza2.zza(zzgtp.TINK, zzgou.zza);
        zza2.zza(zzgtp.LEGACY, zzgou.zzc);
        zza2.zza(zzgtp.CRUNCHY, zzgou.zzb);
        zzc = zza2.zzb();
        zzgkv zza3 = zzgkx.zza();
        zza3.zza(zzgry.SHA1, zzgot.zza);
        zza3.zza(zzgry.SHA224, zzgot.zzb);
        zza3.zza(zzgry.SHA256, zzgot.zzc);
        zza3.zza(zzgry.SHA384, zzgot.zzd);
        zza3.zza(zzgry.SHA512, zzgot.zze);
        zzd = zza3.zzb();
        zze = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgps
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzgpw.zzb((zzgow) zzgekVar);
            }
        }, zzgow.class, zzgni.class);
        zzf = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzgpt
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzgpw.zzd((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zzg = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzgpu
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzgpw.zza((zzgom) zzgdxVar, zzgeoVar);
            }
        }, zzgom.class, zzgnh.class);
        zzh = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzgpv
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzgpw.zzc((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzgnh zza(zzgom zzgomVar, zzgeo zzgeoVar) {
        zzgrz zzb2 = zzgsb.zzb();
        zzb2.zzb(zzf(zzgomVar.zzb()));
        byte[] zzd2 = zzgomVar.zzd().zzd(zzgeoVar);
        zzb2.zza(zzgwj.zzv(zzd2, 0, zzd2.length));
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.HmacKey", ((zzgsb) zzb2.zzbr()).zzaN(), zzgsj.SYMMETRIC, (zzgtp) zzc.zzb(zzgomVar.zzb().zzg()), zzgomVar.zze());
    }

    public static /* synthetic */ zzgni zzb(zzgow zzgowVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.HmacKey");
        zzgsc zzc2 = zzgse.zzc();
        zzc2.zzb(zzf(zzgowVar));
        zzc2.zza(zzgowVar.zzc());
        zza2.zzc(((zzgse) zzc2.zzbr()).zzaN());
        zza2.zza((zzgtp) zzc.zzb(zzgowVar.zzg()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static /* synthetic */ zzgom zzc(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
        }
        try {
            zzgsb zzf2 = zzgsb.zzf(zzgnhVar.zze(), zzgxb.zza());
            if (zzf2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgos zze2 = zzgow.zze();
            zze2.zzb(zzf2.zzh().zzd());
            zze2.zzc(zzf2.zzg().zza());
            zze2.zza((zzgot) zzd.zzc(zzf2.zzg().zzb()));
            zze2.zzd((zzgou) zzc.zzc(zzgnhVar.zzc()));
            zzgow zze3 = zze2.zze();
            zzgok zza2 = zzgom.zza();
            zza2.zzc(zze3);
            zza2.zzb(zzgvp.zzb(zzf2.zzh().zzA(), zzgeoVar));
            zza2.zza(zzgnhVar.zzf());
            return zza2.zzd();
        } catch (zzgyg | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing HmacKey failed");
        }
    }

    public static /* synthetic */ zzgow zzd(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            zzgse zzg2 = zzgse.zzg(zzgniVar.zzc().zzh(), zzgxb.zza());
            if (zzg2.zzb() != 0) {
                throw new GeneralSecurityException(V1.m2494case("Parsing HmacParameters failed: unknown Version ", zzg2.zzb()));
            }
            zzgos zze2 = zzgow.zze();
            zze2.zzb(zzg2.zza());
            zze2.zzc(zzg2.zzh().zza());
            zze2.zza((zzgot) zzd.zzc(zzg2.zzh().zzb()));
            zze2.zzd((zzgou) zzc.zzc(zzgniVar.zzc().zzg()));
            return zze2.zze();
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing HmacParameters failed: ", e);
        }
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zze);
        zzgmkVar.zzh(zzf);
        zzgmkVar.zzg(zzg);
        zzgmkVar.zzf(zzh);
    }

    private static zzgsh zzf(zzgow zzgowVar) {
        zzgsf zzc2 = zzgsh.zzc();
        zzc2.zzb(zzgowVar.zzb());
        zzc2.zza((zzgry) zzd.zzb(zzgowVar.zzf()));
        return (zzgsh) zzc2.zzbr();
    }
}

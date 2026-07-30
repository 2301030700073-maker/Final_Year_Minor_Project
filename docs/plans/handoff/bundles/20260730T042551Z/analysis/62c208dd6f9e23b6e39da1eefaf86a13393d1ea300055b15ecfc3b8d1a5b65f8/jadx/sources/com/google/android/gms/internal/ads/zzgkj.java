package com.google.android.gms.internal.ads;

import defpackage.V1;
import j$.util.Objects;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgkj {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgkf
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzgkj.zzd((zzgik) zzgekVar);
            }
        }, zzgik.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzgkg
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzgkj.zzb((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzgkh
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzgkj.zzc((zzgif) zzgdxVar, zzgeoVar);
            }
        }, zzgif.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzgki
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzgkj.zza((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzgif zza(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseKey");
        }
        try {
            zzgtv zzd2 = zzgtv.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (zzd2.zzg().zzd() == 32) {
                return zzgif.zza(zzgik.zzd(zzf(zzgnhVar.zzc()), zzd2.zzf().zza()), zzgvp.zzb(zzd2.zzg().zzA(), zzgeoVar), zzgnhVar.zzf());
            }
            throw new GeneralSecurityException("Only 32 byte key size is accepted");
        } catch (zzgyg unused) {
            throw new GeneralSecurityException("Parsing XAesGcmKey failed");
        }
    }

    public static /* synthetic */ zzgik zzb(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            zzgty zzd2 = zzgty.zzd(zzgniVar.zzc().zzh(), zzgxb.zza());
            if (zzd2.zza() == 0) {
                return zzgik.zzd(zzf(zzgniVar.zzc().zzg()), zzd2.zzf().zza());
            }
            throw new GeneralSecurityException("Only version 0 parameters are accepted");
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing XAesGcmParameters failed: ", e);
        }
    }

    public static /* synthetic */ zzgnh zzc(zzgif zzgifVar, zzgeo zzgeoVar) {
        zzgtt zzb2 = zzgtv.zzb();
        byte[] zzd2 = zzgifVar.zzd().zzd(zzgeoVar);
        zzb2.zza(zzgwj.zzv(zzd2, 0, zzd2.length));
        zzgtz zzb3 = zzgub.zzb();
        zzb3.zza(zzgifVar.zzb().zzb());
        zzb2.zzb((zzgub) zzb3.zzbr());
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.XAesGcmKey", ((zzgtv) zzb2.zzbr()).zzaN(), zzgsj.SYMMETRIC, zzg(zzgifVar.zzb().zzc()), zzgifVar.zze());
    }

    public static /* synthetic */ zzgni zzd(zzgik zzgikVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        zzgtw zzb2 = zzgty.zzb();
        zzgtz zzb3 = zzgub.zzb();
        zzb3.zza(zzgikVar.zzb());
        zzb2.zza((zzgub) zzb3.zzbr());
        zza2.zzc(((zzgty) zzb2.zzbr()).zzaN());
        zza2.zza(zzg(zzgikVar.zzc()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzgij zzf(zzgtp zzgtpVar) {
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            return zzgij.zza;
        }
        if (ordinal == 3) {
            return zzgij.zzb;
        }
        throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
    }

    private static zzgtp zzg(zzgij zzgijVar) {
        if (Objects.equals(zzgijVar, zzgij.zza)) {
            return zzgtp.TINK;
        }
        if (Objects.equals(zzgijVar, zzgij.zzb)) {
            return zzgtp.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzgijVar.toString()));
    }
}

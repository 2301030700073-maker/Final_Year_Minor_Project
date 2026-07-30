package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgkp {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgkl
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzgkp.zzd((zzgir) zzgekVar);
            }
        }, zzgir.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzgkm
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzgkp.zzb((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzgkn
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzgkp.zzc((zzgil) zzgdxVar, zzgeoVar);
            }
        }, zzgil.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzgko
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzgkp.zza((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzgil zza(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey");
        }
        try {
            zzgue zzd2 = zzgue.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() == 0) {
                return zzgil.zza(zzf(zzgnhVar.zzc()), zzgvp.zzb(zzd2.zzf().zzA(), zzgeoVar), zzgnhVar.zzf());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzgyg unused) {
            throw new GeneralSecurityException("Parsing XChaCha20Poly1305Key failed");
        }
    }

    public static /* synthetic */ zzgir zzb(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            if (zzguh.zzd(zzgniVar.zzc().zzh(), zzgxb.zza()).zza() == 0) {
                return zzgir.zzc(zzf(zzgniVar.zzc().zzg()));
            }
            throw new GeneralSecurityException("Only version 0 parameters are accepted");
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing XChaCha20Poly1305Parameters failed: ", e);
        }
    }

    public static /* synthetic */ zzgnh zzc(zzgil zzgilVar, zzgeo zzgeoVar) {
        zzguc zzb2 = zzgue.zzb();
        byte[] zzd2 = zzgilVar.zzd().zzd(zzgeoVar);
        zzb2.zza(zzgwj.zzv(zzd2, 0, zzd2.length));
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", ((zzgue) zzb2.zzbr()).zzaN(), zzgsj.SYMMETRIC, zzg(zzgilVar.zzb().zzb()), zzgilVar.zze());
    }

    public static /* synthetic */ zzgni zzd(zzgir zzgirVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        zza2.zzc(zzguh.zzc().zzaN());
        zza2.zza(zzg(zzgirVar.zzb()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzgiq zzf(zzgtp zzgtpVar) {
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            return zzgiq.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgiq.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
            }
        }
        return zzgiq.zzb;
    }

    private static zzgtp zzg(zzgiq zzgiqVar) {
        if (zzgiq.zza.equals(zzgiqVar)) {
            return zzgtp.TINK;
        }
        if (zzgiq.zzb.equals(zzgiqVar)) {
            return zzgtp.CRUNCHY;
        }
        if (zzgiq.zzc.equals(zzgiqVar)) {
            return zzgtp.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzgiqVar.toString()));
    }
}

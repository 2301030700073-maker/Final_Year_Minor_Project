package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgju {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvo zzb;
    private static final zzgmt zzc;
    private static final zzgmp zzd;
    private static final zzglh zze;
    private static final zzgld zzf;

    static {
        zzgvo zzb2 = zzgnu.zzb("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        zzb = zzb2;
        zzc = zzgmt.zzb(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgjq
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final zzgnm zza(zzgek zzgekVar) {
                return zzgju.zzd((zzggw) zzgekVar);
            }
        }, zzggw.class, zzgni.class);
        zzd = zzgmp.zzb(new zzgmn() { // from class: com.google.android.gms.internal.ads.zzgjr
            @Override // com.google.android.gms.internal.ads.zzgmn
            public final zzgek zza(zzgnm zzgnmVar) {
                return zzgju.zzb((zzgni) zzgnmVar);
            }
        }, zzb2, zzgni.class);
        zze = zzglh.zzb(new zzglf() { // from class: com.google.android.gms.internal.ads.zzgjs
            @Override // com.google.android.gms.internal.ads.zzglf
            public final zzgnm zza(zzgdx zzgdxVar, zzgeo zzgeoVar) {
                return zzgju.zzc((zzggr) zzgdxVar, zzgeoVar);
            }
        }, zzggr.class, zzgnh.class);
        zzf = zzgld.zzb(new zzglb() { // from class: com.google.android.gms.internal.ads.zzgjt
            @Override // com.google.android.gms.internal.ads.zzglb
            public final zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar) {
                return zzgju.zza((zzgnh) zzgnmVar, zzgeoVar);
            }
        }, zzb2, zzgnh.class);
    }

    public static /* synthetic */ zzggr zza(zzgnh zzgnhVar, zzgeo zzgeoVar) {
        if (!zzgnhVar.zzg().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey");
        }
        try {
            zzgru zzd2 = zzgru.zzd(zzgnhVar.zze(), zzgxb.zza());
            if (zzd2.zza() == 0) {
                return zzggr.zza(zzf(zzgnhVar.zzc()), zzgvp.zzb(zzd2.zzf().zzA(), zzgeoVar), zzgnhVar.zzf());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzgyg unused) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Key failed");
        }
    }

    public static /* synthetic */ zzggw zzb(zzgni zzgniVar) {
        if (!zzgniVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(zzgniVar.zzc().zzi())));
        }
        try {
            zzgrx.zzc(zzgniVar.zzc().zzh(), zzgxb.zza());
            return zzggw.zzc(zzf(zzgniVar.zzc().zzg()));
        } catch (zzgyg e) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Parameters failed: ", e);
        }
    }

    public static /* synthetic */ zzgnh zzc(zzggr zzggrVar, zzgeo zzgeoVar) {
        zzgrs zzb2 = zzgru.zzb();
        byte[] zzd2 = zzggrVar.zzd().zzd(zzgeoVar);
        zzb2.zza(zzgwj.zzv(zzd2, 0, zzd2.length));
        return zzgnh.zza("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", ((zzgru) zzb2.zzbr()).zzaN(), zzgsj.SYMMETRIC, zzg(zzggrVar.zzb().zzb()), zzggrVar.zze());
    }

    public static /* synthetic */ zzgni zzd(zzggw zzggwVar) {
        zzgsn zza2 = zzgsp.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        zza2.zzc(zzgrx.zzb().zzaN());
        zza2.zza(zzg(zzggwVar.zzb()));
        return zzgni.zzb((zzgsp) zza2.zzbr());
    }

    public static void zze(zzgmk zzgmkVar) {
        zzgmkVar.zzi(zzc);
        zzgmkVar.zzh(zzd);
        zzgmkVar.zzg(zze);
        zzgmkVar.zzf(zzf);
    }

    private static zzggv zzf(zzgtp zzgtpVar) {
        int ordinal = zzgtpVar.ordinal();
        if (ordinal == 1) {
            return zzggv.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzggv.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(V1.m2494case("Unable to parse OutputPrefixType: ", zzgtpVar.zza()));
            }
        }
        return zzggv.zzb;
    }

    private static zzgtp zzg(zzggv zzggvVar) {
        if (zzggv.zza.equals(zzggvVar)) {
            return zzgtp.TINK;
        }
        if (zzggv.zzb.equals(zzggvVar)) {
            return zzgtp.CRUNCHY;
        }
        if (zzggv.zzc.equals(zzggvVar)) {
            return zzgtp.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzggvVar.toString()));
    }
}

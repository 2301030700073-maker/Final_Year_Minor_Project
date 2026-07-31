package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhpy {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhsz zzc;
    private static final zzhfi zzd;
    private static final zzhff zze;
    private static final zzhec zzf;
    private static final zzhdz zzg;
    private static final zzhec zzh;
    private static final zzhdz zzi;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey");
        zzb = zza2;
        zzhsz zza3 = zzhgi.zza("type.googleapis.com/google.crypto.tink.EcdsaPublicKey");
        zzc = zza3;
        zzd = zzhfi.zzd(zzhpx.zza, zzhnb.class, zzhfx.class);
        zze = zzhff.zzd(zzhps.zza, zza2, zzhfx.class);
        zzf = zzhec.zzd(zzhpt.zza, zzhnf.class, zzhfw.class);
        zzg = zzhdz.zzd(zzhpu.zza, zza3, zzhfw.class);
        zzh = zzhec.zzd(zzhpv.zza, zzhnd.class, zzhfw.class);
        zzi = zzhdz.zzd(zzhpw.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzd);
        zzhfbVar.zze(zze);
        zzhfbVar.zzb(zzf);
        zzhfbVar.zzc(zzg);
        zzhfbVar.zzb(zzh);
        zzhfbVar.zzc(zzi);
    }

    static /* synthetic */ zzhfx zzb(zzhnb zzhnbVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey");
        zzhjy zzc2 = zzhjz.zzc();
        zzc2.zza(zzl(zzhnbVar));
        zze2.zzb(((zzhjz) zzc2.zzbu()).zzaM());
        zze2.zzc(zzh(zzhnbVar.zzf()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzhnb zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to EcdsaProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhjz zzb2 = zzhjz.zzb(zzhfxVar.zzc().zzb(), zzhvy.zza());
            zzhmw zzb3 = zzhnb.zzb();
            zzb3.zzc(zzi(zzb2.zza().zza()));
            zzb3.zza(zzo(zzb2.zza().zzh()));
            zzb3.zzb(zzn(zzb2.zza().zzg()));
            zzb3.zzd(zzj(zzhfxVar.zzc().zzc()));
            return zzb3.zze();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing EcdsaParameters failed: ", e);
        }
    }

    static /* synthetic */ zzhnf zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.EcdsaPublicKey")) {
            String zzg2 = zzhfwVar.zzg();
            String.valueOf(zzg2);
            throw new IllegalArgumentException("Wrong type URL in call to EcdsaProtoSerialization.parsePublicKey: ".concat(String.valueOf(zzg2)));
        }
        try {
            zzhkf zze2 = zzhkf.zze(zzhfwVar.zzb(), zzhvy.zza());
            if (zze2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzhmw zzb2 = zzhnb.zzb();
            zzb2.zzc(zzi(zze2.zzb().zza()));
            zzb2.zza(zzo(zze2.zzb().zzh()));
            zzb2.zzb(zzn(zze2.zzb().zzg()));
            zzb2.zzd(zzj(zzhfwVar.zzd()));
            zzhnb zze3 = zzb2.zze();
            zzhne zzc2 = zzhnf.zzc();
            zzc2.zza(zze3);
            zzc2.zzb(new ECPoint(new BigInteger(1, zze2.zzc().zzv()), new BigInteger(1, zze2.zzd().zzv())));
            zzc2.zzc(zzhfwVar.zze());
            return zzc2.zzd();
        } catch (zzhxd | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing EcdsaPublicKey failed");
        }
    }

    static /* synthetic */ zzhfw zzf(zzhnd zzhndVar, zzgwn zzgwnVar) {
        int zzk = zzk(zzhndVar.zzd().zzd());
        zzhkc zze2 = zzhkd.zze();
        zze2.zza(zzm(zzhndVar.zze()));
        byte[] zzb2 = zzhdb.zzb(zzhndVar.zzf().zzb(zzgwnVar), zzk);
        zzhvi zzhviVar = zzhvi.zzb;
        zze2.zzb(zzhvi.zzr(zzb2, 0, zzb2.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey", ((zzhkd) zze2.zzbu()).zzaM(), zzhkw.ASYMMETRIC_PRIVATE, zzh(zzhndVar.zzd().zzf()), zzhndVar.zze().zzb());
    }

    static /* synthetic */ zzhnd zzg(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey")) {
            String zzg2 = zzhfwVar.zzg();
            String.valueOf(zzg2);
            throw new IllegalArgumentException("Wrong type URL in call to EcdsaProtoSerialization.parsePrivateKey: ".concat(String.valueOf(zzg2)));
        }
        try {
            zzhkd zzd2 = zzhkd.zzd(zzhfwVar.zzb(), zzhvy.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzhkf zzb2 = zzd2.zzb();
            if (zzb2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzhmw zzb3 = zzhnb.zzb();
            zzb3.zzc(zzi(zzb2.zzb().zza()));
            zzb3.zza(zzo(zzb2.zzb().zzh()));
            zzb3.zzb(zzn(zzb2.zzb().zzg()));
            zzb3.zzd(zzj(zzhfwVar.zzd()));
            zzhnb zze2 = zzb3.zze();
            zzhne zzc2 = zzhnf.zzc();
            zzc2.zza(zze2);
            zzc2.zzb(new ECPoint(new BigInteger(1, zzb2.zzc().zzv()), new BigInteger(1, zzb2.zzd().zzv())));
            zzc2.zzc(zzhfwVar.zze());
            zzhnf zzd3 = zzc2.zzd();
            zzhnc zzc3 = zzhnd.zzc();
            zzc3.zza(zzd3);
            zzc3.zzb(zzhta.zza(new BigInteger(1, zzd2.zzc().zzv()), zzgwnVar));
            return zzc3.zzc();
        } catch (zzhxd | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing EcdsaPrivateKey failed");
        }
    }

    private static zzhlt zzh(zzhna zzhnaVar) throws GeneralSecurityException {
        if (zzhna.zza.equals(zzhnaVar)) {
            return zzhlt.TINK;
        }
        if (zzhna.zzb.equals(zzhnaVar)) {
            return zzhlt.CRUNCHY;
        }
        if (zzhna.zzd.equals(zzhnaVar)) {
            return zzhlt.RAW;
        }
        if (zzhna.zzc.equals(zzhnaVar)) {
            return zzhlt.LEGACY;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzhnaVar.toString()));
    }

    private static zzhmy zzi(zzhko zzhkoVar) throws GeneralSecurityException {
        int ordinal = zzhkoVar.ordinal();
        if (ordinal == 2) {
            return zzhmy.zzb;
        }
        if (ordinal == 3) {
            return zzhmy.zza;
        }
        if (ordinal == 4) {
            return zzhmy.zzc;
        }
        int zza2 = zzhkoVar.zza();
        StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 26);
        sb.append("Unable to parse HashType: ");
        sb.append(zza2);
        throw new GeneralSecurityException(sb.toString());
    }

    private static zzhna zzj(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzhna.zza;
        }
        if (ordinal == 2) {
            return zzhna.zzc;
        }
        if (ordinal == 3) {
            return zzhna.zzd;
        }
        if (ordinal == 4) {
            return zzhna.zzb;
        }
        int zza2 = zzhltVar.zza();
        StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
        sb.append("Unable to parse OutputPrefixType: ");
        sb.append(zza2);
        throw new GeneralSecurityException(sb.toString());
    }

    private static int zzk(zzhmx zzhmxVar) throws GeneralSecurityException {
        if (zzhmx.zza.equals(zzhmxVar)) {
            return 33;
        }
        if (zzhmx.zzb.equals(zzhmxVar)) {
            return 49;
        }
        if (zzhmx.zzc.equals(zzhmxVar)) {
            return 67;
        }
        throw new GeneralSecurityException("Unable to serialize CurveType ".concat(zzhmxVar.toString()));
    }

    private static zzhkb zzl(zzhnb zzhnbVar) throws GeneralSecurityException {
        zzhko zzhkoVar;
        int i;
        zzhka zzb2 = zzhkb.zzb();
        zzhmy zze2 = zzhnbVar.zze();
        if (zzhmy.zza.equals(zze2)) {
            zzhkoVar = zzhko.SHA256;
        } else if (zzhmy.zzb.equals(zze2)) {
            zzhkoVar = zzhko.SHA384;
        } else {
            if (!zzhmy.zzc.equals(zze2)) {
                throw new GeneralSecurityException("Unable to serialize HashType ".concat(zze2.toString()));
            }
            zzhkoVar = zzhko.SHA512;
        }
        zzb2.zza(zzhkoVar);
        zzhmx zzd2 = zzhnbVar.zzd();
        int i2 = 4;
        if (zzhmx.zza.equals(zzd2)) {
            i = 4;
        } else if (zzhmx.zzb.equals(zzd2)) {
            i = 5;
        } else {
            if (!zzhmx.zzc.equals(zzd2)) {
                throw new GeneralSecurityException("Unable to serialize CurveType ".concat(zzd2.toString()));
            }
            i = 6;
        }
        zzb2.zzb(i);
        zzhmz zzc2 = zzhnbVar.zzc();
        if (zzhmz.zza.equals(zzc2)) {
            i2 = 3;
        } else if (!zzhmz.zzb.equals(zzc2)) {
            throw new GeneralSecurityException("Unable to serialize SignatureEncoding ".concat(zzc2.toString()));
        }
        zzb2.zzc(i2);
        return (zzhkb) zzb2.zzbu();
    }

    private static zzhkf zzm(zzhnf zzhnfVar) throws GeneralSecurityException {
        int zzk = zzk(zzhnfVar.zzf().zzd());
        ECPoint zzd2 = zzhnfVar.zzd();
        zzhke zzg2 = zzhkf.zzg();
        zzg2.zza(zzl(zzhnfVar.zzf()));
        byte[] zzb2 = zzhdb.zzb(zzd2.getAffineX(), zzk);
        zzhvi zzhviVar = zzhvi.zzb;
        zzg2.zzb(zzhvi.zzr(zzb2, 0, zzb2.length));
        byte[] zzb3 = zzhdb.zzb(zzd2.getAffineY(), zzk);
        zzg2.zzc(zzhvi.zzr(zzb3, 0, zzb3.length));
        return (zzhkf) zzg2.zzbu();
    }

    private static zzhmx zzn(int i) throws GeneralSecurityException {
        int i2 = i - 2;
        if (i2 == 2) {
            return zzhmx.zza;
        }
        if (i2 == 3) {
            return zzhmx.zzb;
        }
        if (i2 == 4) {
            return zzhmx.zzc;
        }
        int zza2 = zzhkn.zza(i);
        StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 35);
        sb.append("Unable to parse EllipticCurveType: ");
        sb.append(zza2);
        throw new GeneralSecurityException(sb.toString());
    }

    private static zzhmz zzo(int i) throws GeneralSecurityException {
        int i2 = i - 2;
        if (i2 == 1) {
            return zzhmz.zza;
        }
        if (i2 == 2) {
            return zzhmz.zzb;
        }
        int zza2 = zzhkg.zza(i);
        StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 40);
        sb.append("Unable to parse EcdsaSignatureEncoding: ");
        sb.append(zza2);
        throw new GeneralSecurityException(sb.toString());
    }
}

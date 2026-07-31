package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhqs {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhsz zzc;
    private static final zzhfi zzd;
    private static final zzhff zze;
    private static final zzhec zzf;
    private static final zzhdz zzg;
    private static final zzhec zzh;
    private static final zzhdz zzi;
    private static final zzhdp zzj;
    private static final zzhdp zzk;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey");
        zzb = zza2;
        zzhsz zza3 = zzhgi.zza("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey");
        zzc = zza3;
        zzd = zzhfi.zzd(zzhqr.zza, zzhot.class, zzhfx.class);
        zze = zzhff.zzd(zzhqm.zza, zza2, zzhfx.class);
        zzf = zzhec.zzd(zzhqn.zza, zzhox.class, zzhfw.class);
        zzg = zzhdz.zzd(zzhqo.zza, zza3, zzhfw.class);
        zzh = zzhec.zzd(zzhqp.zza, zzhov.class, zzhfw.class);
        zzi = zzhdz.zzd(zzhqq.zza, zza2, zzhfw.class);
        zzhdo zza4 = zzhdp.zza();
        zza4.zza(zzhlt.RAW, zzhos.zzd);
        zza4.zza(zzhlt.TINK, zzhos.zza);
        zza4.zza(zzhlt.CRUNCHY, zzhos.zzb);
        zza4.zza(zzhlt.LEGACY, zzhos.zzc);
        zzj = zza4.zzb();
        zzhdo zza5 = zzhdp.zza();
        zza5.zza(zzhko.SHA256, zzhor.zza);
        zza5.zza(zzhko.SHA384, zzhor.zzb);
        zza5.zza(zzhko.SHA512, zzhor.zzc);
        zzk = zza5.zzb();
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzd);
        zzhfbVar.zze(zze);
        zzhfbVar.zzb(zzf);
        zzhfbVar.zzc(zzg);
        zzhfbVar.zzb(zzh);
        zzhfbVar.zzc(zzi);
    }

    static /* synthetic */ zzhfx zzb(zzhot zzhotVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey");
        zzhlw zze3 = zzhlx.zze();
        zze3.zza(zzh(zzhotVar));
        zze3.zzb(zzhotVar.zzc());
        byte[] zza2 = zzhdb.zza(zzhotVar.zzd());
        zzhvi zzhviVar = zzhvi.zzb;
        zze3.zzc(zzhvi.zzr(zza2, 0, zza2.length));
        zze2.zzb(((zzhlx) zze3.zzbu()).zzaM());
        zze2.zzc((zzhlt) zzj.zzb(zzhotVar.zze()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzhot zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPkcs1ProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhlx zzd2 = zzhlx.zzd(zzhfxVar.zzc().zzb(), zzhvy.zza());
            zzhoq zzb2 = zzhot.zzb();
            zzb2.zzd((zzhor) zzk.zzc(zzd2.zza().zza()));
            zzb2.zzb(new BigInteger(1, zzd2.zzc().zzv()));
            zzb2.zza(zzd2.zzb());
            zzb2.zzc((zzhos) zzj.zzc(zzhfxVar.zzc().zzc()));
            return zzb2.zze();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing RsaSsaPkcs1Parameters failed: ", e);
        }
    }

    static /* synthetic */ zzhox zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey")) {
            String zzg2 = zzhfwVar.zzg();
            String.valueOf(zzg2);
            throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPkcs1ProtoSerialization.parsePublicKey: ".concat(String.valueOf(zzg2)));
        }
        try {
            zzhmd zze2 = zzhmd.zze(zzhfwVar.zzb(), zzhvy.zza());
            if (zze2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            BigInteger bigInteger = new BigInteger(1, zze2.zzc().zzv());
            int bitLength = bigInteger.bitLength();
            zzhoq zzb2 = zzhot.zzb();
            zzb2.zzd((zzhor) zzk.zzc(zze2.zzb().zza()));
            zzb2.zzb(new BigInteger(1, zze2.zzd().zzv()));
            zzb2.zza(bitLength);
            zzb2.zzc((zzhos) zzj.zzc(zzhfwVar.zzd()));
            zzhot zze3 = zzb2.zze();
            zzhow zzc2 = zzhox.zzc();
            zzc2.zza(zze3);
            zzc2.zzb(bigInteger);
            zzc2.zzc(zzhfwVar.zze());
            return zzc2.zzd();
        } catch (zzhxd | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing RsaSsaPkcs1PublicKey failed");
        }
    }

    static /* synthetic */ zzhfw zzf(zzhov zzhovVar, zzgwn zzgwnVar) {
        zzhma zzk2 = zzhmb.zzk();
        zzk2.zza(0);
        zzk2.zzb(zzi(zzhovVar.zze()));
        byte[] zza2 = zzhdb.zza(zzhovVar.zzh().zzb(zzgwnVar));
        zzhvi zzhviVar = zzhvi.zzb;
        zzk2.zzc(zzhvi.zzr(zza2, 0, zza2.length));
        byte[] zza3 = zzhdb.zza(zzhovVar.zzf().zzb(zzgwnVar));
        zzk2.zzd(zzhvi.zzr(zza3, 0, zza3.length));
        byte[] zza4 = zzhdb.zza(zzhovVar.zzg().zzb(zzgwnVar));
        zzk2.zze(zzhvi.zzr(zza4, 0, zza4.length));
        byte[] zza5 = zzhdb.zza(zzhovVar.zzi().zzb(zzgwnVar));
        zzk2.zzf(zzhvi.zzr(zza5, 0, zza5.length));
        byte[] zza6 = zzhdb.zza(zzhovVar.zzj().zzb(zzgwnVar));
        zzk2.zzg(zzhvi.zzr(zza6, 0, zza6.length));
        byte[] zza7 = zzhdb.zza(zzhovVar.zzk().zzb(zzgwnVar));
        zzk2.zzh(zzhvi.zzr(zza7, 0, zza7.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey", ((zzhmb) zzk2.zzbu()).zzaM(), zzhkw.ASYMMETRIC_PRIVATE, (zzhlt) zzj.zzb(zzhovVar.zzd().zze()), zzhovVar.zze().zzb());
    }

    static /* synthetic */ zzhov zzg(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey")) {
            String zzg2 = zzhfwVar.zzg();
            String.valueOf(zzg2);
            throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPkcs1ProtoSerialization.parsePrivateKey: ".concat(String.valueOf(zzg2)));
        }
        try {
            zzhmb zzj2 = zzhmb.zzj(zzhfwVar.zzb(), zzhvy.zza());
            if (zzj2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzhmd zzb2 = zzj2.zzb();
            if (zzb2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            BigInteger bigInteger = new BigInteger(1, zzb2.zzc().zzv());
            int bitLength = bigInteger.bitLength();
            BigInteger bigInteger2 = new BigInteger(1, zzb2.zzd().zzv());
            zzhoq zzb3 = zzhot.zzb();
            zzb3.zzd((zzhor) zzk.zzc(zzb2.zzb().zza()));
            zzb3.zzb(bigInteger2);
            zzb3.zza(bitLength);
            zzb3.zzc((zzhos) zzj.zzc(zzhfwVar.zzd()));
            zzhot zze2 = zzb3.zze();
            zzhow zzc2 = zzhox.zzc();
            zzc2.zza(zze2);
            zzc2.zzb(bigInteger);
            zzc2.zzc(zzhfwVar.zze());
            zzhox zzd2 = zzc2.zzd();
            zzhou zzc3 = zzhov.zzc();
            zzc3.zza(zzd2);
            zzc3.zzb(zzj(zzj2.zzd(), zzgwnVar), zzj(zzj2.zze(), zzgwnVar));
            zzc3.zzc(zzj(zzj2.zzc(), zzgwnVar));
            zzc3.zzd(zzj(zzj2.zzg(), zzgwnVar), zzj(zzj2.zzh(), zzgwnVar));
            zzc3.zze(zzj(zzj2.zzi(), zzgwnVar));
            return zzc3.zzf();
        } catch (zzhxd | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing RsaSsaPkcs1PrivateKey failed");
        }
    }

    private static zzhlz zzh(zzhot zzhotVar) throws GeneralSecurityException {
        zzhly zzb2 = zzhlz.zzb();
        zzb2.zza((zzhko) zzk.zzb(zzhotVar.zzf()));
        return (zzhlz) zzb2.zzbu();
    }

    private static zzhmd zzi(zzhox zzhoxVar) throws GeneralSecurityException {
        zzhmc zzg2 = zzhmd.zzg();
        zzg2.zza(zzh(zzhoxVar.zzf()));
        byte[] zza2 = zzhdb.zza(zzhoxVar.zzd());
        zzhvi zzhviVar = zzhvi.zzb;
        zzg2.zzb(zzhvi.zzr(zza2, 0, zza2.length));
        byte[] zza3 = zzhdb.zza(zzhoxVar.zzf().zzd());
        zzg2.zzc(zzhvi.zzr(zza3, 0, zza3.length));
        return (zzhmd) zzg2.zzbu();
    }

    private static zzhta zzj(zzhvi zzhviVar, zzgwn zzgwnVar) {
        return zzhta.zza(new BigInteger(1, zzhviVar.zzv()), zzgwnVar);
    }
}

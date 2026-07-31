package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhrb {
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
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey");
        zzb = zza2;
        zzhsz zza3 = zzhgi.zza("type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey");
        zzc = zza3;
        zzd = zzhfi.zzd(zzhra.zza, zzhpf.class, zzhfx.class);
        zze = zzhff.zzd(zzhqv.zza, zza2, zzhfx.class);
        zzf = zzhec.zzd(zzhqw.zza, zzhpj.class, zzhfw.class);
        zzg = zzhdz.zzd(zzhqx.zza, zza3, zzhfw.class);
        zzh = zzhec.zzd(zzhqy.zza, zzhph.class, zzhfw.class);
        zzi = zzhdz.zzd(zzhqz.zza, zza2, zzhfw.class);
        zzhdo zza4 = zzhdp.zza();
        zza4.zza(zzhlt.RAW, zzhpe.zzd);
        zza4.zza(zzhlt.TINK, zzhpe.zza);
        zza4.zza(zzhlt.CRUNCHY, zzhpe.zzb);
        zza4.zza(zzhlt.LEGACY, zzhpe.zzc);
        zzj = zza4.zzb();
        zzhdo zza5 = zzhdp.zza();
        zza5.zza(zzhko.SHA256, zzhpd.zza);
        zza5.zza(zzhko.SHA384, zzhpd.zzb);
        zza5.zza(zzhko.SHA512, zzhpd.zzc);
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

    static /* synthetic */ zzhfx zzb(zzhpf zzhpfVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey");
        zzhme zze3 = zzhmf.zze();
        zze3.zza(zzh(zzhpfVar));
        zze3.zzb(zzhpfVar.zzc());
        byte[] zza2 = zzhdb.zza(zzhpfVar.zzd());
        zzhvi zzhviVar = zzhvi.zzb;
        zze3.zzc(zzhvi.zzr(zza2, 0, zza2.length));
        zze2.zzb(((zzhmf) zze3.zzbu()).zzaM());
        zze2.zzc((zzhlt) zzj.zzb(zzhpfVar.zze()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzhpf zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPssProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhmf zzd2 = zzhmf.zzd(zzhfxVar.zzc().zzb(), zzhvy.zza());
            zzhpc zzb2 = zzhpf.zzb();
            zzhdp zzhdpVar = zzk;
            zzb2.zzd((zzhpd) zzhdpVar.zzc(zzd2.zza().zza()));
            zzb2.zze((zzhpd) zzhdpVar.zzc(zzd2.zza().zzb()));
            zzb2.zzb(new BigInteger(1, zzd2.zzc().zzv()));
            zzb2.zza(zzd2.zzb());
            zzb2.zzf(zzd2.zza().zzc());
            zzb2.zzc((zzhpe) zzj.zzc(zzhfxVar.zzc().zzc()));
            return zzb2.zzg();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing RsaSsaPssParameters failed: ", e);
        }
    }

    static /* synthetic */ zzhpj zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey")) {
            String zzg2 = zzhfwVar.zzg();
            String.valueOf(zzg2);
            throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPssProtoSerialization.parsePublicKey: ".concat(String.valueOf(zzg2)));
        }
        try {
            zzhml zze2 = zzhml.zze(zzhfwVar.zzb(), zzhvy.zza());
            if (zze2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            BigInteger bigInteger = new BigInteger(1, zze2.zzc().zzv());
            int bitLength = bigInteger.bitLength();
            zzhpc zzb2 = zzhpf.zzb();
            zzhdp zzhdpVar = zzk;
            zzb2.zzd((zzhpd) zzhdpVar.zzc(zze2.zzb().zza()));
            zzb2.zze((zzhpd) zzhdpVar.zzc(zze2.zzb().zzb()));
            zzb2.zzb(new BigInteger(1, zze2.zzd().zzv()));
            zzb2.zza(bitLength);
            zzb2.zzf(zze2.zzb().zzc());
            zzb2.zzc((zzhpe) zzj.zzc(zzhfwVar.zzd()));
            zzhpf zzg3 = zzb2.zzg();
            zzhpi zzc2 = zzhpj.zzc();
            zzc2.zza(zzg3);
            zzc2.zzb(bigInteger);
            zzc2.zzc(zzhfwVar.zze());
            return zzc2.zzd();
        } catch (zzhxd | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing RsaSsaPssPublicKey failed");
        }
    }

    static /* synthetic */ zzhfw zzf(zzhph zzhphVar, zzgwn zzgwnVar) {
        zzhmi zzk2 = zzhmj.zzk();
        zzk2.zza(0);
        zzk2.zzb(zzi(zzhphVar.zze()));
        byte[] zza2 = zzhdb.zza(zzhphVar.zzh().zzb(zzgwnVar));
        zzhvi zzhviVar = zzhvi.zzb;
        zzk2.zzc(zzhvi.zzr(zza2, 0, zza2.length));
        byte[] zza3 = zzhdb.zza(zzhphVar.zzf().zzb(zzgwnVar));
        zzk2.zzd(zzhvi.zzr(zza3, 0, zza3.length));
        byte[] zza4 = zzhdb.zza(zzhphVar.zzg().zzb(zzgwnVar));
        zzk2.zze(zzhvi.zzr(zza4, 0, zza4.length));
        byte[] zza5 = zzhdb.zza(zzhphVar.zzi().zzb(zzgwnVar));
        zzk2.zzf(zzhvi.zzr(zza5, 0, zza5.length));
        byte[] zza6 = zzhdb.zza(zzhphVar.zzj().zzb(zzgwnVar));
        zzk2.zzg(zzhvi.zzr(zza6, 0, zza6.length));
        byte[] zza7 = zzhdb.zza(zzhphVar.zzk().zzb(zzgwnVar));
        zzk2.zzh(zzhvi.zzr(zza7, 0, zza7.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey", ((zzhmj) zzk2.zzbu()).zzaM(), zzhkw.ASYMMETRIC_PRIVATE, (zzhlt) zzj.zzb(zzhphVar.zzd().zze()), zzhphVar.zze().zzb());
    }

    static /* synthetic */ zzhph zzg(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey")) {
            String zzg2 = zzhfwVar.zzg();
            String.valueOf(zzg2);
            throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPssProtoSerialization.parsePrivateKey: ".concat(String.valueOf(zzg2)));
        }
        try {
            zzhmj zzj2 = zzhmj.zzj(zzhfwVar.zzb(), zzhvy.zza());
            if (zzj2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzhml zzb2 = zzj2.zzb();
            if (zzb2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            BigInteger bigInteger = new BigInteger(1, zzb2.zzc().zzv());
            int bitLength = bigInteger.bitLength();
            BigInteger bigInteger2 = new BigInteger(1, zzb2.zzd().zzv());
            zzhpc zzb3 = zzhpf.zzb();
            zzhdp zzhdpVar = zzk;
            zzb3.zzd((zzhpd) zzhdpVar.zzc(zzb2.zzb().zza()));
            zzb3.zze((zzhpd) zzhdpVar.zzc(zzb2.zzb().zzb()));
            zzb3.zzb(bigInteger2);
            zzb3.zza(bitLength);
            zzb3.zzf(zzb2.zzb().zzc());
            zzb3.zzc((zzhpe) zzj.zzc(zzhfwVar.zzd()));
            zzhpf zzg3 = zzb3.zzg();
            zzhpi zzc2 = zzhpj.zzc();
            zzc2.zza(zzg3);
            zzc2.zzb(bigInteger);
            zzc2.zzc(zzhfwVar.zze());
            zzhpj zzd2 = zzc2.zzd();
            zzhpg zzc3 = zzhph.zzc();
            zzc3.zza(zzd2);
            zzc3.zzb(zzj(zzj2.zzd(), zzgwnVar), zzj(zzj2.zze(), zzgwnVar));
            zzc3.zzc(zzj(zzj2.zzc(), zzgwnVar));
            zzc3.zzd(zzj(zzj2.zzg(), zzgwnVar), zzj(zzj2.zzh(), zzgwnVar));
            zzc3.zze(zzj(zzj2.zzi(), zzgwnVar));
            return zzc3.zzf();
        } catch (zzhxd | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing RsaSsaPssPrivateKey failed");
        }
    }

    private static zzhmh zzh(zzhpf zzhpfVar) throws GeneralSecurityException {
        zzhmg zzd2 = zzhmh.zzd();
        zzhdp zzhdpVar = zzk;
        zzd2.zza((zzhko) zzhdpVar.zzb(zzhpfVar.zzf()));
        zzd2.zzb((zzhko) zzhdpVar.zzb(zzhpfVar.zzg()));
        zzd2.zzc(zzhpfVar.zzh());
        return (zzhmh) zzd2.zzbu();
    }

    private static zzhml zzi(zzhpj zzhpjVar) throws GeneralSecurityException {
        zzhmk zzg2 = zzhml.zzg();
        zzg2.zzb(zzh(zzhpjVar.zzf()));
        byte[] zza2 = zzhdb.zza(zzhpjVar.zzd());
        zzhvi zzhviVar = zzhvi.zzb;
        zzg2.zzc(zzhvi.zzr(zza2, 0, zza2.length));
        byte[] zza3 = zzhdb.zza(zzhpjVar.zzf().zzd());
        zzg2.zzd(zzhvi.zzr(zza3, 0, zza3.length));
        zzg2.zza(0);
        return (zzhml) zzg2.zzbu();
    }

    private static zzhta zzj(zzhvi zzhviVar, zzgwn zzgwnVar) {
        return zzhta.zza(new BigInteger(1, zzhviVar.zzv()), zzgwnVar);
    }
}

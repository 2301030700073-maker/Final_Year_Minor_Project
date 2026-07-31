package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgzu {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        zzb = zza2;
        zzc = zzhfi.zzd(zzgzt.zza, zzgzp.class, zzhfx.class);
        zzd = zzhff.zzd(zzgzq.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzgzr.zza, zzgzl.class, zzhfw.class);
        zzf = zzhdz.zzd(zzgzs.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzgzp zzgzpVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        zze2.zzb(zzg(zzgzpVar).zzaM());
        zze2.zzc(zzf(zzgzpVar.zzc()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzgzp zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            return zzh(zzhls.zzc(zzhfxVar.zzc().zzb(), zzhvy.zza()), zzhfxVar.zzc().zzc());
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzgzl zzgzlVar, zzgwn zzgwnVar) {
        zzhlp zzd2 = zzhlq.zzd();
        zzd2.zza(zzg(zzgzlVar.zze()));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", ((zzhlq) zzd2.zzbu()).zzaM(), zzhkw.REMOTE, zzf(zzgzlVar.zze().zzc()), zzgzlVar.zzb());
    }

    static /* synthetic */ zzgzl zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
        }
        try {
            zzhlq zzc2 = zzhlq.zzc(zzhfwVar.zzb(), zzhvy.zza());
            if (zzc2.zza() == 0) {
                return zzgzl.zzd(zzh(zzc2.zzb(), zzhfwVar.zzd()), zzhfwVar.zze());
            }
            String valueOf = String.valueOf(zzc2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 58);
            sb.append("KmsEnvelopeAeadKeys are only accepted with version 0, got ");
            sb.append(valueOf);
            throw new GeneralSecurityException(sb.toString());
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e);
        }
    }

    private static zzhlt zzf(zzgzo zzgzoVar) throws GeneralSecurityException {
        if (zzgzo.zza.equals(zzgzoVar)) {
            return zzhlt.TINK;
        }
        if (zzgzo.zzb.equals(zzgzoVar)) {
            return zzhlt.RAW;
        }
        String valueOf = String.valueOf(zzgzoVar);
        String.valueOf(valueOf);
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(valueOf)));
    }

    private static zzhls zzg(zzgzp zzgzpVar) throws GeneralSecurityException {
        try {
            zzhla zzd2 = zzhla.zzd(zzgwp.zza(zzgzpVar.zzd()), zzhvy.zza());
            zzhlr zzd3 = zzhls.zzd();
            zzd3.zza(zzgzpVar.zzb());
            zzd3.zzb(zzd2);
            return (zzhls) zzd3.zzbu();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
        }
    }

    private static zzgzp zzh(zzhls zzhlsVar, zzhlt zzhltVar) throws GeneralSecurityException {
        zzgzn zzgznVar;
        zzgzo zzgzoVar;
        zzhkz zze2 = zzhla.zze();
        zze2.zza(zzhlsVar.zzb().zza());
        zze2.zzb(zzhlsVar.zzb().zzb());
        zze2.zzc(zzhlt.RAW);
        zzgwj zzb2 = zzgwp.zzb(((zzhla) zze2.zzbu()).zzaN());
        if (zzb2 instanceof zzgyg) {
            zzgznVar = zzgzn.zza;
        } else if (zzb2 instanceof zzgyv) {
            zzgznVar = zzgzn.zzc;
        } else if (zzb2 instanceof zzhar) {
            zzgznVar = zzgzn.zzb;
        } else if (zzb2 instanceof zzgxp) {
            zzgznVar = zzgzn.zzd;
        } else if (zzb2 instanceof zzgxx) {
            zzgznVar = zzgzn.zze;
        } else {
            if (!(zzb2 instanceof zzgyp)) {
                throw new GeneralSecurityException("Unsupported DEK parameters when parsing ".concat(zzb2.toString()));
            }
            zzgznVar = zzgzn.zzf;
        }
        zzgzm zzgzmVar = new zzgzm(null);
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            zzgzoVar = zzgzo.zza;
        } else {
            if (ordinal != 3) {
                int zza2 = zzhltVar.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
                sb.append("Unable to parse OutputPrefixType: ");
                sb.append(zza2);
                throw new GeneralSecurityException(sb.toString());
            }
            zzgzoVar = zzgzo.zzb;
        }
        zzgzmVar.zza(zzgzoVar);
        zzgzmVar.zzb(zzhlsVar.zza());
        zzgzmVar.zzd((zzgxb) zzb2);
        zzgzmVar.zzc(zzgznVar);
        return zzgzmVar.zze();
    }
}

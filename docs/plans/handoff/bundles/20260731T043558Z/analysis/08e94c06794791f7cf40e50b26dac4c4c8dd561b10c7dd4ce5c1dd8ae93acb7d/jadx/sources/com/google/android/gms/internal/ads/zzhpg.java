package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhpg {

    @Nullable
    private zzhpj zza = null;

    @Nullable
    private zzhta zzb = null;

    @Nullable
    private zzhta zzc = null;

    @Nullable
    private zzhta zzd = null;

    @Nullable
    private zzhta zze = null;

    @Nullable
    private zzhta zzf = null;

    @Nullable
    private zzhta zzg = null;

    private zzhpg() {
    }

    /* synthetic */ zzhpg(byte[] bArr) {
    }

    public final zzhpg zza(zzhpj zzhpjVar) {
        this.zza = zzhpjVar;
        return this;
    }

    public final zzhpg zzb(zzhta zzhtaVar, zzhta zzhtaVar2) {
        this.zzc = zzhtaVar;
        this.zzd = zzhtaVar2;
        return this;
    }

    public final zzhpg zzc(zzhta zzhtaVar) {
        this.zzb = zzhtaVar;
        return this;
    }

    public final zzhpg zzd(zzhta zzhtaVar, zzhta zzhtaVar2) {
        this.zze = zzhtaVar;
        this.zzf = zzhtaVar2;
        return this;
    }

    public final zzhpg zze(zzhta zzhtaVar) {
        this.zzg = zzhtaVar;
        return this;
    }

    public final zzhph zzf() throws GeneralSecurityException {
        zzhpj zzhpjVar = this.zza;
        if (zzhpjVar == null) {
            throw new GeneralSecurityException("Cannot build without a RSA SSA PKCS1 public key");
        }
        if (this.zzc == null || this.zzd == null) {
            throw new GeneralSecurityException("Cannot build without prime factors");
        }
        if (this.zzb == null) {
            throw new GeneralSecurityException("Cannot build without private exponent");
        }
        if (this.zze == null || this.zzf == null) {
            throw new GeneralSecurityException("Cannot build without prime exponents");
        }
        if (this.zzg == null) {
            throw new GeneralSecurityException("Cannot build without CRT coefficient");
        }
        BigInteger zzd = zzhpjVar.zzf().zzd();
        BigInteger zzd2 = this.zza.zzd();
        BigInteger zzb = this.zzc.zzb(zzgvr.zza());
        BigInteger zzb2 = this.zzd.zzb(zzgvr.zza());
        BigInteger zzb3 = this.zzb.zzb(zzgvr.zza());
        BigInteger zzb4 = this.zze.zzb(zzgvr.zza());
        BigInteger zzb5 = this.zzf.zzb(zzgvr.zza());
        BigInteger zzb6 = this.zzg.zzb(zzgvr.zza());
        if (!zzb.isProbablePrime(10)) {
            throw new GeneralSecurityException("p is not a prime");
        }
        if (!zzb2.isProbablePrime(10)) {
            throw new GeneralSecurityException("q is not a prime");
        }
        if (!zzb.multiply(zzb2).equals(zzd2)) {
            throw new GeneralSecurityException("Prime p times prime q is not equal to the public key's modulus");
        }
        BigInteger subtract = zzb.subtract(BigInteger.ONE);
        BigInteger subtract2 = zzb2.subtract(BigInteger.ONE);
        if (!zzd.multiply(zzb3).mod(subtract.divide(subtract.gcd(subtract2)).multiply(subtract2)).equals(BigInteger.ONE)) {
            throw new GeneralSecurityException("D is invalid.");
        }
        if (!zzd.multiply(zzb4).mod(subtract).equals(BigInteger.ONE)) {
            throw new GeneralSecurityException("dP is invalid.");
        }
        if (!zzd.multiply(zzb5).mod(subtract2).equals(BigInteger.ONE)) {
            throw new GeneralSecurityException("dQ is invalid.");
        }
        if (zzb2.multiply(zzb6).mod(zzb).equals(BigInteger.ONE)) {
            return new zzhph(this.zza, this.zzc, this.zzd, this.zzb, this.zze, this.zzf, this.zzg, null);
        }
        throw new GeneralSecurityException("qInv is invalid.");
    }
}

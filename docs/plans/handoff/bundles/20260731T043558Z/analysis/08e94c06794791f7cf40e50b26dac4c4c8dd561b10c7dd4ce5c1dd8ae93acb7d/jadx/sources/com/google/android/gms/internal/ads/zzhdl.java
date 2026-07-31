package com.google.android.gms.internal.ads;

import java.lang.reflect.Array;
import java.math.BigInteger;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhdl {
    static final long[] zza;
    static final long[] zzb;
    static final long[] zzc;
    static final zzhde[][] zzd;
    static final zzhde[] zze;
    private static final BigInteger zzf;
    private static final BigInteger zzg;
    private static final BigInteger zzh;
    private static final BigInteger zzi;

    static {
        BigInteger subtract = BigInteger.valueOf(2L).pow(255).subtract(BigInteger.valueOf(19L));
        zzf = subtract;
        BigInteger mod = BigInteger.valueOf(-121665L).multiply(BigInteger.valueOf(121666L).modInverse(subtract)).mod(subtract);
        zzg = mod;
        BigInteger mod2 = BigInteger.valueOf(2L).multiply(mod).mod(subtract);
        zzh = mod2;
        BigInteger modPow = BigInteger.valueOf(2L).modPow(subtract.subtract(BigInteger.ONE).divide(BigInteger.valueOf(4L)), subtract);
        zzi = modPow;
        zzhdk zzhdkVar = new zzhdk(null);
        zzhdkVar.zzd(BigInteger.valueOf(4L).multiply(BigInteger.valueOf(5L).modInverse(subtract)).mod(subtract));
        BigInteger zzc2 = zzhdkVar.zzc();
        BigInteger multiply = zzc2.pow(2).subtract(BigInteger.ONE).multiply(mod.multiply(zzc2.pow(2)).add(BigInteger.ONE).modInverse(subtract));
        BigInteger modPow2 = multiply.modPow(subtract.add(BigInteger.valueOf(3L)).divide(BigInteger.valueOf(8L)), subtract);
        if (!modPow2.pow(2).subtract(multiply).mod(subtract).equals(BigInteger.ZERO)) {
            modPow2 = modPow2.multiply(modPow).mod(subtract);
        }
        if (modPow2.testBit(0)) {
            modPow2 = subtract.subtract(modPow2);
        }
        zzhdkVar.zzb(modPow2);
        zza = zzhdq.zzg(zzb(mod));
        zzb = zzhdq.zzg(zzb(mod2));
        zzc = zzhdq.zzg(zzb(modPow));
        zzd = (zzhde[][]) Array.newInstance((Class<?>) zzhde.class, 32, 8);
        zzhdk zzhdkVar2 = zzhdkVar;
        for (int i = 0; i < 32; i++) {
            zzhdk zzhdkVar3 = zzhdkVar2;
            for (int i2 = 0; i2 < 8; i2++) {
                zzd[i][i2] = zzc(zzhdkVar3);
                zzhdkVar3 = zza(zzhdkVar3, zzhdkVar2);
            }
            for (int i3 = 0; i3 < 8; i3++) {
                zzhdkVar2 = zza(zzhdkVar2, zzhdkVar2);
            }
        }
        zzhdk zza2 = zza(zzhdkVar, zzhdkVar);
        zze = new zzhde[8];
        for (int i4 = 0; i4 < 8; i4++) {
            zze[i4] = zzc(zzhdkVar);
            zzhdkVar = zza(zzhdkVar, zza2);
        }
    }

    private static zzhdk zza(zzhdk zzhdkVar, zzhdk zzhdkVar2) {
        zzhdk zzhdkVar3 = new zzhdk(null);
        BigInteger multiply = zzg.multiply(zzhdkVar.zza().multiply(zzhdkVar2.zza()).multiply(zzhdkVar.zzc()).multiply(zzhdkVar2.zzc()));
        BigInteger bigInteger = zzf;
        BigInteger mod = multiply.mod(bigInteger);
        zzhdkVar3.zzb(zzhdkVar.zza().multiply(zzhdkVar2.zzc()).add(zzhdkVar2.zza().multiply(zzhdkVar.zzc())).multiply(BigInteger.ONE.add(mod).modInverse(bigInteger)).mod(bigInteger));
        zzhdkVar3.zzd(zzhdkVar.zzc().multiply(zzhdkVar2.zzc()).add(zzhdkVar.zza().multiply(zzhdkVar2.zza())).multiply(BigInteger.ONE.subtract(mod).modInverse(bigInteger)).mod(bigInteger));
        return zzhdkVar3;
    }

    private static byte[] zzb(BigInteger bigInteger) {
        byte[] bArr = new byte[32];
        byte[] byteArray = bigInteger.toByteArray();
        int length = byteArray.length;
        System.arraycopy(byteArray, 0, bArr, 32 - length, length);
        for (int i = 0; i < 16; i++) {
            byte b = bArr[i];
            int i2 = 31 - i;
            bArr[i] = bArr[i2];
            bArr[i2] = b;
        }
        return bArr;
    }

    private static zzhde zzc(zzhdk zzhdkVar) {
        BigInteger add = zzhdkVar.zzc().add(zzhdkVar.zza());
        BigInteger bigInteger = zzf;
        return new zzhde(zzhdq.zzg(zzb(add.mod(bigInteger))), zzhdq.zzg(zzb(zzhdkVar.zzc().subtract(zzhdkVar.zza()).mod(bigInteger))), zzhdq.zzg(zzb(zzh.multiply(zzhdkVar.zza()).multiply(zzhdkVar.zzc()).mod(bigInteger))));
    }
}
